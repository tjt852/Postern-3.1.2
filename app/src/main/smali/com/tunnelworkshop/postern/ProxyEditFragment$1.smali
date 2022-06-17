.class Lcom/tunnelworkshop/postern/ProxyEditFragment$1;
.super Ljava/lang/Object;
.source "ProxyEditFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/ProxyEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/ProxyEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 165
    iget-object v5, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v5, p3}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$0(Lcom/tunnelworkshop/postern/ProxyEditFragment;I)V

    .line 166
    const-string v5, "proxy type %d"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v7}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$1(Lcom/tunnelworkshop/postern/ProxyEditFragment;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "dbg":Ljava/lang/String;
    const-string v5, "Postern"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v5, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v5, p3}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$2(Lcom/tunnelworkshop/postern/ProxyEditFragment;I)I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 170
    .local v2, "enableEncSpinner":Z
    :goto_0
    iget-object v4, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 171
    .local v3, "spinnerEnc":Landroid/widget/Spinner;
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 173
    iget-object v4, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f070021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 174
    .local v0, "chkboxOta":Landroid/widget/CheckBox;
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 175
    return-void

    .end local v0    # "chkboxOta":Landroid/widget/CheckBox;
    .end local v2    # "enableEncSpinner":Z
    .end local v3    # "spinnerEnc":Landroid/widget/Spinner;
    :cond_0
    move v2, v4

    .line 169
    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
