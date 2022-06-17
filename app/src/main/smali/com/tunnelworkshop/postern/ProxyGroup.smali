.class public Lcom/tunnelworkshop/postern/ProxyGroup;
.super Ljava/lang/Object;
.source "ProxyGroup.java"


# static fields
.field public static final PROXY_GROUP_MAX_OPTIONS:I = 0x10


# instance fields
.field private currentSel:I

.field private optionCount:I

.field private options:[Lcom/tunnelworkshop/postern/ProxyGroupOption;

.field private pgname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/tunnelworkshop/postern/ProxyGroupOption;

    iput-object v0, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->options:[Lcom/tunnelworkshop/postern/ProxyGroupOption;

    .line 9
    iput v1, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    .line 10
    iput v1, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->currentSel:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->pgname:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public static deserialize([B)Lcom/tunnelworkshop/postern/ProxyGroup;
    .locals 12
    .param p0, "buf"    # [B

    .prologue
    const/16 v11, 0x20

    const/4 v8, 0x0

    .line 148
    array-length v9, p0

    const/16 v10, 0x28

    if-ge v9, v10, :cond_0

    move-object v6, v8

    .line 188
    :goto_0
    return-object v6

    .line 151
    :cond_0
    const/4 v9, 0x0

    invoke-static {p0, v9, v11}, Lcom/tunnelworkshop/postern/ProxyGroup;->parseString([BII)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "pgname":Ljava/lang/String;
    new-instance v6, Lcom/tunnelworkshop/postern/ProxyGroup;

    invoke-direct {v6}, Lcom/tunnelworkshop/postern/ProxyGroup;-><init>()V

    .line 154
    .local v6, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    invoke-virtual {v6, v7}, Lcom/tunnelworkshop/postern/ProxyGroup;->setPgname(Ljava/lang/String;)I

    .line 156
    invoke-static {p0, v11}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v4

    .line 157
    .local v4, "optionCount":I
    const/16 v9, 0x10

    if-le v4, v9, :cond_1

    move-object v6, v8

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    const/16 v9, 0x24

    invoke-static {p0, v9}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v1

    .line 161
    .local v1, "currentSel":I
    if-lt v1, v4, :cond_2

    move-object v6, v8

    .line 162
    goto :goto_0

    .line 166
    :cond_2
    const/16 v2, 0x28

    .line 167
    .local v2, "fixedOffset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v4, :cond_3

    .line 186
    invoke-virtual {v6, v1}, Lcom/tunnelworkshop/postern/ProxyGroup;->selectOption(I)I

    goto :goto_0

    .line 168
    :cond_3
    array-length v9, p0

    add-int/lit8 v10, v3, 0x1

    mul-int/lit8 v10, v10, 0x24

    add-int/2addr v10, v2

    if-ge v9, v10, :cond_4

    move-object v6, v8

    .line 169
    goto :goto_0

    .line 171
    :cond_4
    mul-int/lit8 v9, v3, 0x24

    add-int/2addr v9, v2

    invoke-static {p0, v9}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v0

    .line 173
    .local v0, "action":I
    invoke-static {v0}, Lcom/tunnelworkshop/postern/RuleGroup;->actionValid(I)Z

    move-result v9

    if-nez v9, :cond_5

    move-object v6, v8

    .line 174
    goto :goto_0

    .line 176
    :cond_5
    const/4 v5, 0x0

    .line 177
    .local v5, "pcname":Ljava/lang/String;
    invoke-static {v0}, Lcom/tunnelworkshop/postern/ProxyGroup;->needProxy(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 178
    mul-int/lit8 v9, v3, 0x24

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x4

    invoke-static {p0, v9, v11}, Lcom/tunnelworkshop/postern/ProxyGroup;->parseString([BII)Ljava/lang/String;

    move-result-object v5

    .line 179
    if-nez v5, :cond_6

    move-object v6, v8

    .line 180
    goto :goto_0

    .line 183
    :cond_6
    invoke-virtual {v6, v0, v5}, Lcom/tunnelworkshop/postern/ProxyGroup;->addOption(ILjava/lang/String;)I

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static needProxy(I)Z
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 27
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 28
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 29
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "max"    # I

    .prologue
    .line 131
    const/4 v1, 0x0

    .local v1, "length":I
    :goto_0
    if-lt v1, p2, :cond_2

    .line 137
    :cond_0
    if-eqz v1, :cond_1

    if-ne v1, p2, :cond_3

    .line 138
    :cond_1
    const/4 v3, 0x0

    .line 144
    :goto_1
    return-object v3

    .line 132
    :cond_2
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    if-eqz v3, :cond_0

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_3
    new-array v2, v1, [C

    .line 141
    .local v2, "str":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v1, :cond_4

    .line 144
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    .line 142
    :cond_4
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addOption(ILjava/lang/String;)I
    .locals 3
    .param p1, "action"    # I
    .param p2, "pcname"    # Ljava/lang/String;

    .prologue
    .line 36
    iget v1, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 37
    const/4 v1, -0x1

    .line 50
    :goto_0
    return v1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/tunnelworkshop/postern/ProxyGroup;->needProxy(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    const/4 p2, 0x0

    .line 42
    :cond_1
    new-instance v0, Lcom/tunnelworkshop/postern/ProxyGroupOption;

    invoke-direct {v0}, Lcom/tunnelworkshop/postern/ProxyGroupOption;-><init>()V

    .line 44
    .local v0, "option":Lcom/tunnelworkshop/postern/ProxyGroupOption;
    iput p1, v0, Lcom/tunnelworkshop/postern/ProxyGroupOption;->action:I

    .line 45
    iput-object p2, v0, Lcom/tunnelworkshop/postern/ProxyGroupOption;->pcname:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->options:[Lcom/tunnelworkshop/postern/ProxyGroupOption;

    iget v2, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    aput-object v0, v1, v2

    .line 48
    iget v1, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    .line 50
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOption(I)Lcom/tunnelworkshop/postern/ProxyGroupOption;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->options:[Lcom/tunnelworkshop/postern/ProxyGroupOption;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getOptionCount()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    return v0
.end method

.method public getPgname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->pgname:Ljava/lang/String;

    return-object v0
.end method

.method public getSelect()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->currentSel:I

    return v0
.end method

.method public selectOption(I)I
    .locals 1
    .param p1, "sel"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    if-lt p1, v0, :cond_0

    .line 63
    const/4 v0, -0x1

    .line 66
    :goto_0
    return v0

    .line 65
    :cond_0
    iput p1, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->currentSel:I

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize()[B
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x20

    const/4 v9, 0x0

    .line 75
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v4, "bStream":Ljava/io/ByteArrayOutputStream;
    new-array v2, v10, [B

    .line 79
    .local v2, "bPgname":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v10, :cond_0

    .line 82
    iget-object v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->pgname:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 83
    .local v3, "bPgname2":[B
    const/4 v6, 0x0

    :goto_1
    array-length v8, v3

    if-lt v6, v8, :cond_1

    .line 86
    array-length v8, v2

    invoke-virtual {v4, v2, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 88
    const/4 v8, 0x4

    new-array v5, v8, [B

    .line 89
    .local v5, "fourByte":[B
    iget v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v13

    .line 90
    iget v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v12

    .line 91
    iget v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v11

    .line 92
    iget v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v9

    .line 94
    array-length v8, v5

    invoke-virtual {v4, v5, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 96
    iget v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->currentSel:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v13

    .line 97
    iget v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->currentSel:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v12

    .line 98
    iget v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->currentSel:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v11

    .line 99
    iget v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->currentSel:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v9

    .line 101
    array-length v8, v5

    invoke-virtual {v4, v5, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 103
    const/4 v6, 0x0

    :goto_2
    iget v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->optionCount:I

    if-lt v6, v8, :cond_2

    .line 126
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    return-object v8

    .line 80
    .end local v3    # "bPgname2":[B
    .end local v5    # "fourByte":[B
    :cond_0
    aput-byte v9, v2, v6

    .line 79
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    .restart local v3    # "bPgname2":[B
    :cond_1
    aget-byte v8, v3, v6

    aput-byte v8, v2, v6

    .line 83
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 104
    .restart local v5    # "fourByte":[B
    :cond_2
    iget-object v8, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->options:[Lcom/tunnelworkshop/postern/ProxyGroupOption;

    aget-object v7, v8, v6

    .line 106
    .local v7, "option":Lcom/tunnelworkshop/postern/ProxyGroupOption;
    iget v8, v7, Lcom/tunnelworkshop/postern/ProxyGroupOption;->action:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v13

    .line 107
    iget v8, v7, Lcom/tunnelworkshop/postern/ProxyGroupOption;->action:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v12

    .line 108
    iget v8, v7, Lcom/tunnelworkshop/postern/ProxyGroupOption;->action:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v11

    .line 109
    iget v8, v7, Lcom/tunnelworkshop/postern/ProxyGroupOption;->action:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v9

    .line 111
    array-length v8, v5

    invoke-virtual {v4, v5, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 113
    new-array v0, v10, [B

    .line 114
    .local v0, "bPcname":[B
    const/4 v6, 0x0

    :goto_3
    if-lt v6, v10, :cond_4

    .line 117
    iget-object v8, v7, Lcom/tunnelworkshop/postern/ProxyGroupOption;->pcname:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 118
    iget-object v8, v7, Lcom/tunnelworkshop/postern/ProxyGroupOption;->pcname:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 119
    .local v1, "bPcname2":[B
    const/4 v6, 0x0

    :goto_4
    array-length v8, v1

    if-lt v6, v8, :cond_5

    .line 123
    .end local v1    # "bPcname2":[B
    :cond_3
    array-length v8, v0

    invoke-virtual {v4, v0, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 115
    :cond_4
    aput-byte v9, v0, v6

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 120
    .restart local v1    # "bPcname2":[B
    :cond_5
    aget-byte v8, v1, v6

    aput-byte v8, v0, v6

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method public setPgname(Ljava/lang/String;)I
    .locals 2
    .param p1, "pgname"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 16
    const/4 v0, -0x1

    .line 19
    :goto_0
    return v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/tunnelworkshop/postern/ProxyGroup;->pgname:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    goto :goto_0
.end method
