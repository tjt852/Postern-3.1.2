.class Lcom/tunnelworkshop/postern/HostsFragment$4;
.super Ljava/lang/Object;
.source "HostsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/HostsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/HostsFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/HostsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/HostsFragment$4;->this$0:Lcom/tunnelworkshop/postern/HostsFragment;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/tunnelworkshop/postern/HostsFragment$4;->this$0:Lcom/tunnelworkshop/postern/HostsFragment;

    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/HostsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 119
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrHosts(Lcom/tunnelworkshop/postern/Hosts;)V

    .line 121
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tunnelworkshop/postern/HostsFragment$4;->this$0:Lcom/tunnelworkshop/postern/HostsFragment;

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/HostsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 122
    return-void
.end method
