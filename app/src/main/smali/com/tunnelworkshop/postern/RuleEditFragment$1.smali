.class Lcom/tunnelworkshop/postern/RuleEditFragment$1;
.super Ljava/lang/Object;
.source "RuleEditFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/RuleEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/RuleEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 173
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4, p3}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$0(Lcom/tunnelworkshop/postern/RuleEditFragment;I)V

    .line 174
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$1(Lcom/tunnelworkshop/postern/RuleEditFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f07002c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 175
    .local v1, "checkBox":Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$1(Lcom/tunnelworkshop/postern/RuleEditFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f07002b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 176
    .local v3, "spinner":Landroid/widget/Spinner;
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 177
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrEditRule()Lcom/tunnelworkshop/postern/RuleGroup;

    move-result-object v2

    .line 179
    .local v2, "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$2(Lcom/tunnelworkshop/postern/RuleEditFragment;)I

    move-result v4

    if-nez v4, :cond_1

    .line 180
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 181
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$3(Lcom/tunnelworkshop/postern/RuleEditFragment;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$2(Lcom/tunnelworkshop/postern/RuleEditFragment;)I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 184
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 185
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$3(Lcom/tunnelworkshop/postern/RuleEditFragment;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 186
    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 188
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4, v7}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$4(Lcom/tunnelworkshop/postern/RuleEditFragment;Z)V

    .line 189
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 190
    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 191
    :cond_2
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4, v2}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$5(Lcom/tunnelworkshop/postern/RuleEditFragment;Lcom/tunnelworkshop/postern/RuleGroup;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$2(Lcom/tunnelworkshop/postern/RuleEditFragment;)I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 193
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 194
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    .line 196
    :cond_4
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$2(Lcom/tunnelworkshop/postern/RuleEditFragment;)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 197
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 198
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 199
    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 201
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4, v7}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$4(Lcom/tunnelworkshop/postern/RuleEditFragment;Z)V

    .line 202
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 203
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4, v2}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$5(Lcom/tunnelworkshop/postern/RuleEditFragment;Lcom/tunnelworkshop/postern/RuleGroup;)V

    goto :goto_0

    .line 204
    :cond_5
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$2(Lcom/tunnelworkshop/postern/RuleEditFragment;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 205
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 206
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 209
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4, v6}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$4(Lcom/tunnelworkshop/postern/RuleEditFragment;Z)V

    .line 210
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/RuleGroup;->getAction()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 211
    iget-object v4, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$1;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    invoke-static {v4, v2}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$6(Lcom/tunnelworkshop/postern/RuleEditFragment;Lcom/tunnelworkshop/postern/RuleGroup;)V

    goto/16 :goto_0
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
    .line 218
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
