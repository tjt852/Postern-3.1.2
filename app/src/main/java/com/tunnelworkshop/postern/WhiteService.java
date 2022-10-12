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
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;

import androidx.annotation.Nullable;

import com.tunnelworkshop.postern.control.Cache;


public class WhiteService extends Service {
    private static final String TAG = WhiteService.class.getSimpleName();
    private static final int NOTIFICATION_FLAG = 0X11;

    private static final int RECEIVE_MESSAGE_CODE = 0x0001;

    private static final int SEND_MESSAGE_CODE = 0x0002;

    //clientMessenger表示的是客户端的Messenger，可以通过来自于客户端的Message的replyTo属性获得，
    //其内部指向了客户端的ClientHandler实例，可以用clientMessenger向客户端发送消息
    private Messenger clientMessenger = null;

    //serviceMessenger是Service自身的Messenger，其内部指向了ServiceHandler的实例
    //客户端可以通过IBinder构建Service端的Messenger，从而向Service发送消息，
    //并由ServiceHandler接收并处理来自于客户端的消息
    private final Messenger serviceMessenger = new Messenger(new ServiceHandler(Looper.getMainLooper()));


    //MyService用ServiceHandler接收并处理来自于客户端的消息
    private class ServiceHandler extends Handler {

        public ServiceHandler(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message msg) {
            Log.i("DemoLog", "ServiceHandler -> handleMessage");
            if (msg.what == RECEIVE_MESSAGE_CODE) {
                Bundle data = msg.getData();
                if (data != null) {
                    String result = data.getString("msg");
                    Log.i("DemoLog", "MyService收到客户端如下信息: " + result);
                }
                //通过Message的replyTo获取到客户端自身的Messenger，
                //Service可以通过它向客户端发送消息
                clientMessenger = msg.replyTo;
                if (clientMessenger != null) {

                    if (Cache.PHONE.state != Cache.PhoneData.State.READY) {
                        Log.e("DemoLog", "数据未准备好，error");
                        return;
                    }
                    Log.i("DemoLog", "MyService向客户端回信");
                    Message msgToClient = Message.obtain();
                    msgToClient.what = SEND_MESSAGE_CODE;
                    //可以通过Bundle发送跨进程的信息
                    Bundle bundle = new Bundle();

                    String sendData = Cache.PHONE.data;
                    if (!TextUtils.isEmpty(sendData)) {
                        bundle.putString("msg", "OK");
                        bundle.putString("data", sendData);
                    } else {
                        bundle.putString("msg", "error");
                    }

                    Cache.PHONE.state = Cache.PhoneData.State.NONE;

                    msgToClient.setData(bundle);
                    try {
                        clientMessenger.send(msgToClient);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        Log.e("DemoLog", "MyService向客户端发送信息失败: " + e.getMessage());
                    }
                }
            }
        }
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        Log.i("DemoLog", "MyServivce -> onBind");
        //获取Service自身Messenger所对应的IBinder，并将其发送共享给所有客户端
        return serviceMessenger.getBinder();
    }

    @Override
    public void onCreate() {
        Log.i("DemoLog", "MyService -> onCreate");
        super.onCreate();
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
        Log.i("DemoLog", "MyService -> onDestroy");
        clientMessenger = null;
    }

}



