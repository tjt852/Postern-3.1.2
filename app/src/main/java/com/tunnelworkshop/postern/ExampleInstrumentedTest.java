package com.tunnelworkshop.postern;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;

import androidx.test.core.app.ApplicationProvider;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.uiautomator.By;
import androidx.test.uiautomator.UiDevice;
import androidx.test.uiautomator.UiObject;
import androidx.test.uiautomator.UiObject2;
import androidx.test.uiautomator.UiObjectNotFoundException;
import androidx.test.uiautomator.UiSelector;
import androidx.test.uiautomator.Until;

import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;
import java.util.Random;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class ExampleInstrumentedTest {
    private static final String BASIC_SAMPLE_PACKAGE
            = "com.tunnelworkshop.postern";
    private static final int LAUNCH_TIMEOUT = 5000;
    private static final String STRING_TO_BE_TYPED = "UiAutomator";
    private UiDevice device;

    @Test
    public void useAppContext() throws InterruptedException {
        // Context of the app under test.
        // Initialize UiDevice instance
        String phoneId = null;
        String targetpkg = null;
        String message = "";
        int status = 0;
        try {
            Bundle extras = InstrumentationRegistry.getArguments();

            //proxyname
            //proxypass
            //proxyserver
            //proxyport
            //targetpkg
            //phoneid
            String proxyname = extras.getString("proxyname");
            String proxypass = extras.getString("proxypass");
            String proxyserver = extras.getString("proxyserver");
            String proxyport = extras.getString("proxyport");
            targetpkg = extras.getString("targetpkg");
            phoneId = extras.getString("phoneid");

            System.out.println("proxyname=" + proxyname + ", proxypass=" + proxypass + "， proxyserver=" + proxyserver + "， proxyport=" + proxyport
                    + "， targetpkg=" + targetpkg + "， phoneId=" + phoneId);

            String[] nameArray = proxyname.split("-");
            String country = nameArray[nameArray.length - 1];

            device = UiDevice.getInstance(InstrumentationRegistry.getInstrumentation());

            // Start from the home screen
            device.pressHome();
            // Wait for launcher
            final String launcherPackage = device.getLauncherPackageName();
            device.wait(Until.hasObject(By.pkg(launcherPackage).depth(0)),
                    LAUNCH_TIMEOUT);

            Context context = ApplicationProvider.getApplicationContext();
            // Launch the app
//        String package_name = "com.tunnelworkshop.postern";
//        String activity_path = "com.tunnelworkshop.postern.PosternMain";
//        Intent intent = new Intent();
//        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);//可选
//        ComponentName comp = new ComponentName(package_name, activity_path);
//        intent.setComponent(comp);
            Intent intent = context.getPackageManager().getLaunchIntentForPackage(BASIC_SAMPLE_PACKAGE);
            intent.setPackage(null);
            intent.putExtra("proxyname", proxyname);
            intent.putExtra("proxypass", proxypass);
            intent.putExtra("proxyserver", proxyserver);
            intent.putExtra("proxyport", Integer.parseInt(proxyport));
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

            intent = context.getPackageManager().getLaunchIntentForPackage(targetpkg);
            if (intent == null) {
                httpRequest(phoneId, 2, "targetpkg " + targetpkg + " is not install");
                return;
            }
            intent.setPackage(null);
            context.startActivity(intent);
            device.wait(Until.hasObject(By.pkg(targetpkg).depth(0)),
                    LAUNCH_TIMEOUT);

            List<UiObject2> list = device.findObjects(By.res("com.lazada.android:id/country_name"));
            for (UiObject2 uiObject2 : list) {
                String text = uiObject2.getText();
                boolean flag = false;
                if (country.equals("id") && text.equals("Indonesia")) {
                    flag = true;
                } else if (country.equals("my") && text.equals("Malaysia")) {
                    flag = true;
                } else if (country.equals("ph") && text.equals("Philippines")) {
                    flag = true;
                } else if (country.equals("sg") && text.equals("Singapore")) {
                    flag = true;
                } else if (country.equals("th") && text.equals("Thailand")) {
                    flag = true;
                } else if (country.equals("vn") && text.equals("Vietnam")) {
                    flag = true;
                }

                if (flag && uiObject2.isEnabled()) {
                    uiObject2.click();
                    Thread.sleep(800);
                    UiObject2 languageSelect = device.findObject(By.res("android:id/button1"));
                    if (languageSelect != null && languageSelect.isEnabled()) {
                        languageSelect.click();
                        Thread.sleep(1500);
                    }
                    break;
                }

            }
            UiObject2 intro_skip_btn = device.findObject(By.res("com.lazada.android:id/intro_skip_btn"));
            if (intro_skip_btn != null && intro_skip_btn.isEnabled()) {
                intro_skip_btn.click();
                Thread.sleep(1000);
            }


            UiObject2 welcome_skip_btn = device.findObject(By.res("com.lazada.android:id/welcome_skip_btn"));
            if (welcome_skip_btn != null && welcome_skip_btn.isEnabled()) {
                welcome_skip_btn.click();
                Thread.sleep(1000);
            }

            Thread.sleep(1000);

            long startTime = System.currentTimeMillis();
            int minute = new Random().nextInt(4);
            long runTime = 2000;//1000 * 60 * (2 + minute);
            System.out.println("test running time is " + runTime + " millis");
            while (true) {
                pass(targetpkg);
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
        if (targetpkg != null) {
            try {
                device.executeShellCommand("am force-stop " + targetpkg);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        PosternApp var7 = (PosternApp) ApplicationProvider.getApplicationContext();
        PosternVpnService var8 = var7.getVpnService();
        var8.revertPosternVpnService();
        httpRequest(phoneId, status, message);
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

    //向下滑动
    public void swipeDown(int time) {
        int x = device.getDisplayWidth();//获取屏幕的宽
        int y = device.getDisplayHeight();//获取屏幕的高
        device.swipe(x / 2, (int) (y / 1.2), x / 2, y / 6, time);//上滑
    }


    //向上滑动
    public void swipeUp(int time) {
        int x = device.getDisplayWidth();//获取屏幕的宽
        int y = device.getDisplayHeight();//获取屏幕的高
        device.swipe(x / 2, y / 4, x / 2, (int) (y / 1.2), time);//下滑
    }

    public static void httpRequest(String phoneId, int status, String message) {
        HttpURLConnection var9 = null;
        try {
            URL var23 = new URL("http://159.138.154.119:7001/addListenerTJT?phoneid=" + phoneId + "&status=" + status + "&msg=" + URLEncoder.encode(message, "UTF-8"));
            (var9 = (HttpURLConnection) var23.openConnection()).setReadTimeout(30000);
            var9.setConnectTimeout(30000);
            var9.setRequestMethod("GET");
            var9.setDoInput(true);
            var9.setDoOutput(true);
//            var9.setRequestProperty("Content-Type", "application/octet-stream");
            int var22 = var9.getResponseCode();

            if (var22 == 200) {
//                byte[] bytes = getBytes(var9.getInputStream());
//                String json = new String(bytes);
                System.out.println("Status 200 ok");
            } else {
                System.out.println("request error code=" + var22);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (var9 != null) {
                var9.disconnect();
            }
        }
    }

    private static byte[] getBytes(InputStream is) throws Exception {
        ByteArrayOutputStream bao = new ByteArrayOutputStream();
        byte[] b = new byte[1024];
        int len;
        while ((len = is.read(b, 0, 1024)) != -1) {
            bao.write(b, 0, len);
            bao.flush();
        }
        return bao.toByteArray();
    }

}