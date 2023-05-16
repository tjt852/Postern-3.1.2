package com.tunnelworkshop.postern.control;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Base64;

import androidx.test.core.app.ApplicationProvider;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.uiautomator.By;
import androidx.test.uiautomator.UiDevice;
import androidx.test.uiautomator.UiObject;
import androidx.test.uiautomator.UiObjectNotFoundException;
import androidx.test.uiautomator.UiSelector;
import androidx.test.uiautomator.Until;

import com.tunnelworkshop.postern.PosternApp;
import com.tunnelworkshop.postern.PosternVpnService;
import com.tunnelworkshop.postern.db.DeviceDao;
import com.tunnelworkshop.postern.db.DevicePo;
import com.tunnelworkshop.postern.db.TaskDao;
import com.tunnelworkshop.postern.db.TaskPo;

import org.json.JSONException;
import org.json.JSONObject;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.concurrent.TimeUnit;

public abstract class AutoUIBase {

    private static final int LAUNCH_TIMEOUT = 8000;

    private static final String BASIC_SAMPLE_PACKAGE = "com.tunnelworkshop.postern";

    public UiDevice device;

    public Context context;

    private final String targetApp = getPackageName();



    @Test
    public void useAppContext() {
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        context = ApplicationProvider.getApplicationContext();
        device = UiDevice.getInstance(InstrumentationRegistry.getInstrumentation());
        initParameters();

        beginOperate();

        autoUiOperate();

        endOperate();


    }


    protected abstract String getPackageName();

    public abstract void initParameters();


    public abstract void autoUiOperate();

    public abstract void beginOperate();


    public abstract void endOperate();

    public abstract void error(ErrorType errorType);

    protected void startTargetApp() {
        Intent intent = context.getPackageManager().getLaunchIntentForPackage(getPackageName());
        if (intent == null) {
            error(ErrorType.target_app_not_install);
            return;
        }
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);
        context.startActivity(intent);
        device.wait(Until.hasObject(By.pkg(getPackageName()).depth(0)),
                15000);
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    //向下滑动
    public void swipeDown(int time) {
        int x = device.getDisplayWidth();//获取屏幕的宽
        int y = device.getDisplayHeight();//获取屏幕的高
        device.swipe(x / 2, (int) (y / 2), x / 2, y / 6, time);//上滑
    }


    //向上滑动
    public void swipeUp(int time) {
        int x = device.getDisplayWidth();//获取屏幕的宽
        int y = device.getDisplayHeight();//获取屏幕的高
        device.swipe(x / 2, y / 2, x / 2, (int) (y / 1.2), time);//下滑
    }

    public enum ErrorType {
        target_app_not_install

    }

}
