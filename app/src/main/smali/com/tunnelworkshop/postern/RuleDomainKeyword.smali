.class public Lcom/tunnelworkshop/postern/RuleDomainKeyword;
.super Lcom/tunnelworkshop/postern/Rule;
.source "RuleDomainKeyword.java"


# instance fields
.field keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/Rule;-><init>()V

    return-void
.end method

.method public static buildRuleFromString(Ljava/lang/String;)Lcom/tunnelworkshop/postern/Rule;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/tunnelworkshop/postern/RuleDomainKeyword;

    invoke-direct {v0}, Lcom/tunnelworkshop/postern/RuleDomainKeyword;-><init>()V

    .line 49
    .local v0, "r":Lcom/tunnelworkshop/postern/RuleDomainKeyword;
    iput-object p0, v0, Lcom/tunnelworkshop/postern/RuleDomainKeyword;->keyword:Ljava/lang/String;

    goto :goto_0
.end method

.method public static deserialize([BII)Lcom/tunnelworkshop/postern/Rule;
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 23
    new-instance v2, Lcom/tunnelworkshop/postern/RuleDomainKeyword;

    invoke-direct {v2}, Lcom/tunnelworkshop/postern/RuleDomainKeyword;-><init>()V

    .line 26
    .local v2, "r":Lcom/tunnelworkshop/postern/RuleDomainKeyword;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 31
    :cond_0
    if-eq v0, p2, :cond_1

    if-nez v0, :cond_3

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 40
    .end local v2    # "r":Lcom/tunnelworkshop/postern/RuleDomainKeyword;
    :goto_1
    return-object v2

    .line 27
    .restart local v2    # "r":Lcom/tunnelworkshop/postern/RuleDomainKeyword;
    :cond_2
    add-int v4, p1, v0

    aget-byte v4, p0, v4

    if-eqz v4, :cond_0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_3
    new-array v3, v0, [C

    .line 35
    .local v3, "result":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-lt v1, v0, :cond_4

    .line 38
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    iput-object v4, v2, Lcom/tunnelworkshop/postern/RuleDomainKeyword;->keyword:Ljava/lang/String;

    goto :goto_1

    .line 36
    :cond_4
    add-int v4, p1, v1

    aget-byte v4, p0, v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public serialize()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 13
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    .local v1, "bStream":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/tunnelworkshop/postern/RuleDomainKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 16
    .local v0, "bKeyword":[B
    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 17
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 19
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleDomainKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
