package com.tunnelworkshop.postern.control;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.util.Log;

import com.obs.services.ObsClient;
import com.obs.services.model.DownloadFileRequest;
import com.obs.services.model.DownloadFileResult;
import com.tunnelworkshop.postern.FileUtils;
import com.tunnelworkshop.postern.ShellUtils;
import com.tunnelworkshop.postern.ZipUtils;

import java.io.File;
import java.io.IOException;

public class AppCacheManager {


    public void restoreCache(){
        String pkgName = "in.mohalla.video";
        String gaid = "ssdsdfafd";
        String day = "0";
        @SuppressLint("SdCardPath") String srcPath = "/data/data/" + pkgName + "/";
        @SuppressLint("SdCardPath") String sdPath = "/sdcard/" + pkgName + "/";
        String fileName = String.format("%s_%s_day%s.zip", gaid, pkgName, day);
        String zipPath = "/sdcard/" + fileName;
        File zipFile = new File(zipPath);
        FileUtils.delete(zipPath);
        FileUtils.delete(sdPath);


        Log.i("tjt852", "step 6");

        downloadObs(zipFile);
        Log.i("tjt852", "step 7");

        try {
            ZipUtils.unzipFile(zipFile, new File("/sdcard/"));
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }
        Log.i("tjt852", "step 8");

        //reset data
        ShellUtils.CommandResult result = ShellUtils.execCommand(String.format("rm -rf %s", srcPath), true);

        result = ShellUtils.execCommand(String.format("cp -r %s. %s", sdPath, srcPath), true);
        Log.i("tjt852", "step 9 error=" + result.errorMsg);
        if (result.result != 0) {
            return;
        }

        //1查找app 系统uid
        Log.i("tjt852", "step 10");

        result = ShellUtils.execCommand(String.format("cat /data/system/packages.list | grep '%s'", pkgName), true);
        if (result.result != 0 || TextUtils.isEmpty(result.successMsg)) {
            return;
        }
        Log.i("tjt852", "step 11");

        String[] pkgInfos = result.successMsg.split("\n");
        String uid = null;
        for (String info : pkgInfos) {
            if (!info.contains(pkgName)) {
                continue;
            }
            String[] vals = info.split(" ");
            if (vals.length < 5) {
                break;
            }
            uid = vals[1];
        }

        if (uid == null) {
            return;
        }
        //2重新授权 chown -R 10060:10060 /data/data/in.mohalla.video
        Log.i("tjt852", "step 12 uid=" + uid);

        String chownCommand = String.format("chown -R %s:%s /data/data/%s", uid, uid, pkgName);
        result = ShellUtils.execCommand(chownCommand, true);
        if (result.result != 0) {
            return;
        }
        //3 chmod 700 /data/data/in.mohalla.video
        result = ShellUtils.execCommand("chmod 700 /data/data/" + pkgName, true);
        if (result.result != 0) {
            return;
        }
        Log.i("tjt852", "step 13");
    }

    public void saveCache(){
        String pkgName = "in.mohalla.video";
        String gaid = "ssdsdfafd";
        String day = "0";
        @SuppressLint("SdCardPath") String srcPath = "/data/data/" + pkgName + "/";
        @SuppressLint("SdCardPath") String sdPath = "/sdcard/" + pkgName + "/";
        String fileName = String.format("%s_%s_day%s.zip", gaid, pkgName, day);
        String zipPath = "/sdcard/" + fileName;
        File zipFile = new File(zipPath);
        FileUtils.delete(zipPath);
        FileUtils.delete(sdPath);


        String command = String.format("cp -r %s. %s", srcPath, sdPath);
        Log.i("tjt852", "step 1 command=" + command);
        ShellUtils.CommandResult result = ShellUtils.execCommand(command, true);
        if (result.result != 0) {
            return;
        }
        Log.i("tjt852", "step 2");

        boolean isZip;
        try {
            isZip = ZipUtils.zipFile(sdPath, zipPath);
            if (!isZip) return;
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }
        Log.i("tjt852", "step 3");
        uploadObs(zipFile);
        Log.i("tjt852", "step 5");

        FileUtils.delete(sdPath);
    }


    public boolean uploadObs(File file) {
        try {
            String endPoint = "https://obs.ru-northwest-2.myhuaweicloud.com";
            String ak = "RO3ILGR2YPPUNN90QMGG";
            String sk = "egN1DeI5LkYzEppt9ern6zZcMsDkrEaW8aj1xlNO";
            // 创建ObsClient实例
            ObsClient obsClient = new ObsClient(ak, sk, endPoint);

            // 使用访问OBS

            // localfile为待上传的本地文件路径，需要指定到具体的文件名
            obsClient.putObject("ssp-cph", "Apk/data/" + file.getName(), file);
            Log.i("tjt852", "step 4");

            // 关闭obsClient

            obsClient.close();
        } catch (Throwable e) {
            e.printStackTrace();
            return false;
        }
        FileUtils.delete(file);
        return true;
    }

    public boolean downloadObs(File file) {
        try {
            String endPoint = "https://obs.ru-northwest-2.myhuaweicloud.com";
            String ak = "RO3ILGR2YPPUNN90QMGG";
            String sk = "egN1DeI5LkYzEppt9ern6zZcMsDkrEaW8aj1xlNO";

            // 创建ObsClient实例
            ObsClient obsClient = new ObsClient(ak, sk, endPoint);
            DownloadFileRequest request = new DownloadFileRequest("ssp-cph", "Apk/data/" + file.getName());
            // 设置下载对象的本地文件路径
            request.setDownloadFile(file.getAbsolutePath());
            // 设置分段下载时的最大并发数
            request.setTaskNum(5);
            // 设置分段大小为10MB
            request.setPartSize(10 * 1024 * 1024);
            // 开启断点续传模式
            request.setEnableCheckpoint(true);

            // 进行断点续传下载
            DownloadFileResult result = obsClient.downloadFile(request);
        } catch (Throwable e) {
            e.printStackTrace();
            // 发生异常时可再次调用断点续传下载接口进行重新下载
            return false;
        }
        return true;
    }
}
