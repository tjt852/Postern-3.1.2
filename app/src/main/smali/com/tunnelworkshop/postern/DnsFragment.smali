.class public Lcom/tunnelworkshop/postern/DnsFragment;
.super Landroid/app/Fragment;
.source "DnsFragment.java"


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

.method static synthetic access$0(Lcom/tunnelworkshop/postern/DnsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tunnelworkshop/postern/DnsFragment;->fragmentRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tunnelworkshop/postern/DnsFragment;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/tunnelworkshop/postern/DnsFragment;->setdns(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private native getdnsisauto()I
.end method

.method private native getdnsserver()[B
.end method

.method private native setdns(ILjava/lang/String;)I
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 31
    const v7, 0x7f030002

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 32
    .local v5, "rootView":Landroid/view/View;
    iput-object v5, p0, Lcom/tunnelworkshop/postern/DnsFragment;->fragmentRootView:Landroid/view/View;

    .line 34
    const v7, 0x7f070007

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 35
    .local v2, "dnsAutoCheckBox":Landroid/widget/CheckBox;
    const v7, 0x7f070008

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 36
    .local v3, "dnsEditText":Landroid/widget/EditText;
    const v7, 0x7f070009

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 37
    .local v6, "saveBtn":Landroid/widget/Button;
    const v7, 0x7f07000a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 39
    .local v0, "cancelBtn":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/DnsFragment;->getdnsserver()[B

    move-result-object v1

    .line 41
    .local v1, "dns":[B
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    .line 42
    .local v4, "ip":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v4    # "ip":Ljava/net/InetAddress;
    :goto_0
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/DnsFragment;->getdnsisauto()I

    move-result v7

    if-eqz v7, :cond_0

    .line 47
    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 55
    :goto_1
    new-instance v7, Lcom/tunnelworkshop/postern/DnsFragment$1;

    invoke-direct {v7, p0}, Lcom/tunnelworkshop/postern/DnsFragment$1;-><init>(Lcom/tunnelworkshop/postern/DnsFragment;)V

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v7, Lcom/tunnelworkshop/postern/DnsFragment$2;

    invoke-direct {v7, p0}, Lcom/tunnelworkshop/postern/DnsFragment$2;-><init>(Lcom/tunnelworkshop/postern/DnsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v7, Lcom/tunnelworkshop/postern/DnsFragment$3;

    invoke-direct {v7, p0}, Lcom/tunnelworkshop/postern/DnsFragment$3;-><init>(Lcom/tunnelworkshop/postern/DnsFragment;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-object v5

    .line 50
    :cond_0
    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1

    .line 43
    :catch_0
    move-exception v7

    goto :goto_0
.end method
