.class Lcom/tunnelworkshop/postern/ProxyEditFragment$3;
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
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    new-instance v6, Lcom/tunnelworkshop/postern/ProxyChain;

    invoke-direct {v6}, Lcom/tunnelworkshop/postern/ProxyChain;-><init>()V

    .line 252
    .local v6, "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    new-instance v5, Lcom/tunnelworkshop/postern/Proxy;

    invoke-direct {v5}, Lcom/tunnelworkshop/postern/Proxy;-><init>()V

    .line 256
    .local v5, "p":Lcom/tunnelworkshop/postern/Proxy;
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f07001a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 257
    .local v4, "ed":Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "proxyName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    .line 260
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 261
    iget-object v13, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v13}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040024

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 262
    const/4 v14, 0x1

    .line 260
    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 262
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 346
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x20

    if-lt v12, v13, :cond_1

    .line 266
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 267
    iget-object v13, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v13}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040025

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 268
    const/4 v14, 0x1

    .line 266
    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 268
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 273
    :cond_1
    const-string v12, "[0-9A-Za-z_]*"

    invoke-virtual {v9, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 274
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 275
    iget-object v13, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v13}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040026

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 276
    const/4 v14, 0x1

    .line 274
    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 276
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {v6, v9}, Lcom/tunnelworkshop/postern/ProxyChain;->setName(Ljava/lang/String;)I

    .line 284
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f07001b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "ed":Landroid/widget/EditText;
    check-cast v4, Landroid/widget/EditText;

    .line 285
    .restart local v4    # "ed":Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/tunnelworkshop/postern/PosternUtils;->validateIp(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 288
    invoke-virtual {v5, v0}, Lcom/tunnelworkshop/postern/Proxy;->setIp(Ljava/lang/String;)Z

    .line 293
    :goto_1
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f07001c

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "ed":Landroid/widget/EditText;
    check-cast v4, Landroid/widget/EditText;

    .line 297
    .restart local v4    # "ed":Landroid/widget/EditText;
    :try_start_0
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 302
    .local v8, "port":I
    :goto_2
    if-ltz v8, :cond_3

    const v12, 0xffff

    if-le v8, v12, :cond_5

    .line 303
    :cond_3
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 304
    iget-object v13, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v13}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040023

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 305
    const/4 v14, 0x1

    .line 303
    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 305
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 290
    .end local v8    # "port":I
    :cond_4
    invoke-virtual {v5, v0}, Lcom/tunnelworkshop/postern/Proxy;->setDomain(Ljava/lang/String;)I

    goto :goto_1

    .line 298
    :catch_0
    move-exception v3

    .line 299
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v8, -0x1

    .restart local v8    # "port":I
    goto :goto_2

    .line 309
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    invoke-virtual {v5, v8}, Lcom/tunnelworkshop/postern/Proxy;->setPort(I)I

    .line 311
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f07001d

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 312
    .local v10, "spinner":Landroid/widget/Spinner;
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    invoke-static {v12, v13}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$2(Lcom/tunnelworkshop/postern/ProxyEditFragment;I)I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/tunnelworkshop/postern/Proxy;->setType(I)V

    .line 314
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f07001e

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "ed":Landroid/widget/EditText;
    check-cast v4, Landroid/widget/EditText;

    .line 315
    .restart local v4    # "ed":Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/tunnelworkshop/postern/Proxy;->setUsername(Ljava/lang/String;)I

    .line 317
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f07001f

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "ed":Landroid/widget/EditText;
    check-cast v4, Landroid/widget/EditText;

    .line 318
    .restart local v4    # "ed":Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/tunnelworkshop/postern/Proxy;->setPassword(Ljava/lang/String;)I

    .line 320
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f070020

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    .line 321
    .local v11, "spinner2":Landroid/widget/Spinner;
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    invoke-static {v12, v13}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$6(Lcom/tunnelworkshop/postern/ProxyEditFragment;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/tunnelworkshop/postern/Proxy;->setEncryption(Ljava/lang/String;)I

    .line 323
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-static {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f070021

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 324
    .local v2, "chkboxOta":Landroid/widget/CheckBox;
    invoke-virtual {v5}, Lcom/tunnelworkshop/postern/Proxy;->getType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 325
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    invoke-virtual {v5, v12}, Lcom/tunnelworkshop/postern/Proxy;->setOta(Z)V

    .line 329
    :goto_3
    invoke-virtual {v6, v5}, Lcom/tunnelworkshop/postern/ProxyChain;->addProxy(Lcom/tunnelworkshop/postern/Proxy;)V

    .line 331
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v12}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tunnelworkshop/postern/PosternApp;

    .line 332
    .local v1, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrEditPC()Lcom/tunnelworkshop/postern/ProxyChain;

    move-result-object v7

    .line 334
    .local v7, "pcUnderEdit":Lcom/tunnelworkshop/postern/ProxyChain;
    if-eqz v7, :cond_6

    .line 335
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v7}, Lcom/tunnelworkshop/postern/ProxyChain;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->delpc(Ljava/lang/String;)I

    .line 337
    :cond_6
    iget-object v12, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v6}, Lcom/tunnelworkshop/postern/ProxyChain;->toBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->addpc([B)I

    move-result v12

    if-nez v12, :cond_8

    .line 338
    const-string v12, "Postern"

    const-string v13, "add succeed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_4
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainManager()Lcom/tunnelworkshop/postern/ProxyChainManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tunnelworkshop/postern/ProxyChainManager;->refreshProxyChain()V

    .line 343
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/PosternApp;->saveConfiguration()V

    .line 345
    invoke-static {}, Lcom/tunnelworkshop/postern/PageManager;->getPageManager()Lcom/tunnelworkshop/postern/PageManager;

    move-result-object v12

    iget-object v13, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/ProxyEditFragment;

    invoke-virtual {v13}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v12, v13, v14}, Lcom/tunnelworkshop/postern/PageManager;->setPage(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 327
    .end local v1    # "appState":Lcom/tunnelworkshop/postern/PosternApp;
    .end local v7    # "pcUnderEdit":Lcom/tunnelworkshop/postern/ProxyChain;
    :cond_7
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/tunnelworkshop/postern/Proxy;->setOta(Z)V

    goto :goto_3

    .line 340
    .restart local v1    # "appState":Lcom/tunnelworkshop/postern/PosternApp;
    .restart local v7    # "pcUnderEdit":Lcom/tunnelworkshop/postern/ProxyChain;
    :cond_8
    const-string v12, "Postern"

    const-string v13, "add failed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
