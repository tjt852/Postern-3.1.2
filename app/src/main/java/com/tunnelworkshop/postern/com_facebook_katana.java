package com.tunnelworkshop.postern;

import android.widget.ImageView;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.uiautomator.By;
import androidx.test.uiautomator.SearchCondition;
import androidx.test.uiautomator.UiObject2;
import androidx.test.uiautomator.Until;

import com.tunnelworkshop.postern.control.AutoUIBase;

import org.junit.runner.RunWith;

import java.io.IOException;
import java.util.List;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class com_facebook_katana extends AutoUIBase {


    @Override
    protected String getPackageName() {
        return "com.facebook.katana";
    }

    @Override
    public void initParameters() {

    }

    @Override
    public void autoUiOperate() {
        try {
            SearchCondition<UiObject2> search = Until.findObject(By.res("com.google.android.gms:id/cancel"));
            UiObject2 selectTxt = device.wait(search, 10000);
            if (selectTxt != null && selectTxt.isEnabled()) {
                selectTxt.click();
            }
            Thread.sleep(1000);
            device.findObjects(By.clazz("android.widget.EditText")).get(0).setText("lanslot.tian@163.com");
            device.findObjects(By.clazz("android.widget.EditText")).get(1).setText("848419656cd");
//            UiObject2 uaEdit = XPathInterpreter.findElementByXPath(device,
//                    "//*[@resource-id=\"android:id/content\"]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.EditText[1]");
//            uaEdit.setText("lanslot.tian@163.com");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void beginOperate() {
        startTargetApp();
    }

    @Override
    public void endOperate() {
        try {
            device.executeShellCommand("am force-stop " + getPackageName());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void error(ErrorType errorType) {

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