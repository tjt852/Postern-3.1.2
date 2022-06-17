.class public Lcom/tunnelworkshop/postern/RuleEditFragment;
.super Landroid/app/Fragment;
.source "RuleEditFragment.java"


# static fields
.field private static final RULE_POS_BLOCK:I = 0x2

.field private static final RULE_POS_DIRECT:I = 0x0

.field private static final RULE_POS_PROXY_GROUP:I = 0x4

.field private static final RULE_POS_SMART:I = 0x3

.field private static final RULE_POS_TUNNEL:I = 0x1

.field private static final TYPE_POS_DEFAULT:I = 0x5

.field private static final TYPE_POS_DOMAIN:I = 0x4

.field private static final TYPE_POS_DOMAIN_KEYWORD:I = 0x2

.field private static final TYPE_POS_DOMAIN_SUFFIX:I = 0x3

.field private static final TYPE_POS_GEOIP:I = 0x0

.field private static final TYPE_POS_IPCIDR:I = 0x1


# instance fields
.field private fragmentRootView:Landroid/view/View;

.field private proxySelected:I

.field private recordSelected:Z

.field private ruleTypeSelected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tunnelworkshop/postern/RuleEditFragment;->recordSelected:Z

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/tunnelworkshop/postern/RuleEditFragment;I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment;->ruleTypeSelected:I

    return-void
.end method

.method static synthetic access$1(Lcom/tunnelworkshop/postern/RuleEditFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleEditFragment;->fragmentRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tunnelworkshop/postern/RuleEditFragment;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->prevPage()V

    return-void
.end method

.method static synthetic access$11(Lcom/tunnelworkshop/postern/RuleEditFragment;I)I
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/RuleEditFragment;->ruledel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/tunnelworkshop/postern/RuleEditFragment;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/tunnelworkshop/postern/RuleEditFragment;->ruleTypeSelected:I

    return v0
.end method

.method static synthetic access$3(Lcom/tunnelworkshop/postern/RuleEditFragment;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/tunnelworkshop/postern/RuleEditFragment;->recordSelected:Z

    return v0
.end method

.method static synthetic access$4(Lcom/tunnelworkshop/postern/RuleEditFragment;Z)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/RuleEditFragment;->updateProxyListSpinner(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/tunnelworkshop/postern/RuleEditFragment;Lcom/tunnelworkshop/postern/RuleGroup;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/RuleEditFragment;->selectProxyListSpinner(Lcom/tunnelworkshop/postern/RuleGroup;)V

    return-void
.end method

.method static synthetic access$6(Lcom/tunnelworkshop/postern/RuleEditFragment;Lcom/tunnelworkshop/postern/RuleGroup;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/RuleEditFragment;->selectProxyGroupSpinner(Lcom/tunnelworkshop/postern/RuleGroup;)V

    return-void
.end method

.method static synthetic access$7(Lcom/tunnelworkshop/postern/RuleEditFragment;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment;->recordSelected:Z

    return-void
.end method

.method static synthetic access$8(Lcom/tunnelworkshop/postern/RuleEditFragment;I[B)I
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/tunnelworkshop/postern/RuleEditFragment;->ruleinsert(I[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/tunnelworkshop/postern/RuleEditFragment;[B)I
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/RuleEditFragment;->ruleupdate([B)I

    move-result v0

    return v0
.end method

.method private installProxyGroupList()V
    .locals 7

    .prologue
    .line 102
    iget-object v5, p0, Lcom/tunnelworkshop/postern/RuleEditFragment;->fragmentRootView:Landroid/view/View;

    const v6, 0x7f07002b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 104
    .local v4, "spinner":Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 105
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 107
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupManager()Lcom/tunnelworkshop/postern/ProxyGroupManager;

    move-result-object v3

    .line 109
    .local v3, "pgMgr":Lcom/tunnelworkshop/postern/ProxyGroupManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupCount()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f04003e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    return-void

    .line 110
    :cond_0
    invoke-virtual {v3, v1}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroup(I)Lcom/tunnelworkshop/postern/ProxyGroup;

    move-result-object v2

    .line 112
    .local v2, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/ProxyGroup;->getPgname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private installProxyList()V
    .locals 12

    .prologue
    .line 52
    iget-object v8, p0, Lcom/tunnelworkshop/postern/RuleEditFragment;->fragmentRootView:Landroid/view/View;

    const v9, 0x7f07002b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 54
    .local v6, "spinner":Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1090008

    invoke-direct {v0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 55
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 57
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainManager()Lcom/tunnelworkshop/postern/ProxyChainManager;

    move-result-object v5

    .line 59
    .local v5, "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainCount()I

    move-result v8

    if-lt v1, v8, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f04003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 77
    return-void

    .line 60
    :cond_0
    invoke-virtual {v5, v1}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChain(I)Lcom/tunnelworkshop/postern/ProxyChain;

    move-result-object v4

    .line 61
    .local v4, "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/tunnelworkshop/postern/ProxyChain;->getProxy(I)Lcom/tunnelworkshop/postern/Proxy;

    move-result-object v3

    .line 62
    .local v3, "p":Lcom/tunnelworkshop/postern/Proxy;
    const/4 v7, 0x0

    .line 64
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/Proxy;->getAddrType()B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 65
    const-string v8, "%s - %s:%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ProxyChain;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/Proxy;->getDomain()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/Proxy;->getPort()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 73
    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/Proxy;->getAddrType()B

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 67
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/Proxy;->getIp()Ljava/net/InetAddress;

    move-result-object v2

    .line 68
    .local v2, "ip":Ljava/net/InetAddress;
    const-string v8, "%s - %s:%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ProxyChain;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/Proxy;->getPort()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 69
    goto :goto_1

    .line 70
    .end local v2    # "ip":Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f04003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private prevPage()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 49
    return-void
.end method

.method private native ruledel(I)I
.end method

.method private native ruleinsert(I[B)I
.end method

.method private native ruleupdate([B)I
.end method

.method private selectProxyGroupSpinner(Lcom/tunnelworkshop/postern/RuleGroup;)V
    .locals 7
    .param p1, "rg"    # Lcom/tunnelworkshop/postern/RuleGroup;

    .prologue
    .line 119
    iget-object v5, p0, Lcom/tunnelworkshop/postern/RuleEditFragment;->fragmentRootView:Landroid/view/View;

    const v6, 0x7f07002b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 120
    .local v4, "spinner":Landroid/widget/Spinner;
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupManager()Lcom/tunnelworkshop/postern/ProxyGroupManager;

    move-result-object v3

    .line 121
    .local v3, "pgMgr":Lcom/tunnelworkshop/postern/ProxyGroupManager;
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupCount()I

    move-result v1

    .line 123
    .local v1, "indexMax":I
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getPcpgname()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 124
    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 137
    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v3, v0}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroup(I)Lcom/tunnelworkshop/postern/ProxyGroup;

    move-result-object v2

    .line 131
    .local v2, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getPcpgname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/ProxyGroup;->getPgname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 128
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private selectProxyListSpinner(Lcom/tunnelworkshop/postern/RuleGroup;)V
    .locals 7
    .param p1, "rg"    # Lcom/tunnelworkshop/postern/RuleGroup;

    .prologue
    .line 80
    iget-object v5, p0, Lcom/tunnelworkshop/postern/RuleEditFragment;->fragmentRootView:Landroid/view/View;

    const v6, 0x7f07002b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 81
    .local v4, "spinner":Landroid/widget/Spinner;
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainManager()Lcom/tunnelworkshop/postern/ProxyChainManager;

    move-result-object v3

    .line 82
    .local v3, "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainCount()I

    move-result v1

    .line 84
    .local v1, "indexMax":I
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getPcpgname()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 85
    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 99
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 98
    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v3, v0}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChain(I)Lcom/tunnelworkshop/postern/ProxyChain;

    move-result-object v2

    .line 92
    .local v2, "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getPcpgname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/ProxyChain;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 89
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateProxyListSpinner(Z)V
    .locals 0
    .param p1, "isProxyList"    # Z

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->installProxyList()V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->installProxyGroupList()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    const v20, 0x7f03000c

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 152
    .local v12, "rootView":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tunnelworkshop/postern/RuleEditFragment;->fragmentRootView:Landroid/view/View;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/tunnelworkshop/postern/PosternApp;

    .line 156
    .local v6, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    const v20, 0x7f070028

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    .line 157
    .local v18, "spinnerRuleType":Landroid/widget/Spinner;
    const v20, 0x7f070029

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 158
    .local v17, "spinnerRuleAction":Landroid/widget/Spinner;
    const v20, 0x7f07002b

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Spinner;

    .line 159
    .local v16, "spinnerProxyList":Landroid/widget/Spinner;
    const v20, 0x7f07002c

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    .line 161
    .local v15, "snifferCheckBox":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f050005

    .line 162
    const v22, 0x1090008

    .line 161
    invoke-static/range {v20 .. v22}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    .line 163
    .local v5, "adapter1":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v20, 0x1090009

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 164
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f050006

    .line 167
    const v22, 0x1090008

    .line 166
    invoke-static/range {v20 .. v22}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    .line 168
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v20, 0x1090009

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 169
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 170
    new-instance v20, Lcom/tunnelworkshop/postern/RuleEditFragment$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleEditFragment$1;-><init>(Lcom/tunnelworkshop/postern/RuleEditFragment;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 222
    new-instance v20, Lcom/tunnelworkshop/postern/RuleEditFragment$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleEditFragment$2;-><init>(Lcom/tunnelworkshop/postern/RuleEditFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v20, 0x7f07002e

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 236
    .local v7, "btn":Landroid/widget/Button;
    new-instance v20, Lcom/tunnelworkshop/postern/RuleEditFragment$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleEditFragment$3;-><init>(Lcom/tunnelworkshop/postern/RuleEditFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v20, 0x7f07002f

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "btn":Landroid/widget/Button;
    check-cast v7, Landroid/widget/Button;

    .line 381
    .restart local v7    # "btn":Landroid/widget/Button;
    new-instance v20, Lcom/tunnelworkshop/postern/RuleEditFragment$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleEditFragment$4;-><init>(Lcom/tunnelworkshop/postern/RuleEditFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const v20, 0x7f070030

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "btn":Landroid/widget/Button;
    check-cast v7, Landroid/widget/Button;

    .line 391
    .restart local v7    # "btn":Landroid/widget/Button;
    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrEditRule()Lcom/tunnelworkshop/postern/RuleGroup;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 392
    new-instance v20, Lcom/tunnelworkshop/postern/RuleEditFragment$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleEditFragment$5;-><init>(Lcom/tunnelworkshop/postern/RuleEditFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrEditRule()Lcom/tunnelworkshop/postern/RuleGroup;

    move-result-object v11

    .line 420
    .local v11, "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    if-nez v11, :cond_0

    .line 529
    :goto_0
    return-object v12

    .line 424
    :cond_0
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 426
    const-string v19, ""

    .line 427
    .local v19, "text":Ljava/lang/String;
    const v20, 0x7f07002d

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 428
    .local v8, "ed":Landroid/widget/EditText;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v11}, Lcom/tunnelworkshop/postern/RuleGroup;->getRuleCount()I

    move-result v20

    move/from16 v0, v20

    if-lt v9, v0, :cond_1

    .line 435
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {v11}, Lcom/tunnelworkshop/postern/RuleGroup;->getType()I

    move-result v14

    .line 439
    .local v14, "ruleType":I
    packed-switch v14, :pswitch_data_0

    .line 460
    :goto_2
    invoke-virtual {v11}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v13

    .line 461
    .local v13, "ruleAction":I
    packed-switch v13, :pswitch_data_1

    goto :goto_0

    .line 463
    :pswitch_0
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 464
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 465
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tunnelworkshop/postern/RuleEditFragment;->recordSelected:Z

    .line 467
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 468
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    .line 429
    .end local v13    # "ruleAction":I
    .end local v14    # "ruleType":I
    :cond_1
    invoke-virtual {v11, v9}, Lcom/tunnelworkshop/postern/RuleGroup;->getRule(I)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v10

    .line 431
    .local v10, "r":Lcom/tunnelworkshop/postern/Rule;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/tunnelworkshop/postern/Rule;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 432
    invoke-virtual {v11}, Lcom/tunnelworkshop/postern/RuleGroup;->getRuleCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_2

    .line 433
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "; "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 428
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 441
    .end local v10    # "r":Lcom/tunnelworkshop/postern/Rule;
    .restart local v14    # "ruleType":I
    :pswitch_1
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 444
    :pswitch_2
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 447
    :pswitch_3
    const/16 v20, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 450
    :pswitch_4
    const/16 v20, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 453
    :pswitch_5
    const/16 v20, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 456
    :pswitch_6
    const/16 v20, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 471
    .restart local v13    # "ruleAction":I
    :pswitch_7
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 472
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 473
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tunnelworkshop/postern/RuleEditFragment;->recordSelected:Z

    .line 475
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 476
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 479
    :pswitch_8
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 480
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 481
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tunnelworkshop/postern/RuleEditFragment;->recordSelected:Z

    .line 483
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 484
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 486
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleEditFragment;->updateProxyListSpinner(Z)V

    .line 487
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tunnelworkshop/postern/RuleEditFragment;->selectProxyListSpinner(Lcom/tunnelworkshop/postern/RuleGroup;)V

    goto/16 :goto_0

    .line 490
    :pswitch_9
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 491
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 492
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tunnelworkshop/postern/RuleEditFragment;->recordSelected:Z

    .line 494
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 495
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 497
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleEditFragment;->updateProxyListSpinner(Z)V

    .line 498
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tunnelworkshop/postern/RuleEditFragment;->selectProxyListSpinner(Lcom/tunnelworkshop/postern/RuleGroup;)V

    goto/16 :goto_0

    .line 501
    :pswitch_a
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 502
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 503
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tunnelworkshop/postern/RuleEditFragment;->recordSelected:Z

    .line 505
    const/16 v20, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 508
    :pswitch_b
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 509
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 510
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tunnelworkshop/postern/RuleEditFragment;->recordSelected:Z

    .line 512
    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 514
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleEditFragment;->updateProxyListSpinner(Z)V

    .line 515
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tunnelworkshop/postern/RuleEditFragment;->selectProxyListSpinner(Lcom/tunnelworkshop/postern/RuleGroup;)V

    goto/16 :goto_0

    .line 518
    :pswitch_c
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 519
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 520
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tunnelworkshop/postern/RuleEditFragment;->recordSelected:Z

    .line 522
    const/16 v20, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 524
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleEditFragment;->updateProxyListSpinner(Z)V

    .line 525
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tunnelworkshop/postern/RuleEditFragment;->selectProxyGroupSpinner(Lcom/tunnelworkshop/postern/RuleGroup;)V

    goto/16 :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 461
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
