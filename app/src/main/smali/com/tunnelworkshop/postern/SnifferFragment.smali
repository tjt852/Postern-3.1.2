.class public Lcom/tunnelworkshop/postern/SnifferFragment;
.super Landroid/app/Fragment;
.source "SnifferFragment.java"


# static fields
.field private static final SNIFFER_LIST_CONN:I = 0x2

.field private static final SNIFFER_LIST_NONE:I = 0x0

.field private static final SNIFFER_LIST_RECORD:I = 0x1


# instance fields
.field private fragmentRootView:Landroid/view/View;

.field private snifferListWay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/tunnelworkshop/postern/SnifferFragment;->snifferListWay:I

    .line 26
    return-void
.end method

.method private bytePrintable(B)Z
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 31
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native enumstrace()[B
.end method

.method private getSnifferTrace(Z)Lcom/tunnelworkshop/postern/SnifferTrace;
    .locals 6
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 80
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrSnifferTrace()Lcom/tunnelworkshop/postern/SnifferTrace;

    move-result-object v2

    .line 81
    .local v2, "trace":Lcom/tunnelworkshop/postern/SnifferTrace;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferFragment;->enumstrace()[B

    move-result-object v1

    .line 83
    .local v1, "bytes":[B
    if-nez v1, :cond_1

    .line 94
    .end local v1    # "bytes":[B
    :goto_0
    return-object v3

    .line 86
    .restart local v1    # "bytes":[B
    :cond_1
    invoke-static {v1}, Lcom/tunnelworkshop/postern/SnifferTrace;->fromBytes([B)Lcom/tunnelworkshop/postern/SnifferTrace;

    move-result-object v2

    .line 87
    if-nez v2, :cond_2

    .line 88
    const-string v4, "Postern"

    const-string v5, "SnifferTrace.fromBytes failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v1    # "bytes":[B
    :cond_2
    invoke-virtual {v0, v2}, Lcom/tunnelworkshop/postern/PosternApp;->setCurrSnifferTrace(Lcom/tunnelworkshop/postern/SnifferTrace;)V

    move-object v3, v2

    .line 94
    goto :goto_0
.end method

.method private refreshSnifferTrace(Z)V
    .locals 4
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/SnifferFragment;->getSnifferTrace(Z)Lcom/tunnelworkshop/postern/SnifferTrace;

    move-result-object v0

    .line 100
    .local v0, "trace":Lcom/tunnelworkshop/postern/SnifferTrace;
    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    const/4 v3, 0x1

    .line 101
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    iget v1, p0, Lcom/tunnelworkshop/postern/SnifferFragment;->snifferListWay:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 108
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/SnifferFragment;->setViewByConn(Z)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/SnifferFragment;->setViewByRecord(Z)V

    goto :goto_0
.end method

.method private setRecordBtnText2(Lcom/tunnelworkshop/postern/RelativeLayoutButton;Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)V
    .locals 5
    .param p1, "btn"    # Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    .param p2, "record"    # Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .prologue
    const/16 v2, 0x8

    .line 37
    const-string v1, ""

    .line 39
    .local v1, "text":Ljava/lang/String;
    iget v3, p2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data_len:I

    if-le v3, v2, :cond_0

    .line 40
    .local v2, "total":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText2(Ljava/lang/CharSequence;)V

    .line 50
    return-void

    .line 39
    .end local v0    # "i":I
    .end local v2    # "total":I
    :cond_0
    iget v2, p2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data_len:I

    goto :goto_0

    .line 41
    .restart local v0    # "i":I
    .restart local v2    # "total":I
    :cond_1
    iget-object v3, p2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    aget-byte v3, v3, v0

    invoke-direct {p0, v3}, Lcom/tunnelworkshop/postern/SnifferFragment;->bytePrintable(B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private setViewByConn(Z)V
    .locals 14
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 172
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrSnifferTrace()Lcom/tunnelworkshop/postern/SnifferTrace;

    move-result-object v7

    .line 173
    .local v7, "trace":Lcom/tunnelworkshop/postern/SnifferTrace;
    iget-object v9, p0, Lcom/tunnelworkshop/postern/SnifferFragment;->fragmentRootView:Landroid/view/View;

    const v10, 0x7f070032

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 175
    .local v5, "layout":Landroid/widget/LinearLayout;
    if-nez p1, :cond_0

    iget v9, p0, Lcom/tunnelworkshop/postern/SnifferFragment;->snifferListWay:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 219
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 180
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v9, v7, Lcom/tunnelworkshop/postern/SnifferTrace;->conns:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v4, v9, :cond_1

    .line 218
    const/4 v9, 0x2

    iput v9, p0, Lcom/tunnelworkshop/postern/SnifferFragment;->snifferListWay:I

    goto :goto_0

    .line 181
    :cond_1
    iget-object v9, v7, Lcom/tunnelworkshop/postern/SnifferTrace;->conns:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    .line 182
    .local v2, "conn":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;
    new-instance v1, Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;-><init>(Landroid/content/Context;)V

    .line 184
    .local v1, "btn":Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    const-string v9, "%s:%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f040065

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 186
    iget v12, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->downPort:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 184
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "downAddr":Ljava/lang/String;
    iget v9, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->addrType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 191
    const-string v9, "%s:%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remoteDomain:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remotePort:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "upAddr":Ljava/lang/String;
    :goto_2
    const-string v9, "%s<---->%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v1, v6}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText1(Ljava/lang/CharSequence;)V

    .line 200
    const v9, 0x7f020010

    invoke-virtual {v1, v9}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setImageRes(I)V

    .line 202
    new-instance v9, Lcom/tunnelworkshop/postern/SnifferFragment$2;

    invoke-direct {v9, p0}, Lcom/tunnelworkshop/postern/SnifferFragment$2;-><init>(Lcom/tunnelworkshop/postern/SnifferFragment;)V

    invoke-virtual {v1, v9}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 193
    .end local v6    # "text":Ljava/lang/String;
    .end local v8    # "upAddr":Ljava/lang/String;
    :cond_2
    const-string v9, "%s:%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remoteIp:Ljava/net/InetAddress;

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remotePort:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "upAddr":Ljava/lang/String;
    goto :goto_2
.end method

.method private setViewByRecord(Z)V
    .locals 15
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 115
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrSnifferTrace()Lcom/tunnelworkshop/postern/SnifferTrace;

    move-result-object v8

    .line 116
    .local v8, "trace":Lcom/tunnelworkshop/postern/SnifferTrace;
    iget-object v10, p0, Lcom/tunnelworkshop/postern/SnifferFragment;->fragmentRootView:Landroid/view/View;

    const v11, 0x7f070032

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 118
    .local v5, "layout":Landroid/widget/LinearLayout;
    if-nez p1, :cond_0

    iget v10, p0, Lcom/tunnelworkshop/postern/SnifferFragment;->snifferListWay:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 168
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 123
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v10, v8, Lcom/tunnelworkshop/postern/SnifferTrace;->records:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v4, v10, :cond_1

    .line 167
    const/4 v10, 0x1

    iput v10, p0, Lcom/tunnelworkshop/postern/SnifferFragment;->snifferListWay:I

    goto :goto_0

    .line 124
    :cond_1
    iget-object v10, v8, Lcom/tunnelworkshop/postern/SnifferTrace;->records:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .line 125
    .local v6, "record":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;
    iget-object v2, v6, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    .line 126
    .local v2, "conn":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;
    new-instance v1, Lcom/tunnelworkshop/postern/RelativeLayoutButton;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, "btn":Lcom/tunnelworkshop/postern/RelativeLayoutButton;
    const-string v10, "%s:%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/SnifferFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040065

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 130
    iget v13, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->downPort:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 128
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "downAddr":Ljava/lang/String;
    iget v10, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->addrType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 135
    const-string v10, "%s:%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remoteDomain:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remotePort:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "upAddr":Ljava/lang/String;
    :goto_2
    iget v10, v6, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->dir:I

    if-nez v10, :cond_3

    .line 141
    const-string v10, "%s-->%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "text":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1, v6}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v1, v7}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText1(Ljava/lang/CharSequence;)V

    .line 148
    const v10, 0x7f020010

    invoke-virtual {v1, v10}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setImageRes(I)V

    .line 149
    invoke-direct {p0, v1, v6}, Lcom/tunnelworkshop/postern/SnifferFragment;->setRecordBtnText2(Lcom/tunnelworkshop/postern/RelativeLayoutButton;Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)V

    .line 151
    new-instance v10, Lcom/tunnelworkshop/postern/SnifferFragment$1;

    invoke-direct {v10, p0}, Lcom/tunnelworkshop/postern/SnifferFragment$1;-><init>(Lcom/tunnelworkshop/postern/SnifferFragment;)V

    invoke-virtual {v1, v10}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 137
    .end local v7    # "text":Ljava/lang/String;
    .end local v9    # "upAddr":Ljava/lang/String;
    :cond_2
    const-string v10, "%s:%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remoteIp:Ljava/net/InetAddress;

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remotePort:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "upAddr":Ljava/lang/String;
    goto :goto_2

    .line 143
    :cond_3
    const-string v10, "%s-->%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "text":Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 53
    const v0, 0x7f060001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 54
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 225
    const v1, 0x7f03000e

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, "rootView":Landroid/view/View;
    iput-object v0, p0, Lcom/tunnelworkshop/postern/SnifferFragment;->fragmentRootView:Landroid/view/View;

    .line 228
    iput v2, p0, Lcom/tunnelworkshop/postern/SnifferFragment;->snifferListWay:I

    .line 230
    invoke-direct {p0, v2}, Lcom/tunnelworkshop/postern/SnifferFragment;->refreshSnifferTrace(Z)V

    .line 232
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tunnelworkshop/postern/SnifferFragment;->setHasOptionsMenu(Z)V

    .line 234
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    .line 61
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/tunnelworkshop/postern/SnifferFragment;->refreshSnifferTrace(Z)V

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/tunnelworkshop/postern/SnifferFragment;->setViewByRecord(Z)V

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/tunnelworkshop/postern/SnifferFragment;->setViewByConn(Z)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x7f070037
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
