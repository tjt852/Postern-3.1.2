.class Lcom/tunnelworkshop/postern/RuleFragment$2$2;
.super Ljava/lang/Object;
.source "RuleFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleFragment$2$2;->this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 236
    const-string v0, "Postern"

    const-string v1, "Menu Dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleFragment$2$2;->this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;

    invoke-static {v0}, Lcom/tunnelworkshop/postern/RuleFragment$2;->access$0(Lcom/tunnelworkshop/postern/RuleFragment$2;)Lcom/tunnelworkshop/postern/RuleFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/tunnelworkshop/postern/RuleFragment;->access$4(Lcom/tunnelworkshop/postern/RuleFragment;)Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    move-result-object v0

    iget-object v1, p0, Lcom/tunnelworkshop/postern/RuleFragment$2$2;->this$1:Lcom/tunnelworkshop/postern/RuleFragment$2;

    invoke-static {v1}, Lcom/tunnelworkshop/postern/RuleFragment$2;->access$0(Lcom/tunnelworkshop/postern/RuleFragment$2;)Lcom/tunnelworkshop/postern/RuleFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/tunnelworkshop/postern/RuleFragment;->access$5(Lcom/tunnelworkshop/postern/RuleFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setBackgroundColor(I)V

    .line 239
    return-void
.end method
