.class Lcom/tunnelworkshop/postern/SnifferFragment$2;
.super Ljava/lang/Object;
.source "SnifferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/SnifferFragment;->setViewByConn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/SnifferFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/SnifferFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/SnifferFragment$2;->this$0:Lcom/tunnelworkshop/postern/SnifferFragment;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    move-object v1, p1

    check-cast v1, Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    .line 206
    .local v1, "btn":Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    .line 207
    .local v2, "conn":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;
    iget-object v3, p0, Lcom/tunnelworkshop/postern/SnifferFragment$2;->this$0:Lcom/tunnelworkshop/postern/SnifferFragment;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 209
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0, v2}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrSnifferConn(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;)V

    .line 211
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tunnelworkshop/postern/SnifferFragment$2;->this$0:Lcom/tunnelworkshop/postern/SnifferFragment;

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 212
    return-void
.end method
