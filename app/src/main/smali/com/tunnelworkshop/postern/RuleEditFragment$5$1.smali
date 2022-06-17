.class Lcom/tunnelworkshop/postern/RuleEditFragment$5$1;
.super Ljava/lang/Object;
.source "RuleEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/RuleEditFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tunnelworkshop/postern/RuleEditFragment$5;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/RuleEditFragment$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/RuleEditFragment$5;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 400
    iget-object v2, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/RuleEditFragment$5;

    invoke-static {v2}, Lcom/tunnelworkshop/postern/RuleEditFragment$5;->access$0(Lcom/tunnelworkshop/postern/RuleEditFragment$5;)Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 401
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrEditRule()Lcom/tunnelworkshop/postern/RuleGroup;

    move-result-object v1

    .line 403
    .local v1, "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    iget-object v2, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/RuleEditFragment$5;

    invoke-static {v2}, Lcom/tunnelworkshop/postern/RuleEditFragment$5;->access$0(Lcom/tunnelworkshop/postern/RuleEditFragment$5;)Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/RuleGroup;->getId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$11(Lcom/tunnelworkshop/postern/RuleEditFragment;I)I

    .line 404
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->saveConfiguration()V

    .line 406
    iget-object v2, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$5$1;->this$1:Lcom/tunnelworkshop/postern/RuleEditFragment$5;

    invoke-static {v2}, Lcom/tunnelworkshop/postern/RuleEditFragment$5;->access$0(Lcom/tunnelworkshop/postern/RuleEditFragment$5;)Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$10(Lcom/tunnelworkshop/postern/RuleEditFragment;)V

    .line 407
    return-void
.end method
