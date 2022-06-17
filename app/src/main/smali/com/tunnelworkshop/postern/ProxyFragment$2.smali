.class Lcom/tunnelworkshop/postern/ProxyFragment$2;
.super Ljava/lang/Object;
.source "ProxyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/ProxyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/ProxyFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/ProxyFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ProxyFragment$2;->this$0:Lcom/tunnelworkshop/postern/ProxyFragment;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ProxyFragment$2;->this$0:Lcom/tunnelworkshop/postern/ProxyFragment;

    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/ProxyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 88
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrEditPC(Lcom/tunnelworkshop/postern/ProxyChain;)V

    .line 90
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tunnelworkshop/postern/ProxyFragment$2;->this$0:Lcom/tunnelworkshop/postern/ProxyFragment;

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/ProxyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 91
    return-void
.end method
