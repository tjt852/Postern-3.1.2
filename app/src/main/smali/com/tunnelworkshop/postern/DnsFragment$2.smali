.class Lcom/tunnelworkshop/postern/DnsFragment$2;
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
    iput-object p1, p0, Lcom/tunnelworkshop/postern/DnsFragment$2;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 73
    iget-object v3, p0, Lcom/tunnelworkshop/postern/DnsFragment$2;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/DnsFragment;->access$0(Lcom/tunnelworkshop/postern/DnsFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 74
    .local v1, "dnsCheckBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/tunnelworkshop/postern/DnsFragment$2;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/DnsFragment;->access$0(Lcom/tunnelworkshop/postern/DnsFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 76
    .local v2, "dnsEditText":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tunnelworkshop/postern/PosternUtils;->validateIp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/tunnelworkshop/postern/DnsFragment$2;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/DnsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 78
    iget-object v4, p0, Lcom/tunnelworkshop/postern/DnsFragment$2;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/DnsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/tunnelworkshop/postern/DnsFragment$2;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcom/tunnelworkshop/postern/DnsFragment;->access$1(Lcom/tunnelworkshop/postern/DnsFragment;ILjava/lang/String;)I

    .line 89
    :goto_1
    iget-object v3, p0, Lcom/tunnelworkshop/postern/DnsFragment$2;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/DnsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 90
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->saveConfiguration()V

    .line 92
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tunnelworkshop/postern/DnsFragment$2;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/DnsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    goto :goto_0

    .line 87
    .end local v0    # "appState":Lcom/tunnelworkshop/postern/PosternApp;
    :cond_1
    iget-object v3, p0, Lcom/tunnelworkshop/postern/DnsFragment$2;->this$0:Lcom/tunnelworkshop/postern/DnsFragment;

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/tunnelworkshop/postern/DnsFragment;->access$1(Lcom/tunnelworkshop/postern/DnsFragment;ILjava/lang/String;)I

    goto :goto_1
.end method
