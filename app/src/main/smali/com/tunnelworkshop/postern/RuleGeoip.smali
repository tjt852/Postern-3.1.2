.class public Lcom/tunnelworkshop/postern/RuleGeoip;
.super Lcom/tunnelworkshop/postern/Rule;
.source "RuleGeoip.java"


# instance fields
.field ch:[C

.field country:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/Rule;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tunnelworkshop/postern/RuleGeoip;->country:Ljava/lang/String;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tunnelworkshop/postern/RuleGeoip;->ch:[C

    .line 5
    return-void
.end method

.method public static buildRuleFromString(Ljava/lang/String;)Lcom/tunnelworkshop/postern/Rule;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    const/4 v0, 0x2

    .line 39
    .local v0, "COUNTRY_LEN":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v3

    .line 42
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 49
    new-instance v3, Lcom/tunnelworkshop/postern/RuleGeoip;

    invoke-direct {v3}, Lcom/tunnelworkshop/postern/RuleGeoip;-><init>()V

    .line 51
    .local v3, "r":Lcom/tunnelworkshop/postern/RuleGeoip;
    iget-object v4, v3, Lcom/tunnelworkshop/postern/RuleGeoip;->ch:[C

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v6

    .line 52
    iget-object v4, v3, Lcom/tunnelworkshop/postern/RuleGeoip;->ch:[C

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v7

    .line 53
    iput-object p0, v3, Lcom/tunnelworkshop/postern/RuleGeoip;->country:Ljava/lang/String;

    goto :goto_0

    .line 43
    .end local v3    # "r":Lcom/tunnelworkshop/postern/RuleGeoip;
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 45
    .local v1, "c":C
    const/16 v4, 0x61

    if-lt v1, v4, :cond_3

    const/16 v4, 0x7a

    if-le v1, v4, :cond_4

    :cond_3
    const/16 v4, 0x41

    if-lt v1, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v1, v4, :cond_0

    .line 42
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static deserialize([BII)Lcom/tunnelworkshop/postern/Rule;
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 23
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/tunnelworkshop/postern/RuleGeoip;

    invoke-direct {v0}, Lcom/tunnelworkshop/postern/RuleGeoip;-><init>()V

    .line 28
    .local v0, "r":Lcom/tunnelworkshop/postern/RuleGeoip;
    iget-object v1, v0, Lcom/tunnelworkshop/postern/RuleGeoip;->ch:[C

    const/4 v2, 0x0

    aget-byte v3, p0, p1

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 29
    iget-object v1, v0, Lcom/tunnelworkshop/postern/RuleGeoip;->ch:[C

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 30
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/tunnelworkshop/postern/RuleGeoip;->ch:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v1, v0, Lcom/tunnelworkshop/postern/RuleGeoip;->country:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public serialize()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 16
    .local v0, "buf":[B
    iget-object v1, p0, Lcom/tunnelworkshop/postern/RuleGeoip;->ch:[C

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 17
    iget-object v1, p0, Lcom/tunnelworkshop/postern/RuleGeoip;->ch:[C

    aget-char v1, v1, v3

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 19
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/tunnelworkshop/postern/RuleGeoip;->country:Ljava/lang/String;

    return-object v0
.end method
