.class public Lcom/tunnelworkshop/postern/PosternMain;
.super Landroid/app/Activity;
.source "PosternMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tunnelworkshop/postern/PosternMain$DrawerItemClickListener;
    }
.end annotation


# static fields
.field private static final LIST_POS_ABOUT:I = 0x8

.field private static final LIST_POS_DNS:I = 0x5

.field private static final LIST_POS_HOSTS:I = 0x4

.field private static final LIST_POS_IMPORT:I = 0x0

.field private static final LIST_POS_PROXY_CHAIN:I = 0x1

.field private static final LIST_POS_PROXY_GROUP:I = 0x3

.field private static final LIST_POS_RULE:I = 0x2

.field private static final LIST_POS_SNIFFER:I = 0x6

.field private static final LIST_POS_VPN_SWITCH:I = 0x7

.field private static final proxyFile:Ljava/lang/String; = "proxy.pif"


# instance fields
.field private bManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private bReceiver:Landroid/content/BroadcastReceiver;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerList:Landroid/widget/ListView;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mStatusAllView:Landroid/widget/TextView;

.field private pc:Lcom/tunnelworkshop/postern/ProxyChain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "Postern"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternMain;->pc:Lcom/tunnelworkshop/postern/ProxyChain;

    .line 79
    new-instance v0, Lcom/tunnelworkshop/postern/PosternMain$1;

    invoke-direct {v0, p0}, Lcom/tunnelworkshop/postern/PosternMain$1;-><init>(Lcom/tunnelworkshop/postern/PosternMain;)V

    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternMain;->bReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/tunnelworkshop/postern/PosternMain;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 270
    invoke-direct/range {p0 .. p5}, Lcom/tunnelworkshop/postern/PosternMain;->selectItem(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private launchVpn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    const-string v1, "Postern"

    const-string v2, "prepare VpnService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0, v0, v3}, Lcom/tunnelworkshop/postern/PosternMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/tunnelworkshop/postern/PosternMain;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private onMightImportFile(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tunnelworkshop/postern/PosternApp;

    .line 138
    .local v1, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrUri(Landroid/net/Uri;)V

    .line 140
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private selectItem(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "toPage":I
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tunnelworkshop/postern/PosternApp;

    .line 275
    .local v1, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    if-nez p3, :cond_2

    .line 276
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrUri(Landroid/net/Uri;)V

    .line 277
    const/4 v2, 0x1

    .line 306
    :goto_0
    if-eqz v2, :cond_0

    .line 307
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v5

    invoke-virtual {v5, p0, v2}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 309
    :cond_0
    iget-object v5, p0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v5, p3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 310
    iget-object v5, p0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v6, p0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 311
    :cond_1
    return-void

    .line 278
    :cond_2
    if-ne p3, v6, :cond_3

    .line 279
    const/4 v2, 0x3

    .line 280
    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    if-ne p3, v5, :cond_4

    .line 281
    const/4 v2, 0x5

    .line 282
    goto :goto_0

    :cond_4
    const/4 v5, 0x3

    if-ne p3, v5, :cond_5

    .line 283
    const/16 v2, 0xa

    .line 284
    goto :goto_0

    :cond_5
    if-ne p3, v7, :cond_6

    .line 285
    const/16 v2, 0xc

    .line 286
    goto :goto_0

    :cond_6
    const/4 v5, 0x5

    if-ne p3, v5, :cond_7

    .line 287
    const/4 v2, 0x7

    .line 288
    goto :goto_0

    :cond_7
    const/4 v5, 0x6

    if-ne p3, v5, :cond_8

    .line 289
    const/16 v2, 0x8

    .line 290
    goto :goto_0

    :cond_8
    const/4 v5, 0x7

    if-ne p3, v5, :cond_a

    .line 291
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/PosternApp;->getVpnService()Lcom/tunnelworkshop/postern/PosternVpnService;

    move-result-object v3

    .line 292
    .local v3, "vpnService":Lcom/tunnelworkshop/postern/PosternVpnService;
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/PosternApp;->getVpnState()I

    move-result v4

    .line 294
    .local v4, "vpnState":I
    if-nez v4, :cond_9

    .line 295
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/PosternMain;->launchVpn()V

    goto :goto_0

    .line 297
    :cond_9
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/PosternVpnService;->revertPosternVpnService()V

    goto :goto_0

    .line 299
    .end local v3    # "vpnService":Lcom/tunnelworkshop/postern/PosternVpnService;
    .end local v4    # "vpnState":I
    :cond_a
    const/16 v5, 0x8

    if-ne p3, v5, :cond_1

    .line 300
    new-instance v0, Lcom/tunnelworkshop/postern/AboutDialog;

    invoke-direct {v0, p0, v7}, Lcom/tunnelworkshop/postern/AboutDialog;-><init>(Landroid/content/Context;I)V

    .line 301
    .local v0, "aboutDialog":Lcom/tunnelworkshop/postern/AboutDialog;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/AboutDialog;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private native setdns(Ljava/lang/String;)I
.end method

.method private native sysinit(Ljava/lang/String;I)I
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 361
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tunnelworkshop/postern/PosternVpnService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tunnelworkshop/postern/PosternMain;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 365
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 314
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v2

    .line 317
    .local v2, "pageMgr":Lcom/tunnelworkshop/postern/PageManager;
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/PageManager;->getPage()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 318
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/PageManager;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/ImportFragment;

    .line 319
    .local v0, "frag":Lcom/tunnelworkshop/postern/ImportFragment;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/ImportFragment;->backPressed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 328
    .end local v0    # "frag":Lcom/tunnelworkshop/postern/ImportFragment;
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/PageManager;->getPage()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 322
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/PageManager;->getFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;

    .line 323
    .local v1, "frag2":Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;->backPressed()V

    .line 326
    .end local v1    # "frag2":Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;
    :cond_2
    invoke-virtual {v2, p0}, Lcom/tunnelworkshop/postern/PageManager;->backPage(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 357
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const v2, 0x7f030001

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tunnelworkshop/postern/PosternMain;->setContentView(I)V

    .line 148
    const-string v2, "Postern"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tunnelworkshop/postern/PosternMain;->bManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 151
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v13, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.tunnelworkshop.postern.UPDATE_DRAWER"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tunnelworkshop/postern/PosternMain;->bManager:Landroid/support/v4/content/LocalBroadcastManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tunnelworkshop/postern/PosternMain;->bReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v13}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/PosternMain;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, "file":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "proxy.pif"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 161
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MyPhone my"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "LG-H500"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "LG-T540"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "LG-H502"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "LG-H520"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "LG-H540"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "LG-H542"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-J106B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACER E320"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INTENSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INTENSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FLARE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Starmobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    :cond_0
    const-string v2, "Postern"

    const-string v3, "Use generic timer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v12, 0x1

    .line 180
    .local v12, "genericTimer":I
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/tunnelworkshop/postern/PosternMain;->sysinit(Ljava/lang/String;I)I

    .line 183
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 184
    .local v9, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v9, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 185
    .local v14, "method":Ljava/lang/reflect/Method;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v16, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "net.dns1"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "net.dns2"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "net.dns3"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "net.dns4"

    aput-object v4, v3, v2

    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_3

    .line 198
    .end local v9    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v16    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/PosternMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/tunnelworkshop/postern/PosternApp;

    .line 199
    .local v10, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/tunnelworkshop/postern/PosternApp;->setState(I)V

    .line 201
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainManager()Lcom/tunnelworkshop/postern/ProxyChainManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/ProxyChainManager;->refreshProxyChain()V

    .line 202
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupManager()Lcom/tunnelworkshop/postern/ProxyGroupManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->refreshProxyGroup()V

    .line 203
    invoke-static {}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/HostsManager;->refreshHostsTotalCount()V

    .line 204
    invoke-static {}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/tunnelworkshop/postern/HostsManager;->refreshHosts(II)V

    .line 205
    invoke-static {}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tunnelworkshop/postern/HostsManager;->setHostOffset(I)V

    .line 207
    const v2, 0x7f070004

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tunnelworkshop/postern/PosternMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v3, 0x7f020001

    const v4, 0x800003

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/PosternMain;->refreshDrawerList()V

    .line 212
    const v2, 0x7f070006

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tunnelworkshop/postern/PosternMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerList:Landroid/widget/ListView;

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerList:Landroid/widget/ListView;

    new-instance v3, Lcom/tunnelworkshop/postern/PosternMain$DrawerItemClickListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/tunnelworkshop/postern/PosternMain$DrawerItemClickListener;-><init>(Lcom/tunnelworkshop/postern/PosternMain;Lcom/tunnelworkshop/postern/PosternMain$DrawerItemClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/PosternMain;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/PosternMain;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 221
    new-instance v2, Lcom/tunnelworkshop/postern/PosternMain$3;

    .line 223
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 224
    const v6, 0x7f020005

    .line 225
    const v7, 0x7f04005c

    .line 226
    const v8, 0x7f04005d

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/tunnelworkshop/postern/PosternMain$3;-><init>(Lcom/tunnelworkshop/postern/PosternMain;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    .line 221
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 238
    if-nez p1, :cond_1

    .line 239
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/tunnelworkshop/postern/PosternMain;->selectItem(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 242
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/PosternMain;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tunnelworkshop/postern/PosternMain;->onMightImportFile(Landroid/content/Intent;)V

    .line 243
    return-void

    .line 177
    .end local v10    # "appState":Lcom/tunnelworkshop/postern/PosternApp;
    .end local v12    # "genericTimer":I
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "genericTimer":I
    goto/16 :goto_0

    .line 186
    .restart local v9    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v16    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    aget-object v15, v3, v2

    .line 187
    .local v15, "name":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    invoke-virtual {v14, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 188
    .local v17, "value":Ljava/lang/String;
    if-eqz v17, :cond_4

    const-string v5, ""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "240.0.0.1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 189
    const-string v2, "Postern"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/PosternMain;->setdns(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 195
    .end local v9    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 186
    .restart local v9    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 395
    const-string v0, "Postern"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternMain;->bManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/tunnelworkshop/postern/PosternMain;->bReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/PosternMain;->onMightImportFile(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 383
    const-string v0, "Postern"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 349
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternMain;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 350
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 371
    const-string v0, "Postern"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 377
    const-string v0, "Postern"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 402
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 404
    const-string v0, "hasStarted"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 405
    const-string v0, "Postern"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 333
    const-string v1, "Postern"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 336
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getVpnState()I

    move-result v1

    if-nez v1, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/PosternMain;->launchVpn()V

    .line 338
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 389
    const-string v0, "Postern"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method public refreshDrawerList()V
    .locals 9

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/tunnelworkshop/postern/PosternApp;

    .line 105
    .local v6, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/PosternApp;->getVpnState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    const v8, 0x7f050001

    .line 111
    .local v8, "options":I
    :goto_0
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "optionTitles":[Ljava/lang/String;
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/tunnelworkshop/postern/PosternMain;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 113
    .local v7, "drawerList":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 114
    .local v5, "typedArray":Landroid/content/res/TypedArray;
    new-instance v0, Lcom/tunnelworkshop/postern/PosternMain$2;

    .line 115
    const v3, 0x7f030003

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/tunnelworkshop/postern/PosternMain$2;-><init>(Lcom/tunnelworkshop/postern/PosternMain;Landroid/content/Context;I[Ljava/lang/String;Landroid/content/res/TypedArray;)V

    .line 114
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    return-void

    .line 108
    .end local v4    # "optionTitles":[Ljava/lang/String;
    .end local v5    # "typedArray":Landroid/content/res/TypedArray;
    .end local v7    # "drawerList":Landroid/widget/ListView;
    .end local v8    # "options":I
    :cond_0
    const/high16 v8, 0x7f050000

    .restart local v8    # "options":I
    goto :goto_0
.end method
