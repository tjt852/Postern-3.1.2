.class Lcom/tunnelworkshop/postern/RuleEditFragment$3;
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
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 23
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    const/4 v11, 0x0

    .line 246
    .local v11, "pcpgname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$1(Lcom/tunnelworkshop/postern/RuleEditFragment;)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f07002c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 249
    .local v4, "checkBox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$1(Lcom/tunnelworkshop/postern/RuleEditFragment;)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f070029

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 250
    .local v17, "spinner":Landroid/widget/Spinner;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v16

    .line 251
    .local v16, "select":I
    if-nez v16, :cond_2

    .line 252
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    if-nez v20, :cond_1

    .line 253
    const/4 v2, 0x0

    .line 272
    .local v2, "action":I
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x3

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 273
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$1(Lcom/tunnelworkshop/postern/RuleEditFragment;)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f07002b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17    # "spinner":Landroid/widget/Spinner;
    check-cast v17, Landroid/widget/Spinner;

    .line 274
    .restart local v17    # "spinner":Landroid/widget/Spinner;
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainManager()Lcom/tunnelworkshop/postern/ProxyChainManager;

    move-result-object v10

    .line 276
    .local v10, "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v16

    .line 277
    invoke-virtual {v10}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChainCount()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_8

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f040045

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 280
    const/16 v22, 0x1

    .line 278
    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 280
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 377
    .end local v10    # "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    :goto_1
    return-void

    .line 255
    .end local v2    # "action":I
    :cond_1
    const/4 v2, 0x1

    .line 256
    .restart local v2    # "action":I
    goto :goto_0

    .end local v2    # "action":I
    :cond_2
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 257
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    if-nez v20, :cond_3

    .line 258
    const/4 v2, 0x2

    .restart local v2    # "action":I
    goto :goto_0

    .line 260
    .end local v2    # "action":I
    :cond_3
    const/4 v2, 0x3

    .line 261
    .restart local v2    # "action":I
    goto :goto_0

    .end local v2    # "action":I
    :cond_4
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 262
    const/4 v2, 0x4

    .line 263
    .restart local v2    # "action":I
    goto :goto_0

    .end local v2    # "action":I
    :cond_5
    const/16 v20, 0x3

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 264
    const/4 v2, 0x5

    .line 265
    .restart local v2    # "action":I
    goto/16 :goto_0

    .end local v2    # "action":I
    :cond_6
    const/16 v20, 0x4

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 266
    const/4 v2, 0x6

    .line 267
    .restart local v2    # "action":I
    goto/16 :goto_0

    .line 268
    .end local v2    # "action":I
    :cond_7
    const/4 v2, 0x4

    .restart local v2    # "action":I
    goto/16 :goto_0

    .line 284
    .restart local v10    # "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    :cond_8
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/tunnelworkshop/postern/ProxyChainManager;->getProxyChain(I)Lcom/tunnelworkshop/postern/ProxyChain;

    move-result-object v9

    .line 285
    .local v9, "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/ProxyChain;->getName()Ljava/lang/String;

    move-result-object v11

    .line 303
    .end local v9    # "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    .end local v10    # "pcMgr":Lcom/tunnelworkshop/postern/ProxyChainManager;
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$1(Lcom/tunnelworkshop/postern/RuleEditFragment;)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f070028

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17    # "spinner":Landroid/widget/Spinner;
    check-cast v17, Landroid/widget/Spinner;

    .line 304
    .restart local v17    # "spinner":Landroid/widget/Spinner;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v16

    .line 305
    packed-switch v16, :pswitch_data_0

    .line 322
    const/16 v19, 0x5

    .line 326
    .local v19, "type":I
    :goto_3
    new-instance v15, Lcom/tunnelworkshop/postern/RuleGroup;

    invoke-direct {v15}, Lcom/tunnelworkshop/postern/RuleGroup;-><init>()V

    .line 328
    .local v15, "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/tunnelworkshop/postern/RuleGroup;->setType(I)I

    .line 329
    invoke-virtual {v15, v2}, Lcom/tunnelworkshop/postern/RuleGroup;->setAction(I)I

    .line 330
    invoke-virtual {v15, v11}, Lcom/tunnelworkshop/postern/RuleGroup;->setPcpgname(Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$1(Lcom/tunnelworkshop/postern/RuleEditFragment;)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f07002d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 334
    .local v5, "ed":Landroid/widget/EditText;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 336
    .local v18, "targetText":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 337
    invoke-virtual {v15}, Lcom/tunnelworkshop/postern/RuleGroup;->getType()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f040046

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 340
    const/16 v22, 0x1

    .line 338
    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 340
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 286
    .end local v5    # "ed":Landroid/widget/EditText;
    .end local v15    # "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    .end local v18    # "targetText":Ljava/lang/String;
    .end local v19    # "type":I
    :cond_a
    const/16 v20, 0x4

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$1(Lcom/tunnelworkshop/postern/RuleEditFragment;)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f07002b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17    # "spinner":Landroid/widget/Spinner;
    check-cast v17, Landroid/widget/Spinner;

    .line 288
    .restart local v17    # "spinner":Landroid/widget/Spinner;
    invoke-static {}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupManager()Lcom/tunnelworkshop/postern/ProxyGroupManager;

    move-result-object v13

    .line 290
    .local v13, "pgMgr":Lcom/tunnelworkshop/postern/ProxyGroupManager;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v16

    .line 291
    invoke-virtual {v13}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupCount()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_b

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f040047

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 294
    const/16 v22, 0x1

    .line 292
    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 294
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 298
    :cond_b
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroup(I)Lcom/tunnelworkshop/postern/ProxyGroup;

    move-result-object v12

    .line 299
    .local v12, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    invoke-virtual {v12}, Lcom/tunnelworkshop/postern/ProxyGroup;->getPgname()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 307
    .end local v12    # "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    .end local v13    # "pgMgr":Lcom/tunnelworkshop/postern/ProxyGroupManager;
    :pswitch_0
    const/16 v19, 0x0

    .line 308
    .restart local v19    # "type":I
    goto/16 :goto_3

    .line 310
    .end local v19    # "type":I
    :pswitch_1
    const/16 v19, 0x1

    .line 311
    .restart local v19    # "type":I
    goto/16 :goto_3

    .line 313
    .end local v19    # "type":I
    :pswitch_2
    const/16 v19, 0x2

    .line 314
    .restart local v19    # "type":I
    goto/16 :goto_3

    .line 316
    .end local v19    # "type":I
    :pswitch_3
    const/16 v19, 0x3

    .line 317
    .restart local v19    # "type":I
    goto/16 :goto_3

    .line 319
    .end local v19    # "type":I
    :pswitch_4
    const/16 v19, 0x4

    .line 320
    .restart local v19    # "type":I
    goto/16 :goto_3

    .line 343
    .restart local v5    # "ed":Landroid/widget/EditText;
    .restart local v15    # "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    .restart local v18    # "targetText":Ljava/lang/String;
    :cond_c
    const-string v18, "*"

    .line 347
    :cond_d
    const-string v20, ";"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, "parts":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v6, v0, :cond_e

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/tunnelworkshop/postern/PosternApp;

    .line 368
    .local v3, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/PosternApp;->getRuleEditState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/PosternApp;->getRuleEditID()I

    move-result v21

    invoke-virtual {v15}, Lcom/tunnelworkshop/postern/RuleGroup;->serialize()[B

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$8(Lcom/tunnelworkshop/postern/RuleEditFragment;I[B)I

    .line 374
    :goto_5
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/PosternApp;->saveConfiguration()V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$10(Lcom/tunnelworkshop/postern/RuleEditFragment;)V

    goto/16 :goto_1

    .line 350
    .end local v3    # "appState":Lcom/tunnelworkshop/postern/PosternApp;
    :cond_e
    aget-object v20, v8, v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, "newStr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_f

    .line 349
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 354
    :cond_f
    move/from16 v0, v19

    invoke-static {v0, v7}, Lcom/tunnelworkshop/postern/Rule;->buildRuleFromString(ILjava/lang/String;)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v14

    .line 356
    .local v14, "r":Lcom/tunnelworkshop/postern/Rule;
    if-nez v14, :cond_10

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tunnelworkshop/postern/RuleEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f040044

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 359
    const/16 v22, 0x1

    .line 357
    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 359
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 363
    :cond_10
    invoke-virtual {v15, v14}, Lcom/tunnelworkshop/postern/RuleGroup;->addRule(Lcom/tunnelworkshop/postern/Rule;)V

    goto :goto_6

    .line 371
    .end local v7    # "newStr":Ljava/lang/String;
    .end local v14    # "r":Lcom/tunnelworkshop/postern/Rule;
    .restart local v3    # "appState":Lcom/tunnelworkshop/postern/PosternApp;
    :cond_11
    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/PosternApp;->getRuleEditID()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/tunnelworkshop/postern/RuleGroup;->setId(I)I

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tunnelworkshop/postern/RuleEditFragment$3;->this$0:Lcom/tunnelworkshop/postern/RuleEditFragment;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lcom/tunnelworkshop/postern/RuleGroup;->serialize()[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tunnelworkshop/postern/RuleEditFragment;->access$9(Lcom/tunnelworkshop/postern/RuleEditFragment;[B)I

    goto :goto_5

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
