.class public Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;
.super Landroid/app/Fragment;
.source "ProxyGroupEditFragment.java"


# instance fields
.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 18
    return-void
.end method

.method private native setproxygroup(Ljava/lang/String;I)I
.end method


# virtual methods
.method public backPressed()V
    .locals 5

    .prologue
    .line 59
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;->rootView:Landroid/view/View;

    const v4, 0x7f070026

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 60
    .local v2, "spinnerOptions":Landroid/widget/Spinner;
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 61
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrEditPG()Lcom/tunnelworkshop/postern/ProxyGroup;

    move-result-object v1

    .line 63
    .local v1, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/ProxyGroup;->getPgname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;->setproxygroup(Ljava/lang/String;I)I

    .line 65
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupManager()Lcom/tunnelworkshop/postern/ProxyGroupManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->refreshProxyGroup()V

    .line 66
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->saveConfiguration()V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 24
    const v9, 0x7f03000a

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 25
    .local v6, "rootView":Landroid/view/View;
    iput-object v6, p0, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;->rootView:Landroid/view/View;

    .line 27
    const v9, 0x7f070025

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 28
    .local v2, "editProxyGroupName":Landroid/widget/EditText;
    const v9, 0x7f070026

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 29
    .local v7, "spinnerOptions":Landroid/widget/Spinner;
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tunnelworkshop/postern/PosternApp;

    .line 30
    .local v1, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrEditPG()Lcom/tunnelworkshop/postern/ProxyGroup;

    move-result-object v5

    .line 32
    .local v5, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/ProxyGroup;->getPgname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 35
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x1090008

    invoke-direct {v0, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 36
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v9, 0x1090009

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 38
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/ProxyGroup;->getOptionCount()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 52
    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/ProxyGroup;->getSelect()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 55
    return-object v6

    .line 40
    :cond_0
    invoke-virtual {v5, v3}, Lcom/tunnelworkshop/postern/ProxyGroup;->getOption(I)Lcom/tunnelworkshop/postern/ProxyGroupOption;

    move-result-object v4

    .line 42
    .local v4, "option":Lcom/tunnelworkshop/postern/ProxyGroupOption;
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ProxyGroupOption;->getStringID()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "str":Ljava/lang/String;
    iget v9, v4, Lcom/tunnelworkshop/postern/ProxyGroupOption;->action:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 44
    iget v9, v4, Lcom/tunnelworkshop/postern/ProxyGroupOption;->action:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    .line 45
    iget v9, v4, Lcom/tunnelworkshop/postern/ProxyGroupOption;->action:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_2

    .line 46
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v4, Lcom/tunnelworkshop/postern/ProxyGroupOption;->pcname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 50
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
