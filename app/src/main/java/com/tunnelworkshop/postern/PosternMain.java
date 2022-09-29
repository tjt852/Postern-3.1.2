package com.tunnelworkshop.postern;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.VpnService;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import androidx.drawerlayout.widget.DrawerLayout;
import androidx.legacy.app.ActionBarDrawerToggle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;

import com.tunnelworkshop.postern.control.AppCacheManager;

import java.lang.reflect.Method;
import java.util.ArrayList;

public class PosternMain extends Activity {
    private static final int LIST_POS_ABOUT = 8;
    private static final int LIST_POS_DNS = 5;
    private static final int LIST_POS_HOSTS = 4;
    private static final int LIST_POS_IMPORT = 0;
    private static final int LIST_POS_PROXY_CHAIN = 1;
    private static final int LIST_POS_PROXY_GROUP = 3;
    private static final int LIST_POS_RULE = 2;
    private static final int LIST_POS_SNIFFER = 6;
    private static final int LIST_POS_VPN_SWITCH = 7;
    private static final String proxyFile = "proxy.pif";
    private LocalBroadcastManager bManager;
    private BroadcastReceiver bReceiver = new BroadcastReceiver() {
        public void onReceive(Context var1, Intent var2) {
            if (var2.getAction().equals("com.tunnelworkshop.postern.UPDATE_DRAWER")) {
                PosternMain.this.refreshDrawerList();
            }

        }
    };
    private DrawerLayout mDrawerLayout;
    private ListView mDrawerList;
    private ActionBarDrawerToggle mDrawerToggle;
    private TextView mStatusAllView;
    private ProxyChain pc = null;

    static {
        System.loadLibrary("Postern");
    }

    public PosternMain() {
    }

    private void launchVpn() {
        Log.d("Postern", "prepare VpnService");
        Intent var1 = VpnService.prepare(this);
        if (var1 != null) {
            this.startActivityForResult(var1, 0);
        } else {
            this.onActivityResult(0, -1, (Intent) null);
        }

    }

    private void onMightImportFile(Intent var1) {
        String var2 = var1.getAction();
        if (var2 != null && var2.compareTo("android.intent.action.VIEW") == 0) {
            ((PosternApp) this.getApplicationContext()).setCurrUri(var1.getData());
            PageManager.getPageManager().setPage(this, 1);
        }

    }

    private void selectItem(AdapterView<?> var1, View var2, int var3, long var4) {
        byte var6 = 0;
        PosternApp var7 = (PosternApp) this.getApplicationContext();
        if (var3 == 0) {
            var7.setCurrUri((Uri) null);
            var6 = 1;
        } else if (var3 == 1) {
            var6 = 3;
        } else if (var3 == 2) {
            var6 = 5;
        } else if (var3 == 3) {
            var6 = 10;
        } else if (var3 == 4) {
            var6 = 12;
        } else if (var3 == 5) {
            var6 = 7;
        } else if (var3 == 6) {
            var6 = 8;
        } else if (var3 == 7) {
            PosternVpnService var8 = var7.getVpnService();
            if (var7.getVpnState() == 0) {
                this.launchVpn();
            } else {
                var8.revertPosternVpnService();
            }
        } else {
            if (var3 != 8) {
                return;
            }

            (new AboutDialog(this, 4)).show();
        }

        if (var6 != 0) {
            PageManager.getPageManager().setPage(this, var6);
        }

        this.mDrawerList.setItemChecked(var3, true);
        this.mDrawerLayout.closeDrawer(this.mDrawerList);
    }

    private native int setdns(String var1);

    private native int sysinit(String var1, int var2);

    protected void onActivityResult(int var1, int var2, Intent var3) {
        if (var2 == -1) {
            this.startService(new Intent(this, PosternVpnService.class));
        }

    }

    public void onBackPressed() {
        PageManager var1 = PageManager.getPageManager();
        if (var1.getPage() == 1) {
            if (!((ImportFragment) var1.getFragment()).backPressed()) {
                return;
            }
        } else if (var1.getPage() == 11) {
            ((ProxyGroupEditFragment) var1.getFragment()).backPressed();
        }

        if (!var1.backPage(this)) {
            super.onBackPressed();
        }

    }

    public void onConfigurationChanged(Configuration var1) {
        super.onConfigurationChanged(var1);
        this.mDrawerToggle.onConfigurationChanged(var1);
    }

    public void onCreate(Bundle var1) {
        super.onCreate(var1);
        this.setContentView(2130903041);
        Log.d("Postern", "onCreate");
        this.bManager = LocalBroadcastManager.getInstance(this);
        IntentFilter var2 = new IntentFilter();
        var2.addAction("com.tunnelworkshop.postern.UPDATE_DRAWER");
        this.bManager.registerReceiver(this.bReceiver, var2);
        String var12 = this.getFilesDir().getPath() + "/" + "proxy.pif";
        byte var3;
        if (!Build.MODEL.contains("MyPhone my") && !Build.MODEL.equals("LG-H500") && !Build.MODEL.equals("LG-T540") && !Build.MODEL.equals("LG-H502") && !Build.MODEL.equals("LG-H520") && !Build.MODEL.equals("LG-H540") && !Build.MODEL.equals("LG-H542") && !Build.MODEL.equals("SM-J106B") && !Build.MODEL.toUpperCase().contains("ACER E320") && !Build.MODEL.toUpperCase().contains("INTENSE") && !Build.DEVICE.toUpperCase().contains("INTENSE") && !Build.MODEL.toUpperCase().contains("FLARE") && !Build.MODEL.contains("Starmobile")) {
            var3 = 0;
        } else {
            Log.d("Postern", "Use generic timer");
            var3 = 1;
        }

        this.sysinit(var12, var3);

        label89:
        {
            boolean var10001;
            Method var4;
            String[] var5;
            ArrayList var13;
            try {
                var4 = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
                var13 = new ArrayList();
                var5 = new String[4];
            } catch (Exception var11) {
                var10001 = false;
                break label89;
            }

            var5[0] = "net.dns1";
            var5[1] = "net.dns2";
            var5[2] = "net.dns3";
            var5[3] = "net.dns4";

            int var6;
            try {
                var6 = var5.length;
            } catch (Exception var10) {
                var10001 = false;
                break label89;
            }

            for (int var14 = 0; var14 < var6; ++var14) {
                String var7;
                try {
                    var7 = (String) var4.invoke((Object) null, var5[var14]);
                } catch (Exception var9) {
                    var10001 = false;
                    break;
                }

                if (var7 != null) {
                    try {
                        if (!"".equals(var7) && !var13.contains(var7) && !var7.equals("240.0.0.1")) {
                            Log.d("Postern", var7);
                            this.setdns(var7);
                            break;
                        }
                    } catch (Exception var8) {
                        var10001 = false;
                        break;
                    }
                }
            }
        }

        ((PosternApp) this.getApplicationContext()).setState(1);
        ProxyChainManager.getProxyChainManager().refreshProxyChain();
        ProxyGroupManager.getProxyGroupManager().refreshProxyGroup();
        HostsManager.getHostsManager().refreshHostsTotalCount();
        HostsManager.getHostsManager().refreshHosts(0, 20);
        HostsManager.getHostsManager().setHostOffset(0);
        this.mDrawerLayout = (DrawerLayout) this.findViewById(2131165188);
        this.mDrawerLayout.setDrawerShadow(2130837505, 8388611);
        this.refreshDrawerList();
        this.mDrawerList = (ListView) this.findViewById(2131165190);
        this.mDrawerList.setOnItemClickListener(new PosternMain.DrawerItemClickListener());
        this.getActionBar().setDisplayHomeAsUpEnabled(true);
        this.getActionBar().setHomeButtonEnabled(true);
        this.mDrawerToggle = new ActionBarDrawerToggle(this, this.mDrawerLayout, 2130837509, 2130968668, 2130968669) {
            public void onDrawerClosed(View var1) {
                Log.d("Postern", "DrawerClosed");
            }

            public void onDrawerOpened(View var1) {
                Log.d("Postern", "DrawerOpened");
            }
        };
        this.mDrawerLayout.setDrawerListener(this.mDrawerToggle);
        if (var1 == null) {
            this.selectItem((AdapterView) null, (View) null, 1, 0L);
        }

        this.onMightImportFile(this.getIntent());

//        startService(new Intent(this, WhiteService.class));


        new Thread(new Runnable() {
            @Override
            public void run() {
                new AppCacheManager().saveCache();
            }
        }).start();

    }


    protected void onDestroy() {
        super.onDestroy();
        Log.d("Postern", "onDestroy");
        this.bManager.unregisterReceiver(this.bReceiver);
    }

    protected void onNewIntent(Intent var1) {
        super.onNewIntent(var1);
        this.onMightImportFile(var1);
    }

    public boolean onOptionsItemSelected(MenuItem var1) {
        boolean var2;
        if (this.mDrawerToggle.onOptionsItemSelected(var1)) {
            var2 = true;
        } else {
            var2 = super.onOptionsItemSelected(var1);
        }

        return var2;
    }

    protected void onPause() {
        super.onPause();
        Log.d("Postern", "onPause");
    }

    protected void onPostCreate(Bundle var1) {
        super.onPostCreate(var1);
        this.mDrawerToggle.syncState();
    }

    protected void onRestart() {
        super.onRestart();
        Log.d("Postern", "onRestart");
    }

    protected void onResume() {
        super.onResume();
        Log.d("Postern", "onResume");
        startService(new Intent(this, WhiteService.class));
    }

    protected void onSaveInstanceState(Bundle var1) {
        super.onSaveInstanceState(var1);
        var1.putByte("hasStarted", (byte) 1);
        Log.d("Postern", "onSaveInstanceState");
    }

    private String proxyname;

    private String proxypass;

    private String proxyserver;

    private int proxyport;

    protected void onStart() {
        super.onStart();
//        Intent intent = getIntent();
//        if (intent != null) {
//            proxyname = intent.getStringExtra("proxyname");
//            proxypass = intent.getStringExtra("proxypass");
//            proxyserver = intent.getStringExtra("proxyserver");
//            proxyport = intent.getIntExtra("proxyport", -1);
//            Log.d("Postern", "onStart getIntent proxyname="
//                    + proxyname +
//                    ", proxypass=" +
//                    proxypass +
//                    ", proxyserver=" +
//                    proxyserver
//                    + ", proxyport=" +
//                    proxyport);
//        }
//
//        Log.d("Postern", "onStart");
//        if (((PosternApp) this.getApplicationContext()).getVpnState() == 0) {
//            if (!TextUtils.isEmpty(proxyname) &&
//                    !TextUtils.isEmpty(proxypass) &&
//                    !TextUtils.isEmpty(proxyserver) &&
//                    proxyport != -1) {
//                PosternStart.createProxy(this, proxyname, proxypass, proxyserver, proxyport);
//                PosternStart.createRule(this);
//            }
//            this.launchVpn();
//        }


    }

    protected void onStop() {
        super.onStop();
        Log.d("Postern", "onStop");
    }

    public void refreshDrawerList() {
        int var1;
        if (((PosternApp) this.getApplicationContext()).getVpnState() == 1) {
            var1 = 2131034113;
        } else {
            var1 = 2131034112;
        }

        String[] var2 = this.getResources().getStringArray(var1);
        ((ListView) this.findViewById(2131165190)).setAdapter(new ArrayAdapter<String>(this, 2130903043, var2) {
            final PosternMain this$0;
            private final TypedArray val$typedArray;

            {
                this.this$0 = PosternMain.this;
                this.val$typedArray = PosternMain.this.getResources().obtainTypedArray(2131034114);
            }

            public View getView(int var1, View var2, ViewGroup var3) {
                TextView var4 = (TextView) super.getView(var1, var2, var3);
                var1 = this.val$typedArray.getResourceId(var1, 0);
                var4.setCompoundDrawablesWithIntrinsicBounds(PosternMain.this.getResources().getDrawable(var1), (Drawable) null, (Drawable) null, (Drawable) null);
                return var4;
            }
        });
    }

    private class DrawerItemClickListener implements OnItemClickListener {
        private DrawerItemClickListener() {
        }

        public void onItemClick(AdapterView<?> var1, View var2, int var3, long var4) {
            PosternMain.this.selectItem(var1, var2, var3, var4);
        }
    }
}