.class public Lcom/tunnelworkshop/postern/PosternVpnService;
.super Landroid/net/VpnService;
.source "PosternVpnService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Postern"


# instance fields
.field private mConfigureIntent:Landroid/app/PendingIntent;

.field private mInterface:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    .line 25
    return-void
.end method

.method private startVpn()V
    .locals 8

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 68
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    :try_start_0
    iget-object v6, p0, Lcom/tunnelworkshop/postern/PosternVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    if-eqz v6, :cond_0

    .line 69
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Android VPN already running"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "VPN establish failed"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/tunnelworkshop/postern/PosternMain;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v4, "statusActivityIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 75
    .local v3, "pIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/net/VpnService$Builder;

    invoke-direct {v1, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 76
    .local v1, "builder":Landroid/net/VpnService$Builder;
    invoke-virtual {v1, v3}, Landroid/net/VpnService$Builder;->setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;

    .line 77
    const/16 v6, 0x5dc

    invoke-virtual {v1, v6}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 78
    const-string v6, "1.1.1.1"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 79
    const-string v6, "240.0.0.1"

    invoke-virtual {v1, v6}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 80
    const-string v6, "0.0.0.0"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 83
    new-instance v6, Ljava/lang/String;

    const-string v7, "Postern"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    iput-object v6, p0, Lcom/tunnelworkshop/postern/PosternVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    .line 85
    iget-object v6, p0, Lcom/tunnelworkshop/postern/PosternVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v6

    invoke-virtual {p0, p0, v6}, Lcom/tunnelworkshop/postern/PosternVpnService;->attachfd(Ljava/lang/Object;I)I

    .line 87
    invoke-virtual {v0, p0}, Lcom/tunnelworkshop/postern/PosternApp;->setVpnService(Lcom/tunnelworkshop/postern/PosternVpnService;)V

    .line 88
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/tunnelworkshop/postern/PosternApp;->setVpnState(I)V

    .line 90
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.tunnelworkshop.postern.UPDATE_DRAWER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v5, "updateIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private stopVpn()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 100
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    iget-object v2, p0, Lcom/tunnelworkshop/postern/PosternVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_0

    .line 112
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v2, "Postern"

    const-string v3, "PosternVpnService:Stop VPN service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->detachfd()I

    .line 106
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tunnelworkshop/postern/PosternVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    .line 108
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tunnelworkshop/postern/PosternApp;->setVpnState(I)V

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tunnelworkshop.postern.UPDATE_DRAWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "updateIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public native attachfd(Ljava/lang/Object;I)I
.end method

.method public native detachfd()I
.end method

.method public isVpnRunning()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 57
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    const-string v1, "Postern"

    const-string v2, "PosternVpnService.onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->stopSelf()V

    .line 59
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->stopVpn()V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tunnelworkshop/postern/PosternApp;->setVpnState(I)V

    .line 62
    return-void
.end method

.method public onRevoke()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "Postern"

    const-string v1, "PosternVpnService.onRevoke"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->stopSelf()V

    .line 50
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->stopVpn()V

    .line 51
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->startVpn()V

    .line 37
    const-string v0, "Postern"

    const-string v1, "on start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->startVpn()V

    .line 43
    const/4 v0, 0x2

    return v0
.end method

.method public protectFd(I)Z
    .locals 1
    .param p1, "fd"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/tunnelworkshop/postern/PosternVpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public revertPosternVpnService()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->stopVpn()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/PosternVpnService;->startVpn()V

    goto :goto_0
.end method
