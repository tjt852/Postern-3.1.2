.class public Lcom/tunnelworkshop/postern/RuleIpcidr;
.super Lcom/tunnelworkshop/postern/Rule;
.source "RuleIpcidr.java"


# instance fields
.field private ip:Ljava/net/InetAddress;

.field private mask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/Rule;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tunnelworkshop/postern/RuleIpcidr;->ip:Ljava/net/InetAddress;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/tunnelworkshop/postern/RuleIpcidr;->mask:I

    .line 6
    return-void
.end method

.method public static buildRuleFromString(Ljava/lang/String;)Lcom/tunnelworkshop/postern/Rule;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 56
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "parts":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v1, v2, v6

    .line 60
    .local v1, "ip":Ljava/lang/String;
    array-length v6, v2

    if-ge v6, v7, :cond_1

    .line 61
    const/4 v3, 0x0

    .line 68
    .local v3, "prefix":I
    :goto_0
    invoke-static {v1}, Lcom/tunnelworkshop/postern/PosternUtils;->validateIp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x20

    if-lt v3, v6, :cond_3

    :cond_0
    move-object v4, v5

    .line 81
    .end local v3    # "prefix":I
    :goto_1
    return-object v4

    .line 62
    :cond_1
    array-length v6, v2

    if-ne v6, v7, :cond_2

    .line 63
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 64
    .restart local v3    # "prefix":I
    goto :goto_0

    .end local v3    # "prefix":I
    :cond_2
    move-object v4, v5

    .line 65
    goto :goto_1

    .line 71
    .restart local v3    # "prefix":I
    :cond_3
    new-instance v4, Lcom/tunnelworkshop/postern/RuleIpcidr;

    invoke-direct {v4}, Lcom/tunnelworkshop/postern/RuleIpcidr;-><init>()V

    .line 74
    .local v4, "r":Lcom/tunnelworkshop/postern/RuleIpcidr;
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    iput-object v6, v4, Lcom/tunnelworkshop/postern/RuleIpcidr;->ip:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    iput v3, v4, Lcom/tunnelworkshop/postern/RuleIpcidr;->mask:I

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    move-object v4, v5

    .line 76
    goto :goto_1
.end method

.method public static deserialize([BII)Lcom/tunnelworkshop/postern/Rule;
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 33
    const/16 v4, 0x8

    if-ge p2, v4, :cond_0

    move-object v2, v3

    .line 52
    :goto_0
    return-object v2

    .line 36
    :cond_0
    const/4 v4, 0x4

    new-array v1, v4, [B

    .line 37
    .local v1, "ip":[B
    new-instance v2, Lcom/tunnelworkshop/postern/RuleIpcidr;

    invoke-direct {v2}, Lcom/tunnelworkshop/postern/RuleIpcidr;-><init>()V

    .line 39
    .local v2, "r":Lcom/tunnelworkshop/postern/RuleIpcidr;
    const/4 v4, 0x0

    aget-byte v5, p0, p1

    aput-byte v5, v1, v4

    .line 40
    const/4 v4, 0x1

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v1, v4

    .line 41
    const/4 v4, 0x2

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    aput-byte v5, v1, v4

    .line 42
    const/4 v4, 0x3

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    aput-byte v5, v1, v4

    .line 45
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, v2, Lcom/tunnelworkshop/postern/RuleIpcidr;->ip:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    add-int/lit8 v3, p1, 0x4

    invoke-static {p0, v3}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v3

    iput v3, v2, Lcom/tunnelworkshop/postern/RuleIpcidr;->mask:I

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    move-object v2, v3

    .line 47
    goto :goto_0
.end method


# virtual methods
.method public serialize()[B
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 18
    .local v0, "buf":[B
    iget-object v2, p0, Lcom/tunnelworkshop/postern/RuleIpcidr;->ip:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 20
    .local v1, "ipBuf":[B
    aget-byte v2, v1, v3

    aput-byte v2, v0, v3

    .line 21
    aget-byte v2, v1, v4

    aput-byte v2, v0, v4

    .line 22
    aget-byte v2, v1, v5

    aput-byte v2, v0, v5

    .line 23
    aget-byte v2, v1, v6

    aput-byte v2, v0, v6

    .line 24
    const/4 v2, 0x4

    iget v3, p0, Lcom/tunnelworkshop/postern/RuleIpcidr;->mask:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 25
    const/4 v2, 0x5

    iget v3, p0, Lcom/tunnelworkshop/postern/RuleIpcidr;->mask:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 26
    const/4 v2, 0x6

    iget v3, p0, Lcom/tunnelworkshop/postern/RuleIpcidr;->mask:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 27
    const/4 v2, 0x7

    iget v3, p0, Lcom/tunnelworkshop/postern/RuleIpcidr;->mask:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 29
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 11
    iget-object v1, p0, Lcom/tunnelworkshop/postern/RuleIpcidr;->ip:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, "strIp":Ljava/lang/String;
    const-string v1, "%s/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tunnelworkshop/postern/RuleIpcidr;->mask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
