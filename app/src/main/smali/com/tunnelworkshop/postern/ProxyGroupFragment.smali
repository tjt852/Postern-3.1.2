.class public Lcom/tunnelworkshop/postern/ProxyGroupFragment;
.super Landroid/app/Fragment;
.source "ProxyGroupFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 15
    return-void
.end method

.method private putPgIntoView(Landroid/view/View;)V
    .locals 14
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 19
    const v8, 0x7f070027

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 20
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupManager()Lcom/tunnelworkshop/postern/ProxyGroupManager;

    move-result-object v6

    .line 24
    .local v6, "pgMgr":Lcom/tunnelworkshop/postern/ProxyGroupManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupCount()I

    move-result v8

    if-lt v2, v8, :cond_0

    .line 67
    return-void

    .line 25
    :cond_0
    invoke-virtual {v6, v2}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroup(I)Lcom/tunnelworkshop/postern/ProxyGroup;

    move-result-object v5

    .line 27
    .local v5, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    const-string v8, "ProxyGroup %s added\n"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/ProxyGroup;->getPgname()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "dbg":Ljava/lang/String;
    const-string v8, "Postern"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyGroupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "btn":Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    const v8, 0x7f02000c

    invoke-virtual {v0, v8}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setImageRes(I)V

    .line 33
    invoke-virtual {v0, v5}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 35
    const-string v8, "%s%d: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyGroupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f040028

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 37
    add-int/lit8 v10, v2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x2

    .line 38
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/ProxyGroup;->getPgname()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 35
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "text":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText1(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/ProxyGroup;->getOptionCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 42
    const-string v7, ""

    .line 51
    :goto_1
    invoke-virtual {v0, v7}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText2(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v8, Lcom/tunnelworkshop/postern/ProxyGroupFragment$1;

    invoke-direct {v8, p0}, Lcom/tunnelworkshop/postern/ProxyGroupFragment$1;-><init>(Lcom/tunnelworkshop/postern/ProxyGroupFragment;)V

    invoke-virtual {v0, v8}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/ProxyGroup;->getOptionCount()I

    move-result v8

    if-ne v8, v13, :cond_2

    .line 44
    invoke-virtual {v5, v12}, Lcom/tunnelworkshop/postern/ProxyGroup;->getOption(I)Lcom/tunnelworkshop/postern/ProxyGroupOption;

    move-result-object v4

    .line 45
    .local v4, "option":Lcom/tunnelworkshop/postern/ProxyGroupOption;
    const-string v8, "%s"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyGroupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ProxyGroupOption;->getStringID()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 46
    goto :goto_1

    .line 47
    .end local v4    # "option":Lcom/tunnelworkshop/postern/ProxyGroupOption;
    :cond_2
    invoke-virtual {v5, v12}, Lcom/tunnelworkshop/postern/ProxyGroup;->getOption(I)Lcom/tunnelworkshop/postern/ProxyGroupOption;

    move-result-object v4

    .line 48
    .restart local v4    # "option":Lcom/tunnelworkshop/postern/ProxyGroupOption;
    const-string v8, "%s ..."

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyGroupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ProxyGroupOption;->getStringID()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tunnelworkshop/postern/ProxyGroupFragment;->putPgIntoView(Landroid/view/View;)V

    .line 77
    return-object v0
.end method
