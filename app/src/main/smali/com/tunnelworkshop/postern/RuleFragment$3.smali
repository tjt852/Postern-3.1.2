.class Lcom/tunnelworkshop/postern/RuleFragment$3;
.super Ljava/lang/Object;
.source "RuleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/RuleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/RuleFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/RuleFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v3, p0, Lcom/tunnelworkshop/postern/RuleFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 262
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    iget-object v3, p0, Lcom/tunnelworkshop/postern/RuleFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/RuleFragment;->access$2(Lcom/tunnelworkshop/postern/RuleFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    const/4 v1, -0x1

    .line 269
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrEditRule(Lcom/tunnelworkshop/postern/RuleGroup;)V

    .line 270
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/tunnelworkshop/postern/PosternApp;->setRuleEdit(II)V

    .line 272
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    .line 273
    return-void

    .line 265
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/tunnelworkshop/postern/RuleFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/RuleFragment;->access$2(Lcom/tunnelworkshop/postern/RuleFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleFragment;->access$2(Lcom/tunnelworkshop/postern/RuleFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tunnelworkshop/postern/RuleGroup;

    .line 266
    .local v2, "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RuleGroup;->getId()I

    move-result v1

    .restart local v1    # "i":I
    goto :goto_0
.end method
