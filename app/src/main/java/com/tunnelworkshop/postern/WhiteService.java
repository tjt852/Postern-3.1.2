package com.tunnelworkshop.postern;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;

import androidx.annotation.Nullable;


public class WhiteService extends Service {
    private static final String TAG = WhiteService.class.getSimpleName();
    private static final int NOTIFICATION_FLAG = 0X11;

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        Log.d(TAG, "onBind");
        throw new UnsupportedOperationException("Not yet implemented");
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {

        // 在Android进行通知处理，首先需要重系统哪里获得通知管理器NotificationManager，它是一个系统Service。
        try {
            NotificationManager manager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);

            // 设置点击通知跳转的Intent
            Intent nfIntent = new Intent(this, WhiteService.class);
            // 设置 延迟Intent
            // 最后一个参数可以为PendingIntent.FLAG_CANCEL_CURRENT 或者 PendingIntent.FLAG_UPDATE_CURRENT
            PendingIntent pendingIntent = PendingIntent.getActivity(this, 0, nfIntent, 0);
            //构建一个Notification构造器
            Notification.Builder builder;
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                String ID = getPackageName();    //这里的id里面输入自己的项目的包的路径
                String NAME = "试玩任务";
                NotificationChannel channel = new NotificationChannel(ID, NAME, NotificationManager.IMPORTANCE_HIGH);
                channel.enableLights(true);
                channel.setShowBadge(true);
                channel.setLockscreenVisibility(Notification.VISIBILITY_PUBLIC);
                manager.createNotificationChannel(channel);
                builder = new Notification.Builder(this, ID);
            } else {
                builder = new Notification.Builder(this.getApplicationContext());
            }


            builder.setContentIntent(pendingIntent)   // 设置点击跳转界面
                    .setTicker("任务开始")// statusBar上的提示
                    .setContentTitle("试玩中") // 设置下拉列表里的标题
                    .setContentText("一分钟后领取奖励") // 设置详细内容
                    .setContentIntent(pendingIntent) // 设置点击跳转的界面
                    .setWhen(System.currentTimeMillis()) // 设置该通知发生的时间
                    .setSmallIcon(getAppIcon())
                    .setPriority(Notification.PRIORITY_HIGH);  //优先级高

            Notification notification = builder.build(); // 获取构建好的Notification

            notification.defaults = Notification.DEFAULT_SOUND; //设置为默认的声音
            notification.flags |= Notification.FLAG_AUTO_CANCEL; // FLAG_AUTO_CANCEL表明当通知被用户点击时，通知将被清除。
            notification.flags |= Notification.FLAG_ONGOING_EVENT; //将此通知放到通知栏的"Ongoing"即"正在运行"组中
            notification.flags |= Notification.FLAG_NO_CLEAR; //表明在点击了通知栏中的"清除通知"后，此通知不清除，常与FLAG_ONGOING_EVENT一起使用


            manager.notify(NOTIFICATION_FLAG, notification);
            // 启动前台服务
            // 参数一：唯一的通知标识；参数二：通知消息。
            startForeground(NOTIFICATION_FLAG, notification);// 开始前台服务
        } catch (Throwable e) {
            e.printStackTrace();
        }

        Log.d(TAG, "onStartCommand");
        return super.onStartCommand(intent, flags, startId);
    }

    // 通过包名获取对应的 Drawable 数据
    private int getAppIcon() {
        try {
            PackageManager pm = getPackageManager();
            ApplicationInfo info = pm.getApplicationInfo(getPackageName(), 0);

            return info.icon;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        // 停止前台服务--参数：表示是否移除之前的通知
        stopForeground(true);
        Log.d(TAG, "onDestroy");
    }

}



