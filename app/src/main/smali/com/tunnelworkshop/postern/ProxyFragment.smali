.class public Lcom/tunnelworkshop/postern/ProxyFragment;
.super Landroid/app/Fragment;
.source "ProxyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 17
    return-void
.end method

.method private putPcIntoView(Landroid/view/View;)V
    .locals 14
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 21
    const v9, 0x7f070015

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 22
    .local v4, "layout":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainManager()Lcom/tunnelworkshop/postern/ProxyChainManager;

    move-result-object v7

    .line 26
    .local v7, "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v7}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainCount()I

    move-result v9

    if-lt v2, v9, :cond_0

    .line 71
    return-void

    .line 27
    :cond_0
    invoke-virtual {v7, v2}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChain(I)Lcom/tunnelworkshop/postern/ProxyChain;

    move-result-object v6

    .line 29
    .local v6, "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    const-string v9, "ProxyChain added, idx %d\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/ProxyChain;->getProxyChainId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "dbg":Ljava/lang/String;
    const-string v9, "Postern"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/tunnelworkshop/postern/ProxyChain;->getProxy(I)Lcom/tunnelworkshop/postern/Proxy;

    move-result-object v5

    .line 34
    .local v5, "p":Lcom/tunnelworkshop/postern/Proxy;
    new-instance v0, Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "btn":Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    const v9, 0x7f020012

    invoke-virtual {v0, v9}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setImageRes(I)V

    .line 37
    invoke-virtual {v0, v6}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 39
    const-string v9, "%s%d: %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f040018

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 41
    add-int/lit8 v12, v2, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 42
    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/ProxyChain;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 39
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "text":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText1(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/Proxy;->getAddrType()B

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 46
    const-string v9, "%s - %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/Proxy;->getTypeString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/Proxy;->getDomain()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 47
    invoke-virtual {v0, v8}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText2(Ljava/lang/CharSequence;)V

    .line 56
    :goto_1
    new-instance v9, Lcom/tunnelworkshop/postern/ProxyFragment$1;

    invoke-direct {v9, p0}, Lcom/tunnelworkshop/postern/ProxyFragment$1;-><init>(Lcom/tunnelworkshop/postern/ProxyFragment;)V

    invoke-virtual {v0, v9}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 48
    :cond_1
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/Proxy;->getAddrType()B

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 49
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/Proxy;->getIp()Ljava/net/InetAddress;

    move-result-object v3

    .line 50
    .local v3, "ip":Ljava/net/InetAddress;
    const-string v9, "%s - %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/Proxy;->getTypeString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual {v0, v8}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText2(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 54
    .end local v3    # "ip":Ljava/net/InetAddress;
    :cond_2
    const-string v9, "Unknown"

    invoke-virtual {v0, v9}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText2(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, "rootView":Landroid/view/View;
    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 80
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/tunnelworkshop/postern/ProxyFragment;->putPcIntoView(Landroid/view/View;)V

    .line 82
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "btnAdd":Landroid/widget/Button;
    const v3, 0x7f04001c

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 84
    new-instance v3, Lcom/tunnelworkshop/postern/ProxyFragment$2;

    invoke-direct {v3, p0}, Lcom/tunnelworkshop/postern/ProxyFragment$2;-><init>(Lcom/tunnelworkshop/postern/ProxyFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    return-object v2
.end method
