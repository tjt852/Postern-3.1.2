package com.fakerandroid.boot;
import android.app.Application;
import android.content.Context;

public class FakerApp extends com.tunnelworkshop.postern.PosternApp {

    static {
        System.loadLibrary("native-lib");
    }
    @Override
    public void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        fakeDex(base);
    }

    @Override
    public void onCreate() {
        super.onCreate();
        fakeApp(this);
    }

    private native void fakeApp(Application application);

    private native void fakeDex(Context base);

}
