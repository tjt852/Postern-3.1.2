.class Lcom/tunnelworkshop/postern/ProxyEditFragment$4;
.super Ljava/lang/Object;
.source "ProxyEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/ProxyEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/ProxyEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$4;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$4;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 354
    return-void
.end method
