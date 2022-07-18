package com.tunnelworkshop.postern;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

/**
 * adb shell am broadcast -a com.tunnelworkshop.postern.DataReceiver --es data "this is test string"
 */
public class DataReceiver extends BroadcastReceiver {
    private static final String ACTION = "com.tunnelworkshop.postern.DataReceiver";
    private static boolean hasRegister = false;
    private static DataReceiver dataReceiver;

    private StringBuilder objSync;


    private DataReceiver(StringBuilder objSync) {
        this.objSync = objSync;
    }

    public static void registerReceiver(Context context, StringBuilder objSync) {
        if (hasRegister) {     //已经注册,就不用再注册了
            return;
        }
        hasRegister = true;
        Log.i("DataReceiver", "DebugSwitchApi >> registerReceiver");
        dataReceiver = new DataReceiver(objSync);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION);
        context.registerReceiver(dataReceiver, intentFilter);

    }

    public static void unRegisterReceiver(Context context) {
        try {
            Log.i("DataReceiver", "DebugSwitchApi >> unRegisterReceiver");

            context.unregisterReceiver(dataReceiver);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void onReceive(Context context, Intent intent) {

        Log.i("UiAutomator","onReceive 广播...");
        if (intent.hasExtra("data")) {
            String data = intent.getStringExtra("data");
            Log.i("UiAutomator","onReceive data="+data);
            String[] datas = data.split("#");
            String appendData = datas[0].replaceAll("_","=");
            objSync.append(appendData);
            if (datas.length == 2 && datas[1].equals("end")) {
                Log.i("UiAutomator","广播end");
                synchronized (objSync){
                    objSync.notifyAll();
                }
                hasRegister=false;
                unRegisterReceiver(context);
            }
        }


    }
}
