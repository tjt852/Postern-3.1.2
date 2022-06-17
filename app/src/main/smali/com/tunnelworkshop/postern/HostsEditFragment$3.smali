.class Lcom/tunnelworkshop/postern/HostsEditFragment$3;
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
    iput-object p1, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/HostsEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 104
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    iget-object v2, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrHosts()Lcom/tunnelworkshop/postern/Hosts;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/Hosts;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tunnelworkshop/postern/HostsEditFragment;->access$1(Lcom/tunnelworkshop/postern/HostsEditFragment;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/tunnelworkshop/postern/HostsManager;->getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;

    move-result-object v1

    .line 108
    .local v1, "hostsMgr":Lcom/tunnelworkshop/postern/HostsManager;
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/HostsManager;->refreshHostsTotalCount()V

    .line 109
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/HostsManager;->getHostOffset()I

    move-result v2

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/tunnelworkshop/postern/HostsManager;->refreshHosts(II)V

    .line 111
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->saveConfiguration()V

    .line 113
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/tunnelworkshop/postern/HostsEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/HostsEditFragment;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/HostsEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 114
    return-void
.end method
