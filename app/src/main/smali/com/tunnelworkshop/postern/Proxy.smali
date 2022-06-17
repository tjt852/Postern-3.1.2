.class public Lcom/tunnelworkshop/postern/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field public static final PROXY_ADDR_DOMAIN:B = 0x1t

.field public static final PROXY_ADDR_INVALID:B = 0x4t

.field public static final PROXY_ADDR_IPV4:B = 0x2t

.field public static final PROXY_ADDR_IPV6:B = 0x3t

.field private static final PROXY_DOMAIN_MAX:I = 0xff

.field private static final PROXY_ENCRYPTION_MAX:I = 0xff

.field private static final PROXY_PASSWORD_MAX:I = 0xff

.field public static final PROXY_TYPE_GFWPRESS:I = 0x4

.field public static final PROXY_TYPE_HTTPS:I = 0x3

.field public static final PROXY_TYPE_INVALID:I = 0x5

.field public static final PROXY_TYPE_SHADOWSOCKS:I = 0x1

.field public static final PROXY_TYPE_SOCKS5:I = 0x2

.field public static final PROXY_TYPE_SSH2:I = 0x0

.field private static final PROXY_USERNAME_MAX:I = 0xff


# instance fields
.field private addrType:B

.field private domain:Ljava/lang/String;

.field private encryption:Ljava/lang/String;

.field private ip:Ljava/net/InetAddress;

.field private ota:I

.field private password:Ljava/lang/String;

.field private port:I

.field private type:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/tunnelworkshop/postern/Proxy;->addrType:B

    .line 28
    iput-object v1, p0, Lcom/tunnelworkshop/postern/Proxy;->domain:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/tunnelworkshop/postern/Proxy;->ip:Ljava/net/InetAddress;

    .line 30
    iput v2, p0, Lcom/tunnelworkshop/postern/Proxy;->port:I

    .line 31
    iput v2, p0, Lcom/tunnelworkshop/postern/Proxy;->type:I

    .line 32
    iput-object v1, p0, Lcom/tunnelworkshop/postern/Proxy;->username:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/tunnelworkshop/postern/Proxy;->password:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/tunnelworkshop/postern/Proxy;->encryption:Ljava/lang/String;

    .line 35
    iput v2, p0, Lcom/tunnelworkshop/postern/Proxy;->ota:I

    .line 8
    return-void
.end method

.method public static fromBytes([B)Lcom/tunnelworkshop/postern/Proxy;
    .locals 12
    .param p0, "buf"    # [B

    .prologue
    .line 281
    new-instance v7, Lcom/tunnelworkshop/postern/Proxy;

    invoke-direct {v7}, Lcom/tunnelworkshop/postern/Proxy;-><init>()V

    .line 282
    .local v7, "p":Lcom/tunnelworkshop/postern/Proxy;
    const/4 v5, 0x0

    .line 285
    .local v5, "len":I
    aget-byte v10, p0, v5

    const/4 v11, 0x4

    if-lt v10, v11, :cond_0

    .line 286
    const/4 v7, 0x0

    .line 354
    .end local v7    # "p":Lcom/tunnelworkshop/postern/Proxy;
    :goto_0
    return-object v7

    .line 287
    .restart local v7    # "p":Lcom/tunnelworkshop/postern/Proxy;
    :cond_0
    aget-byte v10, p0, v5

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 288
    const/4 v10, 0x4

    new-array v4, v10, [B

    .line 290
    .local v4, "ip":[B
    add-int/lit8 v5, v5, 0x2

    .line 291
    const/4 v10, 0x0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .local v6, "len":I
    aget-byte v11, p0, v5

    aput-byte v11, v4, v10

    .line 292
    const/4 v10, 0x1

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "len":I
    .restart local v5    # "len":I
    aget-byte v11, p0, v6

    aput-byte v11, v4, v10

    .line 293
    const/4 v10, 0x2

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .restart local v6    # "len":I
    aget-byte v11, p0, v5

    aput-byte v11, v4, v10

    .line 294
    const/4 v10, 0x3

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "len":I
    .restart local v5    # "len":I
    aget-byte v11, p0, v6

    aput-byte v11, v4, v10

    .line 297
    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/tunnelworkshop/postern/Proxy;->setIp(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v4    # "ip":[B
    :goto_1
    aget-byte v10, p0, v5

    and-int/lit16 v0, v10, 0xff

    .line 316
    .local v0, "b1":I
    add-int/lit8 v10, v5, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v1, v10, 0xff

    .line 317
    .local v1, "b2":I
    shl-int/lit8 v10, v0, 0x8

    or-int v9, v10, v1

    .line 318
    .local v9, "temp":I
    invoke-virtual {v7, v9}, Lcom/tunnelworkshop/postern/Proxy;->setPort(I)I

    .line 319
    add-int/lit8 v5, v5, 0x2

    .line 322
    aget-byte v10, p0, v5

    const/4 v11, 0x5

    if-lt v10, v11, :cond_3

    .line 323
    const/4 v7, 0x0

    goto :goto_0

    .line 300
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    .end local v9    # "temp":I
    :cond_1
    aget-byte v10, p0, v5

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 301
    add-int/lit8 v5, v5, 0x1

    .line 303
    aget-byte v8, p0, v5

    .line 305
    .local v8, "strLen":I
    const/4 v10, 0x2

    invoke-static {p0, v10, v8}, Lcom/tunnelworkshop/postern/Proxy;->getStringFromBuf([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/tunnelworkshop/postern/Proxy;->setDomain(Ljava/lang/String;)I

    .line 307
    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v5, v10, 0x1

    .line 308
    goto :goto_1

    .line 309
    .end local v8    # "strLen":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 324
    .restart local v0    # "b1":I
    .restart local v1    # "b2":I
    .restart local v9    # "temp":I
    :cond_3
    aget-byte v10, p0, v5

    invoke-virtual {v7, v10}, Lcom/tunnelworkshop/postern/Proxy;->setType(I)V

    .line 325
    add-int/lit8 v5, v5, 0x1

    .line 328
    aget-byte v8, p0, v5

    .line 329
    .restart local v8    # "strLen":I
    if-lez v8, :cond_4

    .line 330
    add-int/lit8 v10, v5, 0x1

    invoke-static {p0, v10, v8}, Lcom/tunnelworkshop/postern/Proxy;->getStringFromBuf([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/tunnelworkshop/postern/Proxy;->setUsername(Ljava/lang/String;)I

    .line 331
    :cond_4
    add-int/lit8 v10, v8, 0x1

    add-int/2addr v5, v10

    .line 334
    aget-byte v8, p0, v5

    .line 335
    if-lez v8, :cond_5

    .line 336
    add-int/lit8 v10, v5, 0x1

    invoke-static {p0, v10, v8}, Lcom/tunnelworkshop/postern/Proxy;->getStringFromBuf([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/tunnelworkshop/postern/Proxy;->setPassword(Ljava/lang/String;)I

    .line 337
    :cond_5
    add-int/lit8 v10, v8, 0x1

    add-int/2addr v5, v10

    .line 340
    aget-byte v8, p0, v5

    .line 341
    if-lez v8, :cond_6

    .line 342
    add-int/lit8 v10, v5, 0x1

    invoke-static {p0, v10, v8}, Lcom/tunnelworkshop/postern/Proxy;->getStringFromBuf([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/tunnelworkshop/postern/Proxy;->setEncryption(Ljava/lang/String;)I

    .line 343
    :cond_6
    add-int/lit8 v10, v8, 0x1

    add-int/2addr v5, v10

    .line 347
    aget-byte v0, p0, v5

    .line 348
    add-int/lit8 v10, v5, 0x1

    aget-byte v1, p0, v10

    .line 349
    add-int/lit8 v10, v5, 0x2

    aget-byte v2, p0, v10

    .line 350
    .local v2, "b3":I
    add-int/lit8 v10, v5, 0x3

    aget-byte v3, p0, v10

    .line 351
    .local v3, "b4":I
    shl-int/lit8 v10, v2, 0x8

    or-int/2addr v10, v3

    shl-int/lit8 v11, v1, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v0, 0x18

    or-int/2addr v10, v11

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v7, v10}, Lcom/tunnelworkshop/postern/Proxy;->setOta(Z)V

    .line 352
    add-int/lit8 v5, v5, 0x4

    .line 354
    goto/16 :goto_0

    .line 351
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 298
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    .end local v8    # "strLen":I
    .end local v9    # "temp":I
    .restart local v4    # "ip":[B
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method private static getStringFromBuf([BII)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 270
    new-array v1, p2, [C

    .line 273
    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    if-lt v0, p2, :cond_0

    .line 276
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 274
    :cond_0
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 273
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getAddrType()B
    .locals 1

    .prologue
    .line 38
    iget-byte v0, p0, Lcom/tunnelworkshop/postern/Proxy;->addrType:B

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tunnelworkshop/postern/Proxy;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tunnelworkshop/postern/Proxy;->encryption:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPortString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 158
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/Proxy;->getAddrType()B

    move-result v1

    if-ne v1, v4, :cond_0

    .line 159
    const-string v1, "%s:%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/Proxy;->getDomain()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/Proxy;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/Proxy;->getAddrType()B

    move-result v1

    if-ne v1, v2, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/Proxy;->getIp()Ljava/net/InetAddress;

    move-result-object v0

    .line 162
    .local v0, "ip":Ljava/net/InetAddress;
    const-string v1, "%s:%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/Proxy;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 164
    .end local v0    # "ip":Ljava/net/InetAddress;
    :cond_1
    const-string v1, "Unknown"

    goto :goto_0
.end method

.method public getIp()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tunnelworkshop/postern/Proxy;->ip:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getOta()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/tunnelworkshop/postern/Proxy;->ota:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tunnelworkshop/postern/Proxy;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/tunnelworkshop/postern/Proxy;->port:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/tunnelworkshop/postern/Proxy;->type:I

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/tunnelworkshop/postern/Proxy;->type:I

    packed-switch v0, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "SSH2"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "Shadowsocks"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "SOCKS5"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "HTTPS"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "GFW.press"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tunnelworkshop/postern/Proxy;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)I
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/tunnelworkshop/postern/Proxy;->domain:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/tunnelworkshop/postern/Proxy;->addrType:B

    .line 46
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setEncryption(Ljava/lang/String;)I
    .locals 2
    .param p1, "encryption"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/tunnelworkshop/postern/Proxy;->encryption:Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setIp(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tunnelworkshop/postern/Proxy;->ip:Ljava/net/InetAddress;

    .line 74
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/tunnelworkshop/postern/Proxy;->addrType:B

    .line 75
    return-void
.end method

.method public setIp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Lcom/tunnelworkshop/postern/PosternUtils;->validateIp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, "ret":Z
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/tunnelworkshop/postern/Proxy;->ip:Ljava/net/InetAddress;

    .line 64
    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/tunnelworkshop/postern/Proxy;->addrType:B
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setOta(Z)V
    .locals 1
    .param p1, "ota"    # Z

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    const/4 v0, 0x1

    iput v0, p0, Lcom/tunnelworkshop/postern/Proxy;->ota:I

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tunnelworkshop/postern/Proxy;->ota:I

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/tunnelworkshop/postern/Proxy;->password:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setPort(I)I
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 82
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-lt p1, v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, -0x1

    .line 86
    :goto_0
    return v0

    .line 85
    :cond_1
    iput p1, p0, Lcom/tunnelworkshop/postern/Proxy;->port:I

    .line 86
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/tunnelworkshop/postern/Proxy;->type:I

    .line 95
    return-void
.end method

.method public setUsername(Ljava/lang/String;)I
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 120
    iput-object p1, p0, Lcom/tunnelworkshop/postern/Proxy;->username:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public toBytes()[B
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 180
    iget-byte v9, p0, Lcom/tunnelworkshop/postern/Proxy;->addrType:B

    if-eq v9, v14, :cond_0

    .line 181
    iget-byte v9, p0, Lcom/tunnelworkshop/postern/Proxy;->addrType:B

    if-ne v9, v13, :cond_1

    .line 182
    :cond_0
    const/4 v9, 0x0

    .line 265
    :goto_0
    return-object v9

    .line 200
    :cond_1
    iget-byte v9, p0, Lcom/tunnelworkshop/postern/Proxy;->addrType:B

    if-ne v9, v11, :cond_2

    .line 201
    const/4 v0, 0x4

    .line 206
    .local v0, "addrLen":B
    :goto_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    .local v3, "bStream":Ljava/io/ByteArrayOutputStream;
    iget-byte v9, p0, Lcom/tunnelworkshop/postern/Proxy;->addrType:B

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 209
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 211
    iget-byte v9, p0, Lcom/tunnelworkshop/postern/Proxy;->addrType:B

    if-ne v9, v11, :cond_3

    .line 212
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->ip:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 214
    .local v6, "ipv4":[B
    array-length v9, v6

    invoke-virtual {v3, v6, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 222
    .end local v6    # "ipv4":[B
    :goto_2
    new-array v2, v11, [B

    .line 223
    .local v2, "bPort":[B
    iget v9, p0, Lcom/tunnelworkshop/postern/Proxy;->port:I

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v10

    .line 224
    iget v9, p0, Lcom/tunnelworkshop/postern/Proxy;->port:I

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v12

    .line 226
    array-length v9, v2

    invoke-virtual {v3, v2, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 228
    iget v9, p0, Lcom/tunnelworkshop/postern/Proxy;->type:I

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 230
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->username:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 231
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->username:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 233
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->username:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 234
    .local v8, "un":[B
    array-length v9, v8

    invoke-virtual {v3, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 239
    .end local v8    # "un":[B
    :goto_3
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->password:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 240
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->password:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->password:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 243
    .local v7, "ps":[B
    array-length v9, v7

    invoke-virtual {v3, v7, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 248
    .end local v7    # "ps":[B
    :goto_4
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->encryption:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 249
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->encryption:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->encryption:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 252
    .local v4, "en":[B
    array-length v9, v4

    invoke-virtual {v3, v4, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 257
    .end local v4    # "en":[B
    :goto_5
    new-array v5, v14, [B

    .line 258
    .local v5, "fourByte":[B
    iget v9, p0, Lcom/tunnelworkshop/postern/Proxy;->ota:I

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v13

    .line 259
    iget v9, p0, Lcom/tunnelworkshop/postern/Proxy;->ota:I

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v11

    .line 260
    iget v9, p0, Lcom/tunnelworkshop/postern/Proxy;->ota:I

    shr-int/lit8 v9, v9, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v12

    .line 261
    iget v9, p0, Lcom/tunnelworkshop/postern/Proxy;->ota:I

    shr-int/lit8 v9, v9, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v10

    .line 263
    array-length v9, v5

    invoke-virtual {v3, v5, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 265
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    goto/16 :goto_0

    .line 203
    .end local v0    # "addrLen":B
    .end local v2    # "bPort":[B
    .end local v3    # "bStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "fourByte":[B
    :cond_2
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->domain:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-byte v0, v9

    .restart local v0    # "addrLen":B
    goto/16 :goto_1

    .line 216
    .restart local v3    # "bStream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    iget-object v9, p0, Lcom/tunnelworkshop/postern/Proxy;->domain:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 218
    .local v1, "bDomain":[B
    array-length v9, v1

    invoke-virtual {v3, v1, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_2

    .line 236
    .end local v1    # "bDomain":[B
    .restart local v2    # "bPort":[B
    :cond_4
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 245
    :cond_5
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 254
    :cond_6
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5
.end method
