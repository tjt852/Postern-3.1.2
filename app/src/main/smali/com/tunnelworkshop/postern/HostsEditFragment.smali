.class public Lcom/tunnelworkshop/postern/HostsEditFragment;
.super Landroid/app/Fragment;
.source "HostsEditFragment.java"


# instance fields
.field private fragmentRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/tunnelworkshop/postern/HostsEditFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tunnelworkshop/postern/HostsEditFragment;->fragmentRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tunnelworkshop/postern/HostsEditFragment;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/HostsEditFragment;->delhostip(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/tunnelworkshop/postern/HostsEditFragment;Ljava/lang/String;[B)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tunnelworkshop/postern/HostsEditFragment;->addhostip(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method private native addhostip(Ljava/lang/String;[B)I
.end method

.method private native delhostip(Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 30
    const v8, 0x7f030004

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 31
    .local v7, "rootView":Landroid/view/View;
    iput-object v7, p0, Lcom/tunnelworkshop/postern/HostsEditFragment;->fragmentRootView:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/HostsEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 34
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrHosts()Lcom/tunnelworkshop/postern/Hosts;

    move-result-object v6

    .line 36
    .local v6, "h":Lcom/tunnelworkshop/postern/Hosts;
    const v8, 0x7f07000d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 37
    .local v3, "btnsave":Landroid/widget/Button;
    const v8, 0x7f07000e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 38
    .local v1, "btncancel":Landroid/widget/Button;
    const v8, 0x7f07000f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 39
    .local v2, "btndel":Landroid/widget/Button;
    const v8, 0x7f07000b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 40
    .local v4, "eddomain":Landroid/widget/EditText;
    const v8, 0x7f07000c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 42
    .local v5, "edip":Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 43
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 45
    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/Hosts;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/Hosts;->getIp()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_0
    new-instance v8, Lcom/tunnelworkshop/postern/HostsEditFragment$1;

    invoke-direct {v8, p0}, Lcom/tunnelworkshop/postern/HostsEditFragment$1;-><init>(Lcom/tunnelworkshop/postern/HostsEditFragment;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v8, Lcom/tunnelworkshop/postern/HostsEditFragment$2;

    invoke-direct {v8, p0}, Lcom/tunnelworkshop/postern/HostsEditFragment$2;-><init>(Lcom/tunnelworkshop/postern/HostsEditFragment;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v8, Lcom/tunnelworkshop/postern/HostsEditFragment$3;

    invoke-direct {v8, p0}, Lcom/tunnelworkshop/postern/HostsEditFragment$3;-><init>(Lcom/tunnelworkshop/postern/HostsEditFragment;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object v7

    .line 48
    :cond_0
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
