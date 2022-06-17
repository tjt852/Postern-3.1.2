.class Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;
.super Landroid/os/AsyncTask;
.source "ImportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tunnelworkshop/postern/ImportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncURL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private parentDir:Ljava/io/File;

.field final synthetic this$0:Lcom/tunnelworkshop/postern/ImportFragment;

.field private tmpFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tunnelworkshop/postern/ImportFragment;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2, "parentDir"    # Ljava/io/File;
    .param p3, "tmpFileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 333
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    .line 334
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 330
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->parentDir:Ljava/io/File;

    .line 331
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->tmpFileName:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->parentDir:Ljava/io/File;

    .line 336
    iput-object p3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->tmpFileName:Ljava/lang/String;

    .line 337
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 12
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 342
    const/4 v1, 0x0

    .line 345
    .local v1, "dlLength":I
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .local v7, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 356
    .local v4, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->parentDir:Ljava/io/File;

    iget-object v9, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->tmpFileName:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    .local v3, "file":Ljava/io/File;
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 359
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 362
    .local v0, "buffer":[B
    :cond_0
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 373
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 374
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 381
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .end local v0    # "buffer":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "read":I
    .end local v7    # "url":Ljava/net/URL;
    :goto_0
    return-object v8

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/net/MalformedURLException;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 352
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 353
    .local v2, "e":Ljava/io/IOException;
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 363
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v6    # "read":I
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v5, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 364
    add-int/2addr v1, v6

    .line 366
    const/high16 v8, 0x200000

    if-le v1, v8, :cond_0

    .line 367
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 368
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 370
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v8

    goto :goto_0

    .line 375
    .end local v0    # "buffer":[B
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "read":I
    :catch_2
    move-exception v2

    .line 376
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 377
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 378
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "i"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x1

    .line 394
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ImportFragment;->access$0(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 395
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ImportFragment;->access$1(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 396
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ImportFragment;->access$2(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 397
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ImportFragment;->access$3(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 401
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-nez v3, :cond_2

    .line 404
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->parentDir:Ljava/io/File;

    iget-object v6, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->tmpFileName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/tunnelworkshop/postern/ImportFragment;->access$4(Lcom/tunnelworkshop/postern/ImportFragment;Ljava/io/File;)I

    move-result v2

    .line 406
    .local v2, "ret":I
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->tmpFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 410
    :cond_0
    if-eqz v2, :cond_1

    .line 411
    const v0, 0x7f040013

    .line 426
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "ret":I
    .local v0, "failStrId":I
    :goto_0
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tunnelworkshop/postern/ImportFragment;->access$6(Lcom/tunnelworkshop/postern/ImportFragment;Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;)V

    .line 428
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 429
    iget-object v4, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 430
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 431
    return-void

    .line 413
    .end local v0    # "failStrId":I
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "ret":I
    :cond_1
    const v0, 0x7f04000d

    .line 414
    .restart local v0    # "failStrId":I
    goto :goto_0

    .end local v0    # "failStrId":I
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "ret":I
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-nez v3, :cond_3

    .line 415
    const v0, 0x7f04000f

    .line 416
    .restart local v0    # "failStrId":I
    goto :goto_0

    .end local v0    # "failStrId":I
    :cond_3
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-nez v3, :cond_4

    .line 417
    const v0, 0x7f040010

    .line 418
    .restart local v0    # "failStrId":I
    goto :goto_0

    .end local v0    # "failStrId":I
    :cond_4
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-nez v3, :cond_5

    .line 419
    const v0, 0x7f040011

    .line 420
    .restart local v0    # "failStrId":I
    goto :goto_0

    .end local v0    # "failStrId":I
    :cond_5
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-nez v3, :cond_6

    .line 421
    const v0, 0x7f040012

    .line 422
    .restart local v0    # "failStrId":I
    goto :goto_0

    .line 423
    .end local v0    # "failStrId":I
    :cond_6
    const v0, 0x7f040014

    .restart local v0    # "failStrId":I
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v0}, Lcom/tunnelworkshop/postern/ImportFragment;->access$0(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v0}, Lcom/tunnelworkshop/postern/ImportFragment;->access$1(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v0}, Lcom/tunnelworkshop/postern/ImportFragment;->access$2(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURL;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v0}, Lcom/tunnelworkshop/postern/ImportFragment;->access$3(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 390
    return-void
.end method
