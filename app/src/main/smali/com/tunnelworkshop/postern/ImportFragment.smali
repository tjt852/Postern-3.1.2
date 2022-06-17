.class public Lcom/tunnelworkshop/postern/ImportFragment;
.super Landroid/app/Fragment;
.source "ImportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;,
        Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;
    }
.end annotation


# static fields
.field private static final MAX_FILE_LEN:I = 0x200000

.field private static final REQUEST_CODE:I = 0x4a4

.field private static final URL_RESULT_DL_FAIL:I = 0x3

.field private static final URL_RESULT_INVALID_URL:I = 0x1

.field private static final URL_RESULT_OPEN_FAIL:I = 0x2

.field private static final URL_RESULT_SUCCESS:I = 0x0

.field private static final URL_RESULT_TOO_LARGE:I = 0x4


# instance fields
.field private asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

.field private asyncUrl:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;

.field private btnImportLocal:Landroid/widget/Button;

.field private btnImportUrl:Landroid/widget/Button;

.field private fragmentRootView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->fragmentRootView:Landroid/view/View;

    .line 37
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 38
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->mEditText:Landroid/widget/EditText;

    .line 39
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportLocal:Landroid/widget/Button;

    .line 40
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportUrl:Landroid/widget/Button;

    .line 41
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUrl:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;

    .line 42
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportLocal:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportUrl:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tunnelworkshop/postern/ImportFragment;Ljava/io/File;)I
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/ImportFragment;->updateConfig(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/tunnelworkshop/postern/ImportFragment;Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    return-void
.end method

.method static synthetic access$6(Lcom/tunnelworkshop/postern/ImportFragment;Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUrl:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;

    return-void
.end method

.method static synthetic access$7(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->fragmentRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tunnelworkshop/postern/ImportFragment;)Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUrl:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;

    return-object v0
.end method

.method private doUpdateConfig(Ljava/io/File;Ljava/lang/String;)Z
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 66
    .local v4, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 69
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .local v5, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 75
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/ImportFragment;->fileprocinit()I

    .line 80
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 96
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 100
    :goto_1
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/ImportFragment;->fileprocupdate()I

    move-result v7

    .line 101
    .local v7, "ret":I
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/ImportFragment;->fileprocexit()I

    .line 103
    if-nez v7, :cond_1

    .line 104
    const/4 v8, 0x1

    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 106
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2
    return v8

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    const-string v9, "Postern"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_0
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-direct {p0, v6}, Lcom/tunnelworkshop/postern/ImportFragment;->fileprocline(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 84
    .end local v6    # "line":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/ImportFragment;->fileprocexit()I

    .line 88
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_4
    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 92
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "ret":I
    :cond_1
    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 106
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 89
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v9

    goto :goto_4

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_1

    .line 70
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private native fileprocexit()I
.end method

.method private native fileprocinit()I
.end method

.method private native fileprocline(Ljava/lang/String;)I
.end method

.method private native fileprocupdate()I
.end method

.method private updateConfig(Ljava/io/File;)I
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 111
    const-string v2, "US-ASCII"

    invoke-direct {p0, p1, v2}, Lcom/tunnelworkshop/postern/ImportFragment;->doUpdateConfig(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const-string v2, "UTF-8"

    invoke-direct {p0, p1, v2}, Lcom/tunnelworkshop/postern/ImportFragment;->doUpdateConfig(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    const-string v2, "UTF-16"

    invoke-direct {p0, p1, v2}, Lcom/tunnelworkshop/postern/ImportFragment;->doUpdateConfig(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    const/4 v1, -0x1

    .line 126
    :goto_0
    return v1

    .line 117
    :cond_0
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainManager()Lcom/tunnelworkshop/postern/ProxyChainManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/ProxyChainManager;->refreshProxyChain()V

    .line 118
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupManager()Lcom/tunnelworkshop/postern/ProxyGroupManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->refreshProxyGroup()V

    .line 119
    invoke-static {}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/HostsManager;->refreshHostsTotalCount()V

    .line 120
    invoke-static {}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v1, v3}, Lcom/tunnelworkshop/postern/HostsManager;->refreshHosts(II)V

    .line 121
    invoke-static {}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tunnelworkshop/postern/HostsManager;->setHostOffset(I)V

    .line 123
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 124
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->saveConfiguration()V

    goto :goto_0
.end method


# virtual methods
.method public backPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 209
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUrl:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    if-eqz v1, :cond_3

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUrl:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUrl:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;

    invoke-virtual {v1, v0}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->cancel(Z)Z

    .line 212
    iput-object v2, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUrl:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    invoke-virtual {v1, v0}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->cancel(Z)Z

    .line 216
    iput-object v2, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 220
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportLocal:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 222
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportUrl:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    const/4 v0, 0x0

    .line 226
    :cond_3
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 132
    const/16 v1, 0x4a4

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 133
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 134
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tunnelworkshop/postern/PosternUtils;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".conf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;-><init>(Lcom/tunnelworkshop/postern/ImportFragment;Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    .line 137
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "rootView":Landroid/view/View;
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment;->fragmentRootView:Landroid/view/View;

    .line 148
    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 149
    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->mEditText:Landroid/widget/EditText;

    .line 150
    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportLocal:Landroid/widget/Button;

    .line 151
    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportUrl:Landroid/widget/Button;

    .line 153
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportLocal:Landroid/widget/Button;

    new-instance v2, Lcom/tunnelworkshop/postern/ImportFragment$1;

    invoke-direct {v2, p0}, Lcom/tunnelworkshop/postern/ImportFragment$1;-><init>(Lcom/tunnelworkshop/postern/ImportFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportUrl:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ImportFragment;->btnImportUrl:Landroid/widget/Button;

    new-instance v2, Lcom/tunnelworkshop/postern/ImportFragment$2;

    invoke-direct {v2, p0}, Lcom/tunnelworkshop/postern/ImportFragment$2;-><init>(Lcom/tunnelworkshop/postern/ImportFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-object v0
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 198
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 199
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrUri()Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v2, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tunnelworkshop/postern/PosternUtils;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".conf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;-><init>(Lcom/tunnelworkshop/postern/ImportFragment;Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    .line 205
    iget-object v2, p0, Lcom/tunnelworkshop/postern/ImportFragment;->asyncUri:Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
