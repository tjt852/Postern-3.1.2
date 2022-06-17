.class Lcom/tunnelworkshop/postern/RuleEditFragment$2;
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
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$2;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 227
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$2;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$7(Lcom/tunnelworkshop/postern/RuleEditFragment;Z)V

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$2;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$7(Lcom/tunnelworkshop/postern/RuleEditFragment;Z)V

    goto :goto_0
.end method
