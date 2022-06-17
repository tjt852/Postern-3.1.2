.class Lcom/tunnelworkshop/postern/ProxyGroupFragment$1;
.super Ljava/lang/Object;
.source "ProxyGroupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/ProxyGroupFragment;->putPgIntoView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/ProxyGroupFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/ProxyGroupFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ProxyGroupFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyGroupFragment;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    move-object v1, p1

    check-cast v1, Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    .line 56
    .local v1, "btn":Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tunnelworkshop/postern/ProxyGroup;

    .line 57
    .local v2, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ProxyGroupFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyGroupFragment;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyGroupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 59
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0, v2}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrEditPG(Lcom/tunnelworkshop/postern/ProxyGroup;)V

    .line 61
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tunnelworkshop/postern/ProxyGroupFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyGroupFragment;

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ProxyGroupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 62
    return-void
.end method
