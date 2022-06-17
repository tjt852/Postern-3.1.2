.class Lcom/tunnelworkshop/postern/RuleFragment$2;
.super Ljava/lang/Object;
.source "RuleFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleFragment$2;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tunnelworkshop/postern/RuleFragment$2;)Lcom/tunnelworkshop/postern/RuleFragment;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleFragment$2;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    move-object v2, p1

    check-cast v2, Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    .line 184
    .local v2, "btn":Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tunnelworkshop/postern/RuleGroup;

    .line 185
    .local v5, "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleFragment$2;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 187
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0, v5}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrEditRule(Lcom/tunnelworkshop/postern/RuleGroup;)V

    .line 188
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleFragment$2;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    invoke-static {v6, v2}, Lcom/tunnelworkshop/postern/RuleFragment;->access$0(Lcom/tunnelworkshop/postern/RuleFragment;Lcom/tunnelworkshop/postern/RelativeLayoutButton;)V

    .line 189
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleFragment$2;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/tunnelworkshop/postern/RuleFragment;->access$1(Lcom/tunnelworkshop/postern/RuleFragment;I)V

    .line 190
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 191
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    instance-of v6, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_0

    .line 192
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleFragment$2;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    invoke-static {v6, v7}, Lcom/tunnelworkshop/postern/RuleFragment;->access$1(Lcom/tunnelworkshop/postern/RuleFragment;I)V

    .line 194
    :cond_0
    const-string v6, "#FFC0C0C0"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setBackgroundColor(I)V

    .line 196
    new-instance v4, Landroid/widget/PopupMenu;

    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleFragment$2;->this$0:Lcom/tunnelworkshop/postern/RuleFragment;

    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 197
    .local v4, "popupMenu":Landroid/widget/PopupMenu;
    new-instance v6, Lcom/tunnelworkshop/postern/RuleFragment$2$1;

    invoke-direct {v6, p0}, Lcom/tunnelworkshop/postern/RuleFragment$2$1;-><init>(Lcom/tunnelworkshop/postern/RuleFragment$2;)V

    invoke-virtual {v4, v6}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 233
    new-instance v6, Lcom/tunnelworkshop/postern/RuleFragment$2$2;

    invoke-direct {v6, p0}, Lcom/tunnelworkshop/postern/RuleFragment$2$2;-><init>(Lcom/tunnelworkshop/postern/RuleFragment$2;)V

    invoke-virtual {v4, v6}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 242
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 243
    .local v3, "inflater":Landroid/view/MenuInflater;
    const/high16 v6, 0x7f060000

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 244
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    .line 246
    const/4 v6, 0x1

    return v6
.end method
