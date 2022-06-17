.class Lcom/tunnelworkshop/postern/RuleFragment$2$1;
.super Ljava/lang/Object;
.source "RuleFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/RuleFragment$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/RuleFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleFragment$2$1;->this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 200
    iget-object v3, p0, Lcom/tunnelworkshop/postern/RuleFragment$2$1;->this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/RuleFragment$2;->access$0(Lcom/tunnelworkshop/postern/RuleFragment$2;)Lcom/tunnelworkshop/postern/RuleFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 201
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrEditRule()Lcom/tunnelworkshop/postern/RuleGroup;

    move-result-object v2

    .line 203
    .local v2, "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 230
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 205
    :pswitch_0
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RuleGroup;->getIndex()I

    move-result v1

    .line 207
    .local v1, "i":I
    if-nez v1, :cond_0

    .line 208
    const/4 v1, -0x1

    .line 214
    :goto_1
    invoke-virtual {v0, v7}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrEditRule(Lcom/tunnelworkshop/postern/RuleGroup;)V

    .line 215
    invoke-virtual {v0, v5, v1}, Lcom/tunnelworkshop/postern/PosternApp;->setRuleEdit(II)V

    .line 216
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleFragment$2$1;->this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleFragment$2;->access$0(Lcom/tunnelworkshop/postern/RuleFragment$2;)Lcom/tunnelworkshop/postern/RuleFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/tunnelworkshop/postern/RuleFragment$2$1;->this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/RuleFragment$2;->access$0(Lcom/tunnelworkshop/postern/RuleFragment$2;)Lcom/tunnelworkshop/postern/RuleFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/tunnelworkshop/postern/RuleFragment;->access$2(Lcom/tunnelworkshop/postern/RuleFragment;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    check-cast v2, Lcom/tunnelworkshop/postern/RuleGroup;

    .line 211
    .restart local v2    # "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RuleGroup;->getId()I

    move-result v1

    goto :goto_1

    .line 219
    .end local v1    # "i":I
    :pswitch_1
    invoke-virtual {v0, v7}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrEditRule(Lcom/tunnelworkshop/postern/RuleGroup;)V

    .line 220
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RuleGroup;->getId()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Lcom/tunnelworkshop/postern/PosternApp;->setRuleEdit(II)V

    .line 221
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleFragment$2$1;->this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleFragment$2;->access$0(Lcom/tunnelworkshop/postern/RuleFragment$2;)Lcom/tunnelworkshop/postern/RuleFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    goto :goto_0

    .line 224
    :pswitch_2
    iget-object v3, p0, Lcom/tunnelworkshop/postern/RuleFragment$2$1;->this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/RuleFragment$2;->access$0(Lcom/tunnelworkshop/postern/RuleFragment$2;)Lcom/tunnelworkshop/postern/RuleFragment;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RuleGroup;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/tunnelworkshop/postern/RuleFragment;->access$3(Lcom/tunnelworkshop/postern/RuleFragment;I)I

    .line 225
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->saveConfiguration()V

    .line 227
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleFragment$2$1;->this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleFragment$2;->access$0(Lcom/tunnelworkshop/postern/RuleFragment$2;)Lcom/tunnelworkshop/postern/RuleFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x7f070034
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
