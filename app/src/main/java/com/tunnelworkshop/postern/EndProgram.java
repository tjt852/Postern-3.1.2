package com.tunnelworkshop.postern;

import android.util.Log;

import java.io.DataOutputStream;

/**
 * Created by Jiantao.Tu on 2016/9/26.
 */

public class EndProgram {

    public static void end(){
        try {
            Process p = Runtime.getRuntime().exec("su");// 经过Root处理的android系统即有su命令
            DataOutputStream dos = new DataOutputStream(p.getOutputStream());
//            dos.writeBytes("tar -cvf /sdcard/gaid_pkgname_day0.tar /data/data/in.mohalla.video/\n");
            dos.writeBytes("cp -r /data/data/in.mohalla.video/. /sdcard/in.mohalla.video\n");

            dos.flush();
            //可以写多条命令
            dos.writeBytes("exit\n");
            dos.flush();
            p.waitFor();
            dos.close();
            Log.i("DemoLog", " 删除应用程序缓存成功");
        } catch (Exception e) {
            e.printStackTrace();
            Log.i("DemoLog", " 删除应用程序缓存失败，请授予root权限");
        }
    }
}
