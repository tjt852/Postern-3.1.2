.class public Lcom/tunnelworkshop/postern/HostsFragment;
.super Landroid/app/Fragment;
.source "HostsFragment.java"


# instance fields
.field private rootFragmentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 16
    return-void
.end method

.method private refreshHostipView()V
    .locals 10

    .prologue
    .line 22
    iget-object v6, p0, Lcom/tunnelworkshop/postern/HostsFragment;->rootFragmentView:Landroid/view/View;

    const v7, 0x7f070010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 23
    .local v5, "layout":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;

    move-result-object v3

    .line 25
    .local v3, "hostsMgr":Lcom/tunnelworkshop/postern/HostsManager;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 27
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsCount()I

    move-result v6

    if-lt v4, v6, :cond_0

    .line 54
    return-void

    .line 28
    :cond_0
    invoke-virtual {v3, v4}, Lcom/tunnelworkshop/postern/HostsManager;->getHosts(I)Lcom/tunnelworkshop/postern/Hosts;

    move-result-object v2

    .line 30
    .local v2, "h":Lcom/tunnelworkshop/postern/Hosts;
    const-string v6, "HostsIP added, %s --> %s\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/Hosts;->getDomain()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/Hosts;->getIp()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "dbg":Ljava/lang/String;
    const-string v6, "Postern"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/HostsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "btn":Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    const v6, 0x7f020007

    invoke-virtual {v0, v6}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setImageRes(I)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/Hosts;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText1(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/Hosts;->getIp()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText2(Ljava/lang/CharSequence;)V

    .line 39
    new-instance v6, Lcom/tunnelworkshop/postern/HostsFragment$1;

    invoke-direct {v6, p0}, Lcom/tunnelworkshop/postern/HostsFragment$1;-><init>(Lcom/tunnelworkshop/postern/HostsFragment;)V

    invoke-virtual {v0, v6}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 27
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 60
    const v6, 0x7f030005

    invoke-virtual {p1, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 61
    .local v5, "rootView":Landroid/view/View;
    const v6, 0x7f070010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 62
    .local v4, "layout":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;

    move-result-object v3

    .line 64
    .local v3, "hostsMgr":Lcom/tunnelworkshop/postern/HostsManager;
    iput-object v5, p0, Lcom/tunnelworkshop/postern/HostsFragment;->rootFragmentView:Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/HostsFragment;->refreshHostipView()V

    .line 69
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/HostsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, "btnPrevPage":Landroid/widget/Button;
    const v6, 0x7f040049

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    .line 71
    new-instance v6, Lcom/tunnelworkshop/postern/HostsFragment$2;

    invoke-direct {v6, p0}, Lcom/tunnelworkshop/postern/HostsFragment$2;-><init>(Lcom/tunnelworkshop/postern/HostsFragment;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/HostsManager;->getHostOffset()I

    move-result v6

    if-nez v6, :cond_0

    .line 89
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    :cond_0
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/HostsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, "btnNextPage":Landroid/widget/Button;
    const v6, 0x7f04004a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 94
    new-instance v6, Lcom/tunnelworkshop/postern/HostsFragment$3;

    invoke-direct {v6, p0}, Lcom/tunnelworkshop/postern/HostsFragment$3;-><init>(Lcom/tunnelworkshop/postern/HostsFragment;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/HostsManager;->getHostOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsTotalCount()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 110
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    :cond_1
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/HostsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "btnAdd":Landroid/widget/Button;
    const v6, 0x7f04004b

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 115
    new-instance v6, Lcom/tunnelworkshop/postern/HostsFragment$4;

    invoke-direct {v6, p0}, Lcom/tunnelworkshop/postern/HostsFragment$4;-><init>(Lcom/tunnelworkshop/postern/HostsFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    return-object v5
.end method
