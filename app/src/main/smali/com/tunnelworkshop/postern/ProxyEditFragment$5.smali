.class Lcom/tunnelworkshop/postern/ProxyEditFragment$5;
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
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)Lcom/tunnelworkshop/postern/ProxyEditFragment;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 366
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 367
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 368
    const v1, 0x7f040027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 369
    const v1, 0x7f040004

    new-instance v2, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;

    invoke-direct {v2, p0}, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$1;-><init>(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    const v1, 0x7f040005

    new-instance v2, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$2;

    invoke-direct {v2, p0}, Lcom/tunnelworkshop/postern/ProxyEditFragment$5$2;-><init>(Lcom/tunnelworkshop/postern/ProxyEditFragment$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 398
    return-void
.end method
