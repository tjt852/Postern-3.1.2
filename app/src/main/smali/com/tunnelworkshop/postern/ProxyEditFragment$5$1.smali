.class Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;
.super Ljava/lang/Object;
.source "ProxyEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tunnelworkshop/postern/ProxyEditFragment$5;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/ProxyEditFragment$5;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v6, 0x1

    .line 371
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/ProxyEditFragment$5;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->access$0(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)Lcom/tunnelworkshop/postern/ProxyEditFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 372
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrEditPC()Lcom/tunnelworkshop/postern/ProxyChain;

    move-result-object v1

    .line 375
    .local v1, "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/ProxyEditFragment$5;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->access$0(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)Lcom/tunnelworkshop/postern/ProxyEditFragment;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/ProxyChain;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->delpc(Ljava/lang/String;)I

    move-result v2

    .line 376
    .local v2, "ret":I
    if-nez v2, :cond_0

    .line 377
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainManager()Lcom/tunnelworkshop/postern/ProxyChainManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyChainManager;->refreshProxyChain()V

    .line 378
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->saveConfiguration()V

    .line 380
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/ProxyEditFragment$5;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->access$0(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)Lcom/tunnelworkshop/postern/ProxyEditFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 391
    :goto_0
    return-void

    .line 381
    :cond_0
    if-lez v2, :cond_1

    .line 382
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/ProxyEditFragment$5;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->access$0(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)Lcom/tunnelworkshop/postern/ProxyEditFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 383
    iget-object v4, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/ProxyEditFragment$5;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->access$0(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)Lcom/tunnelworkshop/postern/ProxyEditFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 384
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 386
    :cond_1
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/ProxyEditFragment$5;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->access$0(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)Lcom/tunnelworkshop/postern/ProxyEditFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 387
    iget-object v4, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/ProxyEditFragment$5;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->access$0(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)Lcom/tunnelworkshop/postern/ProxyEditFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 388
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
