package com.tunnelworkshop.postern.control;

import android.os.Build;

import com.tunnelworkshop.postern.BuildConfig;


public class SwitchConfig {


    /**
     * 测试开关
     */
    public static Boolean ISDEBUG = BuildConfig.DEBUG;

    /**
     * 日志开关
     */
    public static Boolean LOG = BuildConfig.DEBUG;   //TODO:  日志开关,一直关着就行

    /**
     * http和https开关
     */
    public static boolean schema = false;

    /**
     * 存储responseDate开关
     */
    public static final Boolean DEBUG_USE_EMULATOR = Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("Android");

}
