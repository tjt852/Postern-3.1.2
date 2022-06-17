.class Lcom/tunnelworkshop/postern/ImportFragment$2;
.super Ljava/lang/Object;
.source "ImportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/ImportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/ImportFragment;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/ImportFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ImportFragment$2;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v2, p0, Lcom/tunnelworkshop/postern/ImportFragment$2;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v2}, Lcom/tunnelworkshop/postern/ImportFragment;->access$7(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 184
    .local v0, "urlEditText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "urlPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/tunnelworkshop/postern/ImportFragment$2;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    new-instance v3, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;

    iget-object v4, p0, Lcom/tunnelworkshop/postern/ImportFragment$2;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    iget-object v5, p0, Lcom/tunnelworkshop/postern/ImportFragment$2;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/tunnelworkshop/postern/PosternUtils;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".conf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;-><init>(Lcom/tunnelworkshop/postern/ImportFragment;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tunnelworkshop/postern/ImportFragment;->access$6(Lcom/tunnelworkshop/postern/ImportFragment;Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;)V

    .line 187
    iget-object v2, p0, Lcom/tunnelworkshop/postern/ImportFragment$2;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v2}, Lcom/tunnelworkshop/postern/ImportFragment;->access$8(Lcom/tunnelworkshop/postern/ImportFragment;)Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 188
    return-void
.end method
