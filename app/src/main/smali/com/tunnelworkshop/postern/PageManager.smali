.class public Lcom/tunnelworkshop/postern/PageManager;
.super Ljava/lang/Object;
.source "PageManager.java"


# static fields
.field public static final PAGE_DNS_EDIT:I = 0x7

.field public static final PAGE_EXPORT:I = 0x2

.field public static final PAGE_HOSTS_EDIT:I = 0xd

.field public static final PAGE_HOSTS_LIST:I = 0xc

.field public static final PAGE_IMPORT:I = 0x1

.field public static final PAGE_NONE:I = 0x0

.field public static final PAGE_PROXY_CHAIN_EDIT:I = 0x4

.field public static final PAGE_PROXY_CHAIN_LIST:I = 0x3

.field public static final PAGE_PROXY_GROUP_EDIT:I = 0xb

.field public static final PAGE_PROXY_GROUP_LIST:I = 0xa

.field public static final PAGE_RULE_EDIT:I = 0x6

.field public static final PAGE_RULE_LIST:I = 0x5

.field public static final PAGE_SNIFFER_DETAIL:I = 0x9

.field public static final PAGE_SNIFFER_LIST:I = 0x8

.field private static instance:Lcom/tunnelworkshop/postern/PageManager;


# instance fields
.field private fragment:Landroid/app/Fragment;

.field private page:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/tunnelworkshop/postern/PageManager;->instance:Lcom/tunnelworkshop/postern/PageManager;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/tunnelworkshop/postern/PageManager;->page:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    .line 29
    return-void
.end method

.method public static getPageManager()Lcom/tunnelworkshop/postern/PageManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/tunnelworkshop/postern/PageManager;->instance:Lcom/tunnelworkshop/postern/PageManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/tunnelworkshop/postern/PageManager;

    invoke-direct {v0}, Lcom/tunnelworkshop/postern/PageManager;-><init>()V

    sput-object v0, Lcom/tunnelworkshop/postern/PageManager;->instance:Lcom/tunnelworkshop/postern/PageManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/tunnelworkshop/postern/PageManager;->instance:Lcom/tunnelworkshop/postern/PageManager;

    return-object v0
.end method


# virtual methods
.method public backPage(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "prevPage":I
    iget v1, p0, Lcom/tunnelworkshop/postern/PageManager;->page:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 103
    const/4 v0, 0x3

    .line 111
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 113
    const/4 v1, 0x1

    .line 115
    :goto_1
    return v1

    .line 104
    :cond_1
    iget v1, p0, Lcom/tunnelworkshop/postern/PageManager;->page:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 105
    const/4 v0, 0x5

    goto :goto_0

    .line 106
    :cond_2
    iget v1, p0, Lcom/tunnelworkshop/postern/PageManager;->page:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 107
    const/16 v0, 0x8

    goto :goto_0

    .line 108
    :cond_3
    iget v1, p0, Lcom/tunnelworkshop/postern/PageManager;->page:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 109
    const/16 v0, 0xa

    goto :goto_0

    .line 115
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/tunnelworkshop/postern/PageManager;->page:I

    return v0
.end method

.method public setPage(Landroid/app/Activity;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "page"    # I

    .prologue
    .line 41
    iput p2, p0, Lcom/tunnelworkshop/postern/PageManager;->page:I

    .line 43
    packed-switch p2, :pswitch_data_0

    .line 82
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    .line 89
    :goto_1
    return-void

    .line 45
    :pswitch_1
    new-instance v1, Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/ImportFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 48
    :pswitch_2
    new-instance v1, Lcom/tunnelworkshop/postern/ProxyFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/ProxyFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 51
    :pswitch_3
    new-instance v1, Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/ProxyEditFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 54
    :pswitch_4
    new-instance v1, Lcom/tunnelworkshop/postern/RuleFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/RuleFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 57
    :pswitch_5
    new-instance v1, Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/RuleEditFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 60
    :pswitch_6
    new-instance v1, Lcom/tunnelworkshop/postern/DnsFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/DnsFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 63
    :pswitch_7
    new-instance v1, Lcom/tunnelworkshop/postern/SnifferFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/SnifferFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 66
    :pswitch_8
    new-instance v1, Lcom/tunnelworkshop/postern/SnifferViewFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/SnifferViewFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 69
    :pswitch_9
    new-instance v1, Lcom/tunnelworkshop/postern/ProxyGroupFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/ProxyGroupFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 72
    :pswitch_a
    new-instance v1, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/ProxyGroupEditFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 75
    :pswitch_b
    new-instance v1, Lcom/tunnelworkshop/postern/HostsFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/HostsFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 78
    :pswitch_c
    new-instance v1, Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/HostsEditFragment;-><init>()V

    iput-object v1, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 86
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 87
    const v2, 0x7f070005

    iget-object v3, p0, Lcom/tunnelworkshop/postern/PageManager;->fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
