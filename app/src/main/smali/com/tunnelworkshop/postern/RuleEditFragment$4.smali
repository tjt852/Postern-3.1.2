.class Lcom/tunnelworkshop/postern/RuleEditFragment$4;
.super Ljava/lang/Object;
.source "RuleEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/RuleEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/RuleEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$4;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 384
    const-string v0, "Postern"

    const-string v1, "calling rulefree"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$4;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v0}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$10(Lcom/tunnelworkshop/postern/RuleEditFragment;)V

    .line 387
    return-void
.end method
