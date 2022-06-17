.class public Lcom/tunnelworkshop/postern/RuleGroup;
.super Ljava/lang/Object;
.source "RuleGroup.java"


# static fields
.field public static final MAX_PROXYNAME:I = 0x20

.field public static final RULE_ID_INVALID:I = -0x1

.field public static final TARGET_RULE_BLOCK:I = 0x4

.field public static final TARGET_RULE_MAX:I = 0x6

.field public static final TARGET_RULE_MIN:I = 0x0

.field public static final TARGET_RULE_PROXY_GROUP:I = 0x6

.field public static final TARGET_RULE_PTHRU:I = 0x0

.field public static final TARGET_RULE_PTHRU_RECORD:I = 0x1

.field public static final TARGET_RULE_SMART:I = 0x5

.field public static final TARGET_RULE_TUNNEL:I = 0x2

.field public static final TARGET_RULE_TUNNEL_RECORD:I = 0x3


# instance fields
.field private action:I

.field private gid:I

.field private id:I

.field private index:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tunnelworkshop/postern/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private pcpgname:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->list:Ljava/util/ArrayList;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->id:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->pcpgname:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static actionValid(I)Z
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 26
    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deserialize([B)Lcom/tunnelworkshop/postern/RuleGroup;
    .locals 15
    .param p0, "buf"    # [B

    .prologue
    const/16 v11, 0x34

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 257
    array-length v9, p0

    if-ge v9, v11, :cond_1

    .line 258
    const-string v9, "Postern"

    const-string v10, "RuleGroup.deserialize,fail1\n"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 335
    :cond_0
    :goto_0
    return-object v4

    .line 262
    :cond_1
    new-instance v4, Lcom/tunnelworkshop/postern/RuleGroup;

    invoke-direct {v4}, Lcom/tunnelworkshop/postern/RuleGroup;-><init>()V

    .line 263
    .local v4, "rg":Lcom/tunnelworkshop/postern/RuleGroup;
    const/4 v2, 0x0

    .line 269
    .local v2, "offset":I
    invoke-static {p0, v2}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/tunnelworkshop/postern/RuleGroup;->setGID(I)V

    .line 270
    add-int/lit8 v2, v2, 0x4

    .line 273
    const/16 v9, 0x8

    array-length v10, p0

    if-gt v9, v10, :cond_2

    invoke-static {p0, v2}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/tunnelworkshop/postern/RuleGroup;->setId(I)I

    move-result v9

    if-gez v9, :cond_3

    :cond_2
    move-object v4, v8

    .line 274
    goto :goto_0

    .line 275
    :cond_3
    add-int/lit8 v2, v2, 0x4

    .line 278
    const/16 v9, 0xc

    array-length v10, p0

    if-le v9, v10, :cond_4

    move-object v4, v8

    .line 279
    goto :goto_0

    .line 280
    :cond_4
    invoke-static {p0, v2}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v5

    .line 281
    .local v5, "ruleCount":I
    add-int/lit8 v2, v2, 0x4

    .line 284
    const/16 v9, 0x10

    array-length v10, p0

    if-gt v9, v10, :cond_5

    invoke-static {p0, v2}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/tunnelworkshop/postern/RuleGroup;->setType(I)I

    move-result v9

    if-gez v9, :cond_6

    :cond_5
    move-object v4, v8

    .line 285
    goto :goto_0

    .line 286
    :cond_6
    add-int/lit8 v2, v2, 0x4

    .line 289
    const/16 v9, 0x14

    array-length v10, p0

    if-gt v9, v10, :cond_7

    invoke-static {p0, v2}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/tunnelworkshop/postern/RuleGroup;->setAction(I)I

    move-result v9

    if-gez v9, :cond_8

    :cond_7
    move-object v4, v8

    .line 290
    goto :goto_0

    .line 291
    :cond_8
    add-int/lit8 v2, v2, 0x4

    .line 294
    array-length v9, p0

    if-gt v11, v9, :cond_9

    .line 295
    const/16 v9, 0x20

    invoke-static {p0, v2, v9}, Lcom/tunnelworkshop/postern/RuleGroup;->parseString([BII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/tunnelworkshop/postern/RuleGroup;->setPcpgname(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_a

    .line 296
    :cond_9
    const-string v9, "Postern"

    const-string v10, "RuleGroup.deserialize,fail2\n"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 297
    goto :goto_0

    .line 299
    :cond_a
    add-int/lit8 v2, v2, 0x20

    .line 302
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 303
    add-int/lit8 v9, v2, 0x6

    array-length v10, p0

    if-le v9, v10, :cond_b

    .line 304
    const-string v9, "RuleGroup deserialize fail3,ruleCount %d,i %d\n"

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "dbg":Ljava/lang/String;
    const-string v9, "Postern"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 306
    goto/16 :goto_0

    .line 310
    .end local v0    # "dbg":Ljava/lang/String;
    :cond_b
    invoke-static {p0, v2}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v6

    .line 311
    .local v6, "ruleID":I
    add-int/lit8 v2, v2, 0x4

    .line 314
    invoke-static {p0, v2}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohs([BI)I

    move-result v7

    .line 315
    .local v7, "ruleLen":I
    add-int/lit8 v2, v2, 0x2

    .line 317
    add-int v9, v2, v7

    array-length v10, p0

    if-le v9, v10, :cond_c

    .line 318
    const-string v9, "RuleGroup deserialize fail4,ruleLen %d,i %d\n"

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .restart local v0    # "dbg":Ljava/lang/String;
    const-string v9, "Postern"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 320
    goto/16 :goto_0

    .line 324
    .end local v0    # "dbg":Ljava/lang/String;
    :cond_c
    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/RuleGroup;->getType()I

    move-result v9

    invoke-static {v9, p0, v2, v7}, Lcom/tunnelworkshop/postern/Rule;->deserialize(I[BII)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v3

    .line 325
    .local v3, "r":Lcom/tunnelworkshop/postern/Rule;
    if-nez v3, :cond_d

    .line 326
    const-string v9, "RuleGroup deserialize fail5,ruleLen %d,i %d,ruleC %d\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0    # "dbg":Ljava/lang/String;
    const-string v9, "Postern"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 328
    goto/16 :goto_0

    .line 330
    .end local v0    # "dbg":Ljava/lang/String;
    :cond_d
    add-int/2addr v2, v7

    .line 332
    invoke-virtual {v4, v3}, Lcom/tunnelworkshop/postern/RuleGroup;->addRule(Lcom/tunnelworkshop/postern/Rule;)V

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private static parseString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "max"    # I

    .prologue
    .line 239
    const/4 v1, 0x0

    .local v1, "length":I
    :goto_0
    if-lt v1, p2, :cond_2

    .line 245
    :cond_0
    if-eqz v1, :cond_1

    if-ne v1, p2, :cond_3

    .line 246
    :cond_1
    const/4 v3, 0x0

    .line 252
    :goto_1
    return-object v3

    .line 240
    :cond_2
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    if-eqz v3, :cond_0

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_3
    new-array v2, v1, [C

    .line 249
    .local v2, "str":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v1, :cond_4

    .line 252
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    .line 250
    :cond_4
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private serializeInt([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "val"    # I

    .prologue
    .line 164
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 165
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 166
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 167
    shr-int/lit8 v0, p3, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 168
    return-void
.end method

.method private serializeShort([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "val"    # I

    .prologue
    .line 171
    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 172
    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 173
    return-void
.end method


# virtual methods
.method public addRule(Lcom/tunnelworkshop/postern/Rule;)V
    .locals 1
    .param p1, "r"    # Lcom/tunnelworkshop/postern/Rule;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    return-void
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->action:I

    return v0
.end method

.method public getActionNameID()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->action:I

    packed-switch v0, :pswitch_data_0

    .line 64
    const v0, 0x7f040035

    :goto_0
    return v0

    .line 50
    :pswitch_0
    const v0, 0x7f04002e

    goto :goto_0

    .line 52
    :pswitch_1
    const v0, 0x7f04002f

    goto :goto_0

    .line 54
    :pswitch_2
    const v0, 0x7f040030

    goto :goto_0

    .line 56
    :pswitch_3
    const v0, 0x7f040031

    goto :goto_0

    .line 58
    :pswitch_4
    const v0, 0x7f040032

    goto :goto_0

    .line 60
    :pswitch_5
    const v0, 0x7f040033

    goto :goto_0

    .line 62
    :pswitch_6
    const v0, 0x7f040034

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getGID()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->gid:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->id:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->index:I

    return v0
.end method

.method public getPcpgname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->pcpgname:Ljava/lang/String;

    return-object v0
.end method

.method public getRule(I)Lcom/tunnelworkshop/postern/Rule;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/Rule;

    return-object v0
.end method

.method public getRuleCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->type:I

    return v0
.end method

.method public getTypeNameID()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/tunnelworkshop/postern/RuleGroup;->type:I

    packed-switch v0, :pswitch_data_0

    .line 91
    const v0, 0x7f04003c

    :goto_0
    return v0

    .line 79
    :pswitch_0
    const v0, 0x7f040036

    goto :goto_0

    .line 81
    :pswitch_1
    const v0, 0x7f040037

    goto :goto_0

    .line 83
    :pswitch_2
    const v0, 0x7f040038

    goto :goto_0

    .line 85
    :pswitch_3
    const v0, 0x7f040039

    goto :goto_0

    .line 87
    :pswitch_4
    const v0, 0x7f04003a

    goto :goto_0

    .line 89
    :pswitch_5
    const v0, 0x7f04003b

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public serialize()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 192
    const/4 v6, 0x4

    new-array v1, v6, [B

    .line 193
    .local v1, "fourByte":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    .local v0, "bStream":Ljava/io/ByteArrayOutputStream;
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v1, v7, v6}, Lcom/tunnelworkshop/postern/RuleGroup;->serializeInt([BII)V

    .line 196
    array-length v6, v1

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 198
    iget v6, p0, Lcom/tunnelworkshop/postern/RuleGroup;->id:I

    invoke-direct {p0, v1, v7, v6}, Lcom/tunnelworkshop/postern/RuleGroup;->serializeInt([BII)V

    .line 199
    array-length v6, v1

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 201
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v1, v7, v6}, Lcom/tunnelworkshop/postern/RuleGroup;->serializeInt([BII)V

    .line 202
    array-length v6, v1

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 204
    iget v6, p0, Lcom/tunnelworkshop/postern/RuleGroup;->type:I

    invoke-direct {p0, v1, v7, v6}, Lcom/tunnelworkshop/postern/RuleGroup;->serializeInt([BII)V

    .line 205
    array-length v6, v1

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 207
    iget v6, p0, Lcom/tunnelworkshop/postern/RuleGroup;->action:I

    invoke-direct {p0, v1, v7, v6}, Lcom/tunnelworkshop/postern/RuleGroup;->serializeInt([BII)V

    .line 208
    array-length v6, v1

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 210
    const/16 v6, 0x20

    new-array v3, v6, [B

    .line 211
    .local v3, "proxyNameByte":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-lt v2, v6, :cond_1

    .line 213
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleGroup;->pcpgname:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 214
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleGroup;->pcpgname:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_2

    .line 217
    :cond_0
    array-length v6, v3

    invoke-virtual {v0, v3, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 219
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_3

    .line 234
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 212
    :cond_1
    aput-byte v7, v3, v2

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_2
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleGroup;->pcpgname:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 220
    :cond_3
    iget-object v6, p0, Lcom/tunnelworkshop/postern/RuleGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tunnelworkshop/postern/Rule;

    .line 221
    .local v4, "r":Lcom/tunnelworkshop/postern/Rule;
    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/Rule;->serialize()[B

    move-result-object v5

    .line 224
    .local v5, "ruleSerialize":[B
    add-int/lit8 v6, v2, 0x1

    invoke-direct {p0, v1, v7, v6}, Lcom/tunnelworkshop/postern/RuleGroup;->serializeInt([BII)V

    .line 225
    array-length v6, v1

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 228
    array-length v6, v5

    invoke-direct {p0, v1, v7, v6}, Lcom/tunnelworkshop/postern/RuleGroup;->serializeShort([BII)V

    .line 229
    const/4 v6, 0x2

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 231
    array-length v6, v5

    invoke-virtual {v0, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public setAction(I)I
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 69
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, -0x1

    .line 73
    :goto_0
    return v0

    .line 72
    :cond_1
    iput p1, p0, Lcom/tunnelworkshop/postern/RuleGroup;->action:I

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGID(I)V
    .locals 0
    .param p1, "gid"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/tunnelworkshop/postern/RuleGroup;->gid:I

    .line 113
    return-void
.end method

.method public setId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    const/4 v0, -0x1

    .line 120
    if-ne p1, v0, :cond_0

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_0
    iput p1, p0, Lcom/tunnelworkshop/postern/RuleGroup;->id:I

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/tunnelworkshop/postern/RuleGroup;->index:I

    .line 133
    return-void
.end method

.method public setPcpgname(Ljava/lang/String;)I
    .locals 2
    .param p1, "pcpgname"    # Ljava/lang/String;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 141
    const/4 v0, -0x1

    .line 144
    :goto_0
    return v0

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/tunnelworkshop/postern/RuleGroup;->pcpgname:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 100
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, -0x1

    .line 104
    :goto_0
    return v0

    .line 103
    :cond_1
    iput p1, p0, Lcom/tunnelworkshop/postern/RuleGroup;->type:I

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method
