.class Lcom/tunnelworkshop/postern/RuleEditFragment$5;
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
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$5;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tunnelworkshop/postern/RuleEditFragment$5;)Lcom/tunnelworkshop/postern/RuleEditFragment;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$5;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 395
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$5;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 396
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 397
    const v1, 0x7f040048

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 398
    const v1, 0x7f040004

    new-instance v2, Lcom/tunnelworkshop/postern/RuleEditFragment$5$1;

    invoke-direct {v2, p0}, Lcom/tunnelworkshop/postern/RuleEditFragment$5$1;-><init>(Lcom/tunnelworkshop/postern/RuleEditFragment$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    const v1, 0x7f040005

    new-instance v2, Lcom/tunnelworkshop/postern/RuleEditFragment$5$2;

    invoke-direct {v2, p0}, Lcom/tunnelworkshop/postern/RuleEditFragment$5$2;-><init>(Lcom/tunnelworkshop/postern/RuleEditFragment$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 414
    return-void
.end method
