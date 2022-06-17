.class Lcom/tunnelworkshop/postern/DnsFragment$1;
.super Ljava/lang/Object;
.source "DnsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/DnsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/DnsFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/DnsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/DnsFragment$1;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 59
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/tunnelworkshop/postern/DnsFragment$1;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    invoke-static {v2}, Lcom/tunnelworkshop/postern/DnsFragment;->access$0(Lcom/tunnelworkshop/postern/DnsFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 61
    .local v1, "dnsEditText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method
