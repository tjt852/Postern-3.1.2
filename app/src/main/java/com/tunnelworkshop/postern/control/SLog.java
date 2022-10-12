package com.tunnelworkshop.postern.control;

import android.util.Log;

import androidx.annotation.Keep;


import com.tunnelworkshop.postern.BuildConfig;

import java.io.PrintWriter;
import java.io.StringWriter;

@Keep
public class SLog {

    private final static String TAG = "Ease_v_111";    //当前版本号

    private SLog() {

    }

    private static String getLogTag(String tag) {
        return tag == null ? TAG : tag;
    }

    public static void dp(String format, Object... args) {
        if (SwitchConfig.LOG) {
            i(String.format(format, args));
        }
    }


    public static void info(String msg) {
        if (msg != null) {
            Log.i(getLogTag(TAG), msg);
        }
    }

    public static void info(String tag, String msg) {
        if (msg != null) {
            Log.i(getLogTag(tag), msg);
        }
    }

    public static void debug(String tag, String msg) {
        if (msg != null) {
            Log.d(getLogTag(tag), msg);
        }
    }

    public static void error(String tag, String msg) {
        if (msg != null) {
            Log.e(getLogTag(tag), msg);
        }
    }


    public static void i(String msg) {
        if (SwitchConfig.LOG) {
            if (msg != null) {
                Log.i(getLogTag(TAG), msg);
            }
        }
    }


    public static void d(String msg) {

        if (SwitchConfig.LOG) {
            if (msg != null) {
                Log.d(getLogTag(TAG), msg);
            }
        }
    }


    public static void w(Exception ex) {
        if (SwitchConfig.LOG) {
            if (ex != null) {
                ex.printStackTrace();
            }
        }
    }


    public static void e(String msg) {
        if (SwitchConfig.LOG) {
            if (msg != null) {
                Log.e(getLogTag(TAG), msg);
            }
        }
    }


    public static void i(String tag, String msg) {
        if (SwitchConfig.LOG) {
            if (msg != null) {
                Log.i(getLogTag(tag), msg);
            }
        }
    }


    public static void d(String tag, String msg) {
        if (SwitchConfig.LOG) {
            if (msg != null) {
                Log.d(getLogTag(tag), msg);
            }
        }
    }


    public static void w(String tag, String msg) {
        if (SwitchConfig.LOG) {
            if (msg != null) {
                Log.w(getLogTag(tag), msg);
            }
        }
    }

    public static void w(String tag, String msg, Throwable tr) {
        if (SwitchConfig.LOG) {
            if (msg != null) {
                Log.w(getLogTag(tag), msg, tr);
            }
        }
    }

    public static void e(String tag, String msg) {
        if (SwitchConfig.LOG) {
            if (msg != null) {
                Log.e(getLogTag(tag), msg);
            }
        }
    }

    public static void e(Throwable tr) {
        if (SwitchConfig.LOG) {
            if (tr != null) {
                String content = getStackTraceString(tr);
                Log.e(getLogTag(TAG), content);
            }
        }
    }

    public static void e(String tag, String msg, Throwable tr) {
        if (SwitchConfig.LOG) {
            if (msg != null) {
                Log.e(getLogTag(tag), msg, tr);
            }
        }
    }

    private static String getStackTraceString(Throwable tr) {
        if (tr == null) {
            return "";
        }

        // This is to reduce the amount of log spew that apps do in the non-error
        // condition of the network being unavailable.
         /* Throwable t = tr;
         while (t != null) {
             if (t instanceof UnknownHostException) {
                 return "";
             }
             t = t.getCause();
         }*/

        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        tr.printStackTrace(pw);
        pw.flush();
        return sw.toString();
    }
}
