package com.tunnelworkshop.postern.control;

import androidx.test.uiautomator.By;
import androidx.test.uiautomator.BySelector;
import androidx.test.uiautomator.UiDevice;
import androidx.test.uiautomator.UiObject2;

import java.util.List;
import java.util.regex.Pattern;

public class XPathInterpreter {

    private static final String REGEX_MATCH = "^.*";
    private static final String REGEX_CONTAINS = "%.*%";
    private static final String REGEX_STARTS_WITH = "%.*";
    private static final String REGEX_ENDS_WITH = ".*%";
    private static final String KEY_RESOURCE_ID = "@";
    private static final String KEY_MATCH = "^";
    private static final String KEY_STARTS_WITH = "%";
    private static final String KEY_ENDS_WITH = "%";
    private static final String KEY_CONTAINS = "%";



    public static UiObject2 findElementByXPath(UiDevice device, String xpath) {
        BySelector selector = createUiSelectorFromXPath(xpath);
        return device.findObject(selector);
    }

    public static List<UiObject2> findElementsByXPath(UiDevice device, String xpath) {
        BySelector selector = createUiSelectorFromXPath(xpath);
        return device.findObjects(selector);
    }

    private static BySelector createUiSelectorFromXPath(String xpath) {
        String[] segments = xpath.split("/");
        BySelector selector = null;

        for (String segment : segments) {
            if (!segment.isEmpty()) {
                if (selector == null) {
                    selector = createBySelector(segment);
                } else {
                    BySelector subSelector = createBySelector(segment);
                    if (subSelector != null) {
                        selector = selector.childSelector(subSelector);
                    } else {
                        break;
                    }
                }
            }
        }

        return selector;
    }

    private static BySelector createBySelector(String segment) {
        char firstChar = segment.charAt(0);
        if (firstChar == '/') {
            return null;
        }
        if (Character.isLetter(firstChar)) {
            return By.clazz(segment.replaceAll("-", "\\$"));
        }
        if (segment.startsWith(KEY_RESOURCE_ID)) {
            return By.res(segment.substring(1).replaceAll("-", "\\$"));
        }
        if (segment.startsWith(KEY_MATCH)) {
            String value = segment.substring(1);
            Pattern pattern = Pattern.compile(REGEX_MATCH + value);
            return By.text(pattern);
        }
        if (segment.startsWith(KEY_STARTS_WITH)) {
            String value = segment.substring(1);
            Pattern pattern = Pattern.compile(REGEX_STARTS_WITH + value);
            return By.text(pattern);
        }
        if (segment.endsWith(KEY_ENDS_WITH)) {
            String value = segment.substring(0, segment.length() - 1);
            Pattern pattern = Pattern.compile(value + REGEX_ENDS_WITH);
            return By.text(pattern);
        }
        if (segment.contains(KEY_CONTAINS)) {
            String value = segment.substring(1, segment.length() - 1);
            Pattern pattern = Pattern.compile(REGEX_CONTAINS.replace("*", value));
            return By.text(pattern);
        }
        return null;
    }
}