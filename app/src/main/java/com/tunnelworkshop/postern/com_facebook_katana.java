package com.tunnelworkshop.postern;

import static io.appium.uiautomator2.utils.AXWindowHelpers.refreshAccessibilityCache;
import static io.appium.uiautomator2.utils.ElementLocationHelpers.getXPathNodeMatch;
import static io.appium.uiautomator2.utils.ElementLocationHelpers.rewriteIdLocator;

import android.widget.ImageView;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.uiautomator.By;
import androidx.test.uiautomator.SearchCondition;
import androidx.test.uiautomator.UiObject2;
import androidx.test.uiautomator.UiObjectNotFoundException;
import androidx.test.uiautomator.Until;

import com.tunnelworkshop.postern.control.AutoUIBase;

import org.junit.runner.RunWith;

import java.io.IOException;
import java.util.List;

import io.appium.uiautomator2.common.exceptions.ElementNotFoundException;
import io.appium.uiautomator2.common.exceptions.NotImplementedException;
import io.appium.uiautomator2.model.AccessibleUiObject;
import io.appium.uiautomator2.model.AndroidElement;
import io.appium.uiautomator2.model.ElementsCache;
import io.appium.uiautomator2.model.internal.CustomUiDevice;
import io.appium.uiautomator2.model.internal.ElementsLookupStrategy;
import io.appium.uiautomator2.utils.ByUiAutomatorFinder;
import io.appium.uiautomator2.utils.NodeInfoList;

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
            String xpath = "//*[@resource-id=\"android:id/content\"]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[3]";
            AndroidElement element = find(ElementsLookupStrategy.BY_XPATH, xpath);
            element.click();
            Thread.sleep(10000);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    private final ElementsCache elementsCache = new ElementsCache(500);

    public AndroidElement find(ElementsLookupStrategy type, String selector) {

        final io.appium.uiautomator2.model.By by = ElementsLookupStrategy.ofName(type.toString()).toNativeSelector(selector);
//        final AccessibleUiObject element = contextId == null
//                ? this.findElement(by)
//                : this.findElement(by, elementsCache.get(contextId));
        AccessibleUiObject element = null;
        try {
            element = this.findElement(by);
        } catch (UiObjectNotFoundException e) {
            e.printStackTrace();
        }
        if (element == null) {
            throw new ElementNotFoundException();
        }
        AndroidElement androidElement = elementsCache.add(element, true, by, null);
        return androidElement;
    }

    private AccessibleUiObject findElement(io.appium.uiautomator2.model.By by) throws UiObjectNotFoundException {
        refreshAccessibilityCache();

        if (by instanceof io.appium.uiautomator2.model.By.ById) {
            String locator = rewriteIdLocator((io.appium.uiautomator2.model.By.ById) by);
            return CustomUiDevice.getInstance().findObject(androidx.test.uiautomator.By.res(locator));
        } else if (by instanceof io.appium.uiautomator2.model.By.ByAccessibilityId) {
            return CustomUiDevice.getInstance().findObject(androidx.test.uiautomator.By.desc(by.getElementLocator()));
        } else if (by instanceof io.appium.uiautomator2.model.By.ByClass) {
            return CustomUiDevice.getInstance().findObject(androidx.test.uiautomator.By.clazz(by.getElementLocator()));
        } else if (by instanceof io.appium.uiautomator2.model.By.ByXPath) {
            final NodeInfoList matchedNodes = getXPathNodeMatch(by.getElementLocator(), null, false);
            if (matchedNodes.isEmpty()) {
                throw new ElementNotFoundException();
            }
            return CustomUiDevice.getInstance().findObject(matchedNodes);
        } else if (by instanceof io.appium.uiautomator2.model.By.ByAndroidUiAutomator) {
            return new ByUiAutomatorFinder().findOne((io.appium.uiautomator2.model.By.ByAndroidUiAutomator) by);
        }

        throw new NotImplementedException(
                String.format("%s locator is not supported", by.getClass().getSimpleName())
        );
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