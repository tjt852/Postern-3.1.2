.class public Lcom/tunnelworkshop/postern/Hosts;
.super Ljava/lang/Object;
.source "Hosts.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private ip:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/tunnelworkshop/postern/Hosts;->ip:Ljava/net/InetAddress;

    .line 11
    iput-object v0, p0, Lcom/tunnelworkshop/postern/Hosts;->domain:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static deserialize([B)Lcom/tunnelworkshop/postern/Hosts;
    .locals 12
    .param p0, "buf"    # [B

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x4

    .line 56
    array-length v6, p0

    const/4 v7, 0x5

    if-ge v6, v7, :cond_0

    move-object v2, v5

    .line 81
    :goto_0
    return-object v2

    .line 59
    :cond_0
    new-array v4, v8, [B

    .line 60
    .local v4, "ip":[B
    aget-byte v6, p0, v9

    aput-byte v6, v4, v9

    .line 61
    aget-byte v6, p0, v10

    aput-byte v6, v4, v10

    .line 62
    aget-byte v6, p0, v11

    aput-byte v6, v4, v11

    .line 63
    const/4 v6, 0x3

    const/4 v7, 0x3

    aget-byte v7, p0, v7

    aput-byte v7, v4, v6

    .line 65
    new-instance v2, Lcom/tunnelworkshop/postern/Hosts;

    invoke-direct {v2}, Lcom/tunnelworkshop/postern/Hosts;-><init>()V

    .line 68
    .local v2, "hostip":Lcom/tunnelworkshop/postern/Hosts;
    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tunnelworkshop/postern/Hosts;->setIp(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    aget-byte v6, p0, v8

    if-eqz v6, :cond_1

    array-length v6, p0

    aget-byte v7, p0, v8

    add-int/lit8 v7, v7, 0x5

    if-ge v6, v7, :cond_2

    :cond_1
    move-object v2, v5

    .line 74
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/net/UnknownHostException;
    move-object v2, v5

    .line 70
    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_2
    aget-byte v5, p0, v8

    add-int/lit8 v5, v5, -0x1

    new-array v0, v5, [C

    .line 77
    .local v0, "domain":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    aget-byte v5, p0, v8

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_3

    .line 79
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v5}, Lcom/tunnelworkshop/postern/Hosts;->setDomain(Ljava/lang/String;)Z

    goto :goto_0

    .line 78
    :cond_3
    add-int/lit8 v5, v3, 0x5

    aget-byte v5, p0, v5

    int-to-char v5, v5

    aput-char v5, v0, v3

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tunnelworkshop/postern/Hosts;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tunnelworkshop/postern/Hosts;->ip:Ljava/net/InetAddress;

    return-object v0
.end method

.method public serialize()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 40
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .local v1, "bStream":Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lcom/tunnelworkshop/postern/Hosts;->ip:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 43
    .local v2, "ipv4":[B
    array-length v4, v2

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 45
    iget-object v4, p0, Lcom/tunnelworkshop/postern/Hosts;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v3, v4

    .line 46
    .local v3, "len":B
    iget-object v4, p0, Lcom/tunnelworkshop/postern/Hosts;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 48
    .local v0, "bDomain":[B
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    array-length v4, v0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 50
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public setDomain(Ljava/lang/String;)Z
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/tunnelworkshop/postern/Hosts;->domain:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIp(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/tunnelworkshop/postern/Hosts;->ip:Ljava/net/InetAddress;

    .line 15
    return-void
.end method
