.class public Lcom/tunnelworkshop/postern/RuleFragment;
.super Landroid/app/Fragment;
.source "RuleFragment.java"


# instance fields
.field private currBtn:Lcom/tunnelworkshop/postern/RelativeLayoutButton;

.field private currColor:I

.field private rgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tunnelworkshop/postern/RuleGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tunnelworkshop/postern/RuleFragment;->rgList:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tunnelworkshop/postern/RuleFragment;->currBtn:Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/tunnelworkshop/postern/RuleFragment;->currColor:I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/tunnelworkshop/postern/RuleFragment;Lcom/tunnelworkshop/postern/RelativeLayoutButton;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleFragment;->currBtn:Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    return-void
.end method

.method static synthetic access$1(Lcom/tunnelworkshop/postern/RuleFragment;I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/tunnelworkshop/postern/RuleFragment;->currColor:I

    return-void
.end method

.method static synthetic access$2(Lcom/tunnelworkshop/postern/RuleFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleFragment;->rgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tunnelworkshop/postern/RuleFragment;I)I
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/RuleFragment;->ruledel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/tunnelworkshop/postern/RuleFragment;)Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleFragment;->currBtn:Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tunnelworkshop/postern/RuleFragment;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/tunnelworkshop/postern/RuleFragment;->currColor:I

    return v0
.end method

.method private native enumrulegroup()[B
.end method

.method private generateBtnText1(Lcom/tunnelworkshop/postern/RuleGroup;I)Ljava/lang/String;
    .locals 12
    .param p1, "rg"    # Lcom/tunnelworkshop/postern/RuleGroup;
    .param p2, "i"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v7

    if-eqz v7, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f04002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "text1":Ljava/lang/String;
    :goto_0
    const-string v7, "%s%d: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f04002d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 89
    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 90
    aput-object v6, v8, v9

    .line 87
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 92
    return-object v6

    .line 43
    .end local v6    # "text1":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 44
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 45
    :cond_2
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainManager()Lcom/tunnelworkshop/postern/ProxyChainManager;

    move-result-object v2

    .line 46
    .local v2, "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getPcpgname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainByName(Ljava/lang/String;)Lcom/tunnelworkshop/postern/ProxyChain;

    move-result-object v1

    .line 48
    .local v1, "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    if-eqz v1, :cond_3

    .line 49
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/tunnelworkshop/postern/ProxyChain;->getProxy(I)Lcom/tunnelworkshop/postern/Proxy;

    move-result-object v0

    .line 51
    .local v0, "p":Lcom/tunnelworkshop/postern/Proxy;
    const-string v7, "%s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f040030

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 53
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/Proxy;->getHostPortString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 51
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .restart local v6    # "text1":Ljava/lang/String;
    goto :goto_0

    .line 55
    .end local v0    # "p":Lcom/tunnelworkshop/postern/Proxy;
    .end local v6    # "text1":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f04003d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 57
    .restart local v6    # "text1":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    .end local v2    # "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    .end local v6    # "text1":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6

    .line 58
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainManager()Lcom/tunnelworkshop/postern/ProxyChainManager;

    move-result-object v2

    .line 59
    .restart local v2    # "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getPcpgname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainByName(Ljava/lang/String;)Lcom/tunnelworkshop/postern/ProxyChain;

    move-result-object v1

    .line 61
    .restart local v1    # "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    if-eqz v1, :cond_5

    .line 62
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/tunnelworkshop/postern/ProxyChain;->getProxy(I)Lcom/tunnelworkshop/postern/Proxy;

    move-result-object v0

    .line 64
    .restart local v0    # "p":Lcom/tunnelworkshop/postern/Proxy;
    const-string v7, "%s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f040033

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 66
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/Proxy;->getHostPortString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 64
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .restart local v6    # "text1":Ljava/lang/String;
    goto/16 :goto_0

    .line 68
    .end local v0    # "p":Lcom/tunnelworkshop/postern/Proxy;
    .end local v6    # "text1":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f04003d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 70
    .restart local v6    # "text1":Ljava/lang/String;
    goto/16 :goto_0

    .end local v1    # "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    .end local v2    # "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    .end local v6    # "text1":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_8

    .line 71
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupManager()Lcom/tunnelworkshop/postern/ProxyGroupManager;

    move-result-object v4

    .line 72
    .local v4, "pgMgr":Lcom/tunnelworkshop/postern/ProxyGroupManager;
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getPcpgname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupByName(Ljava/lang/String;)Lcom/tunnelworkshop/postern/ProxyGroup;

    move-result-object v3

    .line 74
    .local v3, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    if-eqz v3, :cond_7

    .line 75
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/tunnelworkshop/postern/ProxyGroup;->getOption(I)Lcom/tunnelworkshop/postern/ProxyGroupOption;

    move-result-object v5

    .line 77
    .local v5, "pgOpt":Lcom/tunnelworkshop/postern/ProxyGroupOption;
    const-string v7, "%s: %s ..."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f040034

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 79
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/ProxyGroupOption;->getStringID()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 77
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .restart local v6    # "text1":Ljava/lang/String;
    goto/16 :goto_0

    .line 81
    .end local v5    # "pgOpt":Lcom/tunnelworkshop/postern/ProxyGroupOption;
    .end local v6    # "text1":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f04003e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    .restart local v6    # "text1":Ljava/lang/String;
    goto/16 :goto_0

    .line 84
    .end local v3    # "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    .end local v4    # "pgMgr":Lcom/tunnelworkshop/postern/ProxyGroupManager;
    .end local v6    # "text1":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040032

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "text1":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private generateBtnText2(Lcom/tunnelworkshop/postern/RuleGroup;)Ljava/lang/String;
    .locals 8
    .param p1, "rg"    # Lcom/tunnelworkshop/postern/RuleGroup;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 99
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getRuleCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getTypeNameID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "text2":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 101
    .end local v1    # "text2":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getRuleCount()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 102
    invoke-virtual {p1, v6}, Lcom/tunnelworkshop/postern/RuleGroup;->getRule(I)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    .line 103
    .local v0, "r":Lcom/tunnelworkshop/postern/Rule;
    const-string v2, "%s - %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getTypeNameID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 104
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/Rule;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 103
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "text2":Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v0    # "r":Lcom/tunnelworkshop/postern/Rule;
    .end local v1    # "text2":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v6}, Lcom/tunnelworkshop/postern/RuleGroup;->getRule(I)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    .line 107
    .restart local v0    # "r":Lcom/tunnelworkshop/postern/Rule;
    const-string v2, "%s - %s ..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tunnelworkshop/postern/RuleGroup;->getTypeNameID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 108
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/Rule;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 107
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text2":Ljava/lang/String;
    goto :goto_0
.end method

.method private native ruledel(I)I
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const v19, 0x7f03000d

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, p2

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 119
    .local v16, "rootView":Landroid/view/View;
    const v19, 0x7f070031

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 120
    .local v9, "layout":Landroid/widget/LinearLayout;
    invoke-direct/range {p0 .. p0}, Lcom/tunnelworkshop/postern/RuleFragment;->enumrulegroup()[B

    move-result-object v6

    .line 123
    .local v6, "bytes":[B
    const/4 v10, 0x0

    .line 125
    .local v10, "proced":I
    if-nez v6, :cond_0

    .line 126
    const-string v19, "Postern"

    const-string v20, "enumrulegroup() failed\n"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v15, 0x0

    .line 134
    .local v15, "rgCount":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v15, :cond_1

    .line 153
    :goto_2
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleFragment;->rgList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_3

    .line 253
    new-instance v5, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 254
    .local v5, "btnAdd":Landroid/widget/Button;
    const v19, 0x7f04002c

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(I)V

    .line 255
    new-instance v19, Lcom/tunnelworkshop/postern/RuleFragment$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleFragment$3;-><init>(Lcom/tunnelworkshop/postern/RuleFragment;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    return-object v16

    .line 130
    .end local v5    # "btnAdd":Landroid/widget/Button;
    .end local v8    # "i":I
    .end local v15    # "rgCount":I
    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v15

    .line 131
    .restart local v15    # "rgCount":I
    const/4 v10, 0x4

    goto :goto_0

    .line 136
    .restart local v8    # "i":I
    :cond_1
    add-int/lit8 v19, v10, 0x4

    move/from16 v0, v19

    invoke-static {v6, v10, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 137
    .local v14, "rgBytesLenBuf":[B
    add-int/lit8 v10, v10, 0x4

    .line 139
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v14, v0}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v13

    .line 140
    .local v13, "rgBytesLen":I
    add-int v19, v10, v13

    move/from16 v0, v19

    invoke-static {v6, v10, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 141
    .local v12, "rgBytes":[B
    add-int/2addr v10, v13

    .line 143
    invoke-static {v12}, Lcom/tunnelworkshop/postern/RuleGroup;->deserialize([B)Lcom/tunnelworkshop/postern/RuleGroup;

    move-result-object v11

    .line 144
    .local v11, "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    if-nez v11, :cond_2

    .line 145
    const-string v19, "RuleGroup.deserialize() failed, i=%d,rgCount=%d\n"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "dbg":Ljava/lang/String;
    const-string v19, "Postern"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 149
    .end local v7    # "dbg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v11, v8}, Lcom/tunnelworkshop/postern/RuleGroup;->setIndex(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleFragment;->rgList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 154
    .end local v11    # "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    .end local v12    # "rgBytes":[B
    .end local v13    # "rgBytesLen":I
    .end local v14    # "rgBytesLenBuf":[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleFragment;->rgList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tunnelworkshop/postern/RuleGroup;

    .line 155
    .restart local v11    # "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    new-instance v4, Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;-><init>(Landroid/content/Context;)V

    .line 159
    .local v4, "btn":Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8}, Lcom/tunnelworkshop/postern/RuleFragment;->generateBtnText1(Lcom/tunnelworkshop/postern/RuleGroup;I)Ljava/lang/String;

    move-result-object v17

    .line 160
    .local v17, "text1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tunnelworkshop/postern/RuleFragment;->generateBtnText2(Lcom/tunnelworkshop/postern/RuleGroup;)Ljava/lang/String;

    move-result-object v18

    .line 162
    .local v18, "text2":Ljava/lang/String;
    const v19, 0x7f02000e

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setImageRes(I)V

    .line 163
    invoke-virtual {v4, v11}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 164
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText1(Ljava/lang/CharSequence;)V

    .line 165
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText2(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v19, Lcom/tunnelworkshop/postern/RuleFragment$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleFragment$1;-><init>(Lcom/tunnelworkshop/postern/RuleFragment;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance v19, Lcom/tunnelworkshop/postern/RuleFragment$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tunnelworkshop/postern/RuleFragment$2;-><init>(Lcom/tunnelworkshop/postern/RuleFragment;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 250
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3
.end method
