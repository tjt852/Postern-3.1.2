.class public Lcom/tunnelworkshop/postern/SnifferViewFragment;
.super Landroid/app/Fragment;
.source "SnifferViewFragment.java"


# static fields
.field private static final VIEW_ASCII:I = 0x1

.field private static final VIEW_CONN:I = 0x1

.field private static final VIEW_HEX:I = 0x0

.field private static final VIEW_HEX_ASCII:I = 0x2

.field private static final VIEW_RECORD:I


# instance fields
.field private conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

.field private record:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

.field private rootView:Landroid/view/View;

.field private viewMethod:I

.field private viewWhat:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->viewMethod:I

    .line 23
    iput-object v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->record:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .line 24
    iput-object v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    .line 28
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

.method private recordAscii(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)Ljava/lang/String;
    .locals 4
    .param p1, "record"    # Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .prologue
    .line 79
    const-string v1, ""

    .line 81
    .local v1, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data_len:I

    if-lt v0, v2, :cond_0

    .line 88
    return-object v1

    .line 82
    :cond_0
    iget-object v2, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v2}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->bytePrintable(B)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    aget-byte v2, v2, v0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    aget-byte v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 83
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    aget-byte v3, v3, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private recordHex(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)Ljava/lang/String;
    .locals 8
    .param p1, "record"    # Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .prologue
    .line 62
    const-string v3, ""

    .line 63
    .local v3, "text":Ljava/lang/String;
    const-string v1, "\n"

    .line 66
    .local v1, "enter":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data_len:I

    if-lt v2, v4, :cond_0

    .line 75
    return-object v3

    .line 67
    :cond_0
    const-string v4, "%02x "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    aget-byte v7, v7, v2

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "aByte":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    add-int/lit8 v4, v2, 0x1

    rem-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    iget v4, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data_len:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_2

    .line 71
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private recordHexAndAscii(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)Ljava/lang/String;
    .locals 9
    .param p1, "record"    # Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .prologue
    .line 35
    const-string v4, ""

    .line 36
    .local v4, "text":Ljava/lang/String;
    const-string v1, ""

    .line 37
    .local v1, "ascii":Ljava/lang/String;
    const-string v2, "\n"

    .line 40
    .local v2, "enter":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data_len:I

    if-lt v3, v5, :cond_0

    .line 58
    return-object v4

    .line 41
    :cond_0
    const-string v5, "%02x "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    aget-byte v8, v8, v3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "aByte":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    iget-object v5, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    aget-byte v5, v5, v3

    invoke-direct {p0, v5}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->bytePrintable(B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    aget-byte v6, v6, v3

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    :goto_1
    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    iget v5, p1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data_len:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_2

    .line 50
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    const-string v1, ""

    .line 40
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 47
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateSnifferConn()V
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->viewMethod:I

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 186
    :pswitch_0
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->updateSnifferConnHex()V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->updateSnifferConnAscii()V

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->updateSnifferConnHexAndAscii()V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSnifferConnAscii()V
    .locals 6

    .prologue
    .line 164
    iget-object v4, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->rootView:Landroid/view/View;

    const v5, 0x7f070033

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 166
    .local v3, "textView":Landroid/widget/TextView;
    const-string v2, ""

    .line 168
    .local v2, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    iget-object v4, v4, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->records:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 180
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    iget-object v4, v4, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->records:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .line 171
    .local v1, "record":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;
    iget v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->dir:I

    if-nez v4, :cond_1

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Send:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->recordAscii(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Recv:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateSnifferConnHex()V
    .locals 6

    .prologue
    .line 144
    iget-object v4, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->rootView:Landroid/view/View;

    const v5, 0x7f070033

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 146
    .local v3, "textView":Landroid/widget/TextView;
    const-string v2, ""

    .line 148
    .local v2, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    iget-object v4, v4, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->records:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 160
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void

    .line 149
    :cond_0
    iget-object v4, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    iget-object v4, v4, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->records:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .line 151
    .local v1, "record":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;
    iget v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->dir:I

    if-nez v4, :cond_1

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Send:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->recordHex(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Recv:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateSnifferConnHexAndAscii()V
    .locals 6

    .prologue
    .line 124
    iget-object v4, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->rootView:Landroid/view/View;

    const v5, 0x7f070033

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 126
    .local v3, "textView":Landroid/widget/TextView;
    const-string v2, ""

    .line 128
    .local v2, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    iget-object v4, v4, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->records:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 140
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    iget-object v4, v4, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->records:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .line 131
    .local v1, "record":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;
    iget v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->dir:I

    if-nez v4, :cond_1

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nSend:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->recordHexAndAscii(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nRecv:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateSnifferRecord()V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->viewMethod:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 112
    :pswitch_0
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->updateSnifferRecordHex()V

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->updateSnifferRecordAscii()V

    goto :goto_0

    .line 118
    :pswitch_2
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->updateSnifferRecordHexAndAscii()V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSnifferRecordAscii()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->rootView:Landroid/view/View;

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->record:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    invoke-direct {p0, v1}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->recordAscii(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method private updateSnifferRecordHex()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->rootView:Landroid/view/View;

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->record:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    invoke-direct {p0, v1}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->recordHex(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method private updateSnifferRecordHexAndAscii()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->rootView:Landroid/view/View;

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->record:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    invoke-direct {p0, v1}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->recordHexAndAscii(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 198
    const v0, 0x7f060002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 199
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 200
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 230
    const v2, 0x7f03000f

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 231
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/PosternApp;

    .line 233
    .local v0, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    iput-object v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->rootView:Landroid/view/View;

    .line 235
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getIsSnifferRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrSnifferRecord()Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    move-result-object v2

    iput-object v2, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->record:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .line 237
    iput v3, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->viewWhat:I

    .line 239
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->updateSnifferRecord()V

    .line 247
    :goto_0
    invoke-virtual {p0, v4}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->setHasOptionsMenu(Z)V

    .line 249
    return-object v1

    .line 241
    :cond_0
    invoke-virtual {v0}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrSnifferConn()Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    move-result-object v2

    iput-object v2, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    .line 242
    iput v4, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->viewWhat:I

    .line 244
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->updateSnifferConn()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 215
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    .line 206
    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->viewMethod:I

    .line 218
    :goto_1
    iget v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->viewWhat:I

    if-nez v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->updateSnifferRecord()V

    goto :goto_0

    .line 209
    :pswitch_1
    iput v0, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->viewMethod:I

    goto :goto_1

    .line 212
    :pswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/tunnelworkshop/postern/SnifferViewFragment;->viewMethod:I

    goto :goto_1

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/SnifferViewFragment;->updateSnifferConn()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x7f07003a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
