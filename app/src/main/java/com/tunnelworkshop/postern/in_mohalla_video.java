package com.tunnelworkshop.postern;

import android.content.Intent;
import android.os.Bundle;
import android.util.Base64;
import android.widget.ImageView;

import androidx.test.core.app.ApplicationProvider;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.uiautomator.By;
import androidx.test.uiautomator.SearchCondition;
import androidx.test.uiautomator.UiObject;
import androidx.test.uiautomator.UiObject2;
import androidx.test.uiautomator.UiObjectNotFoundException;
import androidx.test.uiautomator.UiSelector;
import androidx.test.uiautomator.Until;

import com.tunnelworkshop.postern.control.Cache;
import com.tunnelworkshop.postern.control.ControllerBase;

import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.IOException;
import java.util.List;
import java.util.Random;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class in_mohalla_video extends ControllerBase {
    private static final String BASIC_SAMPLE_PACKAGE
            = "com.tunnelworkshop.postern";
    private static final int LAUNCH_TIMEOUT = 5000;
    private static final String STRING_TO_BE_TYPED = "UiAutomator";

    @Test
    @Override
    public void useAppContext() {
        super.useAppContext();
        String message = "";
        int status = 0;

        try {
            String phoneData = requestPhoneData(parameters.getPhoneId());

            if (phoneData == null) {
                httpRequest(parameters.getCallbackUrl(), 2, "request phone data error");
                return;
            }
            Cache.PHONE.state = Cache.PhoneData.State.READY;
            Cache.PHONE.data = phoneData;

            // Start from the home screen
            device.pressHome();
            // Wait for launcher
            final String launcherPackage = device.getLauncherPackageName();
            device.wait(Until.hasObject(By.pkg(launcherPackage).depth(0)),
                    LAUNCH_TIMEOUT);

            // Launch the app
//        String package_name = "com.tunnelworkshop.postern";
//        String activity_path = "com.tunnelworkshop.postern.PosternMain";
//        Intent intent = new Intent();
//        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);//可选
//        ComponentName comp = new ComponentName(package_name, activity_path);
//        intent.setComponent(comp);
            Intent intent = context.getPackageManager().getLaunchIntentForPackage(BASIC_SAMPLE_PACKAGE);
            intent.setPackage(null);
            intent.putExtra("proxyname", parameters.getProxyName());
            intent.putExtra("proxypass", parameters.getProxyPass());
            intent.putExtra("proxyserver", parameters.getProxyServer());
            intent.putExtra("proxyport", Integer.parseInt(parameters.getProxyPort()));
            context.startActivity(intent);
            // Wait for the app to appear
            device.wait(Until.hasObject(By.pkg(BASIC_SAMPLE_PACKAGE).depth(0)),
                    LAUNCH_TIMEOUT);
            UiObject okButton = device.findObject(new UiSelector()
                    .textMatches("OK|确定")
                    .className("android.widget.Button"));

            // Simulate a user-click on the OK button, if found.
            try {
                if (okButton.exists() && okButton.isEnabled()) {
                    okButton.click();
                }
            } catch (UiObjectNotFoundException e) {
                e.printStackTrace();
            }

            device.pressHome();
            device.wait(Until.hasObject(By.pkg(launcherPackage).depth(0)),
                    LAUNCH_TIMEOUT);

            intent = context.getPackageManager().getLaunchIntentForPackage(parameters.getTargetPkg());
            if (intent == null) {
                httpRequest(parameters.getCallbackUrl(), 2, "targetpkg " + parameters.getTargetPkg() + " is not install");
                return;
            }
            intent.setPackage(null);
            context.startActivity(intent);
            device.wait(Until.hasObject(By.pkg(parameters.getTargetPkg()).depth(0)),
                    15000);
            Thread.sleep(4000);
//            UiObject selectTxt = device.findObject(new UiSelector()
//                    .textMatches("Hindi")
//                    .className("in.mohalla.video:id/secondaryText"));

            SearchCondition<UiObject2> search = Until.findObject(By.res("in.mohalla.video:id/secondaryText").text("Hindi"));
            UiObject2 selectTxt = device.wait(search, 10000);
            if (selectTxt != null && selectTxt.isEnabled()) {
                selectTxt.click(4000);
            }
//            Thread.sleep(4000);

            long startTime = System.currentTimeMillis();
            int minute = new Random().nextInt(4);
            long runTime = 1000 * 60 * (2 + minute);
            System.out.println("test running time is " + runTime + " millis");
            while (true) {
//                pass(targetpkg);
                long currentTime = System.currentTimeMillis() - startTime;
                int p = new Random().nextInt(200);

                if (currentTime > runTime * 0.5) {
                    System.out.println("上滑 swipeUp");
                    swipeUp(p);
                } else {
                    System.out.println("下滑 swipeDown");
                    swipeDown(p);
                }

                if (currentTime > runTime) {
                    break;
                }
                Thread.sleep(2000);
            }
            status = 1;
            message = "success";

        } catch (Exception e) {
            status = 2;
            message = e.getMessage();
            e.printStackTrace();
        }
        if (parameters.getTargetPkg() != null) {
            try {
                device.executeShellCommand("am force-stop " + parameters.getTargetPkg());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        PosternApp var7 = (PosternApp) ApplicationProvider.getApplicationContext();
        PosternVpnService var8 = var7.getVpnService();
        var8.revertPosternVpnService();
        httpRequest(parameters.getCallbackUrl(), status, message);
    }

    @Override
    public void autoUiOperate() {

    }

    public void pass(String targetpkg) {
        UiObject2 close_button = device.findObject(By.res("com.lazada.android:id/close_button"));
        if (close_button != null && close_button.isEnabled()) {
            close_button.click();
        }
        UiObject2 middle_slot_title = device.findObject(By.res("com.lazada.android:id/layermanager_penetrate_webview_container_id"));
        if (middle_slot_title != null) {
            List<UiObject2> list2 = device.findObjects(By.clazz(ImageView.class).pkg(targetpkg).depth(8));
            if (list2 != null && list2.size() > 9) {
                list2.get(0).click();
            }
        }
    }


}