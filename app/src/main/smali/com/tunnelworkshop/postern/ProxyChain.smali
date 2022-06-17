.class public Lcom/tunnelworkshop/postern/ProxyChain;
.super Ljava/lang/Object;
.source "ProxyChain.java"


# static fields
.field public static final PC_ID_RSVD:I = -0x1


# instance fields
.field private pCount:B

.field private pID:I

.field private pList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tunnelworkshop/postern/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private pcname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pCount:B

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pList:Ljava/util/List;

    .line 8
    return-void
.end method

.method public static fromBytes([B)Lcom/tunnelworkshop/postern/ProxyChain;
    .locals 17
    .param p0, "buf"    # [B

    .prologue
    .line 130
    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 131
    const/4 v13, 0x0

    .line 188
    :cond_0
    :goto_0
    return-object v13

    .line 133
    :cond_1
    new-instance v13, Lcom/tunnelworkshop/postern/ProxyChain;

    invoke-direct {v13}, Lcom/tunnelworkshop/postern/ProxyChain;-><init>()V

    .line 136
    .local v13, "ret":Lcom/tunnelworkshop/postern/ProxyChain;
    const/4 v15, 0x0

    aget-byte v1, p0, v15

    .line 137
    .local v1, "b0":I
    const/4 v15, 0x1

    aget-byte v2, p0, v15

    .line 138
    .local v2, "b1":I
    const/4 v15, 0x2

    aget-byte v3, p0, v15

    .line 139
    .local v3, "b2":I
    const/4 v15, 0x3

    aget-byte v4, p0, v15

    .line 140
    .local v4, "b3":I
    shl-int/lit8 v15, v3, 0x8

    or-int/2addr v15, v4

    shl-int/lit8 v16, v2, 0x10

    or-int v15, v15, v16

    shl-int/lit8 v16, v1, 0x18

    or-int v15, v15, v16

    iput v15, v13, Lcom/tunnelworkshop/postern/ProxyChain;->pID:I

    .line 143
    const/4 v15, 0x4

    aget-byte v10, p0, v15

    .line 144
    .local v10, "pcnameLen":I
    const/4 v15, 0x1

    if-le v10, v15, :cond_2

    add-int/lit8 v15, v10, 0x5

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 145
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 148
    :cond_3
    add-int/lit8 v15, v10, -0x1

    new-array v9, v15, [C

    .line 149
    .local v9, "pcname":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    add-int/lit8 v15, v10, -0x1

    if-lt v5, v15, :cond_4

    .line 151
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v13, v15}, Lcom/tunnelworkshop/postern/ProxyChain;->setName(Ljava/lang/String;)I

    .line 154
    add-int/lit8 v15, v10, 0x6

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 155
    const/4 v13, 0x0

    goto :goto_0

    .line 150
    :cond_4
    add-int/lit8 v15, v5, 0x5

    aget-byte v15, p0, v15

    int-to-char v15, v15

    aput-char v15, v9, v5

    .line 149
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 157
    :cond_5
    add-int/lit8 v15, v10, 0x5

    aget-byte v12, p0, v15

    .line 159
    .local v12, "proxyCount":I
    add-int/lit8 v11, v10, 0x6

    .line 160
    .local v11, "proced":I
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v12, :cond_0

    .line 163
    move-object/from16 v0, p0

    array-length v15, v0

    if-lt v11, v15, :cond_6

    .line 164
    const/4 v13, 0x0

    goto :goto_0

    .line 166
    :cond_6
    aget-byte v1, p0, v11

    .line 167
    add-int/lit8 v15, v11, 0x1

    aget-byte v2, p0, v15

    .line 168
    shl-int/lit8 v15, v1, 0x8

    or-int v8, v15, v2

    .line 169
    .local v8, "pLength":I
    add-int/lit8 v11, v11, 0x2

    .line 171
    add-int v15, v11, v8

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 172
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 174
    :cond_7
    new-array v14, v8, [B

    .line 175
    .local v14, "sub":[B
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-lt v6, v8, :cond_8

    .line 178
    invoke-static {v14}, Lcom/tunnelworkshop/postern/Proxy;->fromBytes([B)Lcom/tunnelworkshop/postern/Proxy;

    move-result-object v7

    .line 180
    .local v7, "p":Lcom/tunnelworkshop/postern/Proxy;
    if-nez v7, :cond_9

    .line 181
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 176
    .end local v7    # "p":Lcom/tunnelworkshop/postern/Proxy;
    :cond_8
    add-int v15, v11, v6

    aget-byte v15, p0, v15

    aput-byte v15, v14, v6

    .line 175
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 183
    .restart local v7    # "p":Lcom/tunnelworkshop/postern/Proxy;
    :cond_9
    add-int/2addr v11, v8

    .line 185
    invoke-virtual {v13, v7}, Lcom/tunnelworkshop/postern/ProxyChain;->addProxy(Lcom/tunnelworkshop/postern/Proxy;)V

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addProxy(Lcom/tunnelworkshop/postern/Proxy;)V
    .locals 1
    .param p1, "p"    # Lcom/tunnelworkshop/postern/Proxy;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-byte v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pCount:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pCount:B

    .line 39
    return-void
.end method

.method public delProxy(Lcom/tunnelworkshop/postern/Proxy;)V
    .locals 1
    .param p1, "p"    # Lcom/tunnelworkshop/postern/Proxy;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    iget-byte v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pCount:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pCount:B

    .line 44
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pcname:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy(I)Lcom/tunnelworkshop/postern/Proxy;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 47
    iget-byte v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pCount:B

    if-lt p1, v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/Proxy;

    goto :goto_0
.end method

.method public getProxyChainId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pID:I

    return v0
.end method

.method public setName(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 26
    const/4 v0, -0x1

    .line 29
    :goto_0
    return v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pcname:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProxyChainId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pID:I

    .line 18
    return-void
.end method

.method public toBytes()[B
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 66
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 68
    .local v2, "bStream":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x4

    new-array v4, v9, [B

    .line 69
    .local v4, "fourByte":[B
    new-array v8, v13, [B

    .line 71
    .local v8, "twoByte":[B
    iget v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pID:I

    if-eq v9, v11, :cond_0

    .line 72
    iget v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pID:I

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v14

    .line 73
    iget v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pID:I

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v13

    .line 74
    iget v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pID:I

    shr-int/lit8 v9, v9, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v12

    .line 75
    iget v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pID:I

    shr-int/lit8 v9, v9, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v10

    .line 83
    :goto_0
    array-length v9, v4

    invoke-virtual {v2, v4, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 86
    iget-object v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pcname:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 89
    iget-object v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pcname:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 90
    .local v1, "bPcname2":[B
    iget-object v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pcname:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [B

    .line 92
    .local v0, "bPcname":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pcname:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v5, v9, :cond_1

    .line 94
    iget-object v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pcname:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    aput-byte v10, v0, v9

    .line 96
    array-length v9, v0

    invoke-virtual {v2, v0, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 99
    iget-byte v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pCount:B

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 101
    const/4 v6, 0x0

    .local v6, "j":B
    :goto_2
    iget-object v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v6, v9, :cond_2

    .line 112
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9

    .line 77
    .end local v0    # "bPcname":[B
    .end local v1    # "bPcname2":[B
    .end local v5    # "i":I
    .end local v6    # "j":B
    :cond_0
    aput-byte v11, v4, v14

    .line 78
    aput-byte v11, v4, v13

    .line 79
    aput-byte v11, v4, v12

    .line 80
    aput-byte v11, v4, v10

    goto :goto_0

    .line 93
    .restart local v0    # "bPcname":[B
    .restart local v1    # "bPcname2":[B
    .restart local v5    # "i":I
    :cond_1
    aget-byte v9, v1, v5

    aput-byte v9, v0, v5

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 102
    .restart local v6    # "j":B
    :cond_2
    iget-object v9, p0, Lcom/tunnelworkshop/postern/ProxyChain;->pList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tunnelworkshop/postern/Proxy;

    .line 103
    .local v7, "p":Lcom/tunnelworkshop/postern/Proxy;
    invoke-virtual {v7}, Lcom/tunnelworkshop/postern/Proxy;->toBytes()[B

    move-result-object v3

    .line 105
    .local v3, "buf":[B
    array-length v9, v3

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v8, v10

    .line 106
    array-length v9, v3

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v8, v12

    .line 108
    array-length v9, v8

    invoke-virtual {v2, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 109
    array-length v9, v3

    invoke-virtual {v2, v3, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 101
    add-int/lit8 v9, v6, 0x1

    int-to-byte v6, v9

    goto :goto_2
.end method
