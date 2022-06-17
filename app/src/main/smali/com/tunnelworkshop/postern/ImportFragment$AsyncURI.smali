.class Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;
.super Landroid/os/AsyncTask;
.source "ImportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tunnelworkshop/postern/ImportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncURI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
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

    .line 234
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    .line 235
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 231
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->parentDir:Ljava/io/File;

    .line 232
    iput-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->tmpFileName:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->parentDir:Ljava/io/File;

    .line 237
    iput-object p3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->tmpFileName:Ljava/lang/String;

    .line 238
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 12
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 241
    aget-object v7, p1, v10

    .line 242
    .local v7, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 246
    .local v1, "dlLength":I
    :try_start_0
    iget-object v8, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-virtual {v8}, Lcom/tunnelworkshop/postern/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 251
    .local v4, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->parentDir:Ljava/io/File;

    iget-object v9, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->tmpFileName:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .local v3, "file":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 254
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 257
    .local v0, "buffer":[B
    :cond_0
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 268
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 269
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 276
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .end local v0    # "buffer":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "read":I
    :goto_0
    return-object v8

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 258
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buffer":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v6    # "read":I
    :cond_1
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v5, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 259
    add-int/2addr v1, v6

    .line 261
    const/high16 v8, 0x200000

    if-le v1, v8, :cond_0

    .line 262
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 263
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 265
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    goto :goto_0

    .line 270
    .end local v0    # "buffer":[B
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "read":I
    :catch_1
    move-exception v2

    .line 271
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 272
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 273
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "i"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x1

    .line 289
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ImportFragment;->access$0(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 290
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ImportFragment;->access$1(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ImportFragment;->access$2(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v3}, Lcom/tunnelworkshop/postern/ImportFragment;->access$3(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-nez v3, :cond_2

    .line 299
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->parentDir:Ljava/io/File;

    iget-object v6, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->tmpFileName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/tunnelworkshop/postern/ImportFragment;->access$4(Lcom/tunnelworkshop/postern/ImportFragment;Ljava/io/File;)I

    move-result v2

    .line 301
    .local v2, "ret":I
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->tmpFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 305
    :cond_0
    if-eqz v2, :cond_1

    .line 306
    const v0, 0x7f040013

    .line 321
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "ret":I
    .local v0, "failStrId":I
    :goto_0
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tunnelworkshop/postern/ImportFragment;->access$5(Lcom/tunnelworkshop/postern/ImportFragment;Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;)V

    .line 323
    iget-object v3, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 324
    iget-object v4, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/ImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 325
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 326
    return-void

    .line 308
    .end local v0    # "failStrId":I
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "ret":I
    :cond_1
    const v0, 0x7f04000d

    .line 309
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

    .line 310
    const v0, 0x7f04000f

    .line 311
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

    .line 312
    const v0, 0x7f040010

    .line 313
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

    .line 314
    const v0, 0x7f040011

    .line 315
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

    .line 316
    const v0, 0x7f040012

    .line 317
    .restart local v0    # "failStrId":I
    goto :goto_0

    .line 318
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

    invoke-virtual {p0, p1}, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v0}, Lcom/tunnelworkshop/postern/ImportFragment;->access$0(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v0}, Lcom/tunnelworkshop/postern/ImportFragment;->access$1(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v0}, Lcom/tunnelworkshop/postern/ImportFragment;->access$2(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ImportFragment$AsyncURI;->this$0:Lcom/tunnelworkshop/postern/ImportFragment;

    invoke-static {v0}, Lcom/tunnelworkshop/postern/ImportFragment;->access$3(Lcom/tunnelworkshop/postern/ImportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    return-void
.end method
