.class public Lcom/tunnelworkshop/postern/NetworkBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "NetworkBroadcast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getDnsServer()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v7, 0x0

    .line 13
    const-string v4, "8.8.8.8"

    .line 16
    .local v4, "ret":Ljava/lang/String;
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    .local v0, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 18
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v9, "net.dns1"

    aput-object v9, v8, v6

    const/4 v6, 0x1

    const-string v9, "net.dns2"

    aput-object v9, v8, v6

    const/4 v6, 0x2

    const-string v9, "net.dns3"

    aput-object v9, v8, v6

    const/4 v6, 0x3

    const-string v9, "net.dns4"

    aput-object v9, v8, v6

    array-length v9, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    :goto_0
    if-lt v6, v9, :cond_0

    .line 28
    .end local v0    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_1
    const-string v6, "change system dns:%s\n"

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v4, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "dbg":Ljava/lang/String;
    const-string v6, "Postern"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-object v4

    .line 18
    .end local v1    # "dbg":Ljava/lang/String;
    .restart local v0    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    aget-object v3, v8, v6

    .line 19
    .local v3, "name":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 20
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "240.0.0.1"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-nez v10, :cond_1

    .line 21
    move-object v4, v5

    .line 22
    goto :goto_1

    .line 18
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private native setdns(Ljava/lang/String;)I
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 38
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    if-nez v0, :cond_1

    .line 39
    const-string v2, "Postern"

    const-string v3, "ApplicationContext null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string v2, "App State:%d"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "dbg":Ljava/lang/String;
    const-string v2, "Postern"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getState()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/NetworkBroadcast;->getDnsServer()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tunnelworkshop/postern/NetworkBroadcast;->setdns(Ljava/lang/String;)I

    goto :goto_0
.end method
