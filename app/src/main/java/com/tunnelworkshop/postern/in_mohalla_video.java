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


    @Override
    public void autoUiOperate() {
        try {
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