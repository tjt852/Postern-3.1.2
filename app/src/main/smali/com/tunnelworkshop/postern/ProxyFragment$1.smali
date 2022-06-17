.class Lcom/tunnelworkshop/postern/ProxyFragment$1;
.super Ljava/lang/Object;
.source "ProxyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/ProxyFragment;->putPcIntoView(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ProxyFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyFragment;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    move-object v1, p1

    check-cast v1, Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    .line 60
    .local v1, "btn":Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tunnelworkshop/postern/ProxyChain;

    .line 61
    .local v2, "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ProxyFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyFragment;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 63
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0, v2}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrEditPC(Lcom/tunnelworkshop/postern/ProxyChain;)V

    .line 65
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tunnelworkshop/postern/ProxyFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyFragment;

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ProxyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 66
    return-void
.end method
