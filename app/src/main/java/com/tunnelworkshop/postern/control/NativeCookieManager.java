package com.tunnelworkshop.postern.control;

import android.content.Context;
import android.os.Build;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;


import java.util.List;
import java.util.Map;

/**
 * Created by jiantao.tu on 2019/11/28.
 */
public class NativeCookieManager {

    private static class Holder {
        private static NativeCookieManager manager = new NativeCookieManager();
    }

    public static NativeCookieManager getInstance() {
        return Holder.manager;
    }


    /**
     * 应用启动的时候调用
     */
    public static void init(Context context) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.LOLLIPOP) {
            CookieSyncManager.createInstance(context);
        }
    }

    static String getCookie(String url) {
        CookieManager cookieManager = CookieManager.getInstance();
        return cookieManager.getCookie(url);
    }

    static void setCookies(String url, Map<String, List<String>> headerFields) {
        if (null == headerFields) {
            return;
        }
        List<String> cookies = headerFields.get("Set-Cookie");
        if (null == cookies) {
            return;
        }

        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);

        for (String cookie : cookies) {
            SLog.d("click-cookie", "setCookie value=" + cookie);
            cookieManager.setCookie(url, cookie);
        }
        SLog.d("click-cookie", "setCookie url=" + url);
        CookieManager.getInstance().flush();


    }


}
