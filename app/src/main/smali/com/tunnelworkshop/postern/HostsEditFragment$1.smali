.class Lcom/tunnelworkshop/postern/HostsEditFragment$1;
.super Ljava/lang/Object;
.source "HostsEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/HostsEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/HostsEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 54
    iget-object v6, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-static {v6}, Lcom/tunnelworkshop/postern/HostsEditFragment;->access$0(Lcom/tunnelworkshop/postern/HostsEditFragment;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 55
    .local v2, "eddomain":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x100

    if-lt v6, v7, :cond_1

    .line 58
    :cond_0
    iget-object v6, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/HostsEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 59
    iget-object v7, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-virtual {v7}, Lcom/tunnelworkshop/postern/HostsEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f04004e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 60
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 90
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v6, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-static {v6}, Lcom/tunnelworkshop/postern/HostsEditFragment;->access$0(Lcom/tunnelworkshop/postern/HostsEditFragment;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 65
    .local v3, "edip":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "ip":Ljava/lang/String;
    invoke-static {v5}, Lcom/tunnelworkshop/postern/PosternUtils;->validateIp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 67
    iget-object v6, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/HostsEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 68
    iget-object v7, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-virtual {v7}, Lcom/tunnelworkshop/postern/HostsEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f04004f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 69
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v6, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/HostsEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 74
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrHosts()Lcom/tunnelworkshop/postern/Hosts;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 75
    iget-object v6, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrHosts()Lcom/tunnelworkshop/postern/Hosts;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tunnelworkshop/postern/Hosts;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tunnelworkshop/postern/HostsEditFragment;->access$1(Lcom/tunnelworkshop/postern/HostsEditFragment;Ljava/lang/String;)I

    .line 78
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/tunnelworkshop/postern/HostsEditFragment;->access$2(Lcom/tunnelworkshop/postern/HostsEditFragment;Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    invoke-static {}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;

    move-result-object v4

    .line 84
    .local v4, "hostsMgr":Lcom/tunnelworkshop/postern/HostsManager;
    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/HostsManager;->refreshHostsTotalCount()V

    .line 85
    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/HostsManager;->getHostOffset()I

    move-result v6

    const/16 v7, 0x14

    invoke-virtual {v4, v6, v7}, Lcom/tunnelworkshop/postern/HostsManager;->refreshHosts(II)V

    .line 87
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->saveConfiguration()V

    .line 89
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-virtual {v7}, Lcom/tunnelworkshop/postern/HostsEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 79
    .end local v4    # "hostsMgr":Lcom/tunnelworkshop/postern/HostsManager;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
