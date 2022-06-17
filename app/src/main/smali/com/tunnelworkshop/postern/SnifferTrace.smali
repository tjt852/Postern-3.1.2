.class public Lcom/tunnelworkshop/postern/SnifferTrace;
.super Ljava/lang/Object;
.source "SnifferTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;,
        Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;
    }
.end annotation


# static fields
.field private static final FOUR_BYTE:I = 0x4

.field private static final SERI_CONN_FIXED_HDR:I = 0x18

.field private static final SERI_CONN_HDR:I = 0x118

.field private static final SERI_RECORD_HDR:I = 0xc

.field private static final SERI_TRACE_HDR:I = 0x8


# instance fields
.field public conns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;",
            ">;"
        }
    .end annotation
.end field

.field public records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tunnelworkshop/postern/SnifferTrace;->records:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tunnelworkshop/postern/SnifferTrace;->conns:Ljava/util/ArrayList;

    .line 8
    return-void
.end method

.method public static fromBytes([B)Lcom/tunnelworkshop/postern/SnifferTrace;
    .locals 12
    .param p0, "buf"    # [B

    .prologue
    const/4 v9, 0x0

    .line 178
    const/4 v4, 0x0

    .line 181
    .local v4, "proced":I
    array-length v10, p0

    const/16 v11, 0x8

    if-ge v10, v11, :cond_1

    move-object v8, v9

    .line 238
    :cond_0
    :goto_0
    return-object v8

    .line 184
    :cond_1
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v1

    .line 185
    .local v1, "conn_count":I
    const/4 v10, 0x4

    invoke-static {p0, v10}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v6

    .line 187
    .local v6, "record_count":I
    add-int/lit8 v4, v4, 0x8

    .line 189
    new-instance v8, Lcom/tunnelworkshop/postern/SnifferTrace;

    invoke-direct {v8}, Lcom/tunnelworkshop/postern/SnifferTrace;-><init>()V

    .line 192
    .local v8, "trace":Lcom/tunnelworkshop/postern/SnifferTrace;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_2

    .line 215
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_0

    .line 216
    add-int/lit8 v10, v4, 0x4

    array-length v11, p0

    if-le v10, v11, :cond_6

    move-object v8, v9

    .line 217
    goto :goto_0

    .line 193
    :cond_2
    add-int/lit8 v10, v4, 0x4

    array-length v11, p0

    if-le v10, v11, :cond_3

    move-object v8, v9

    .line 194
    goto :goto_0

    .line 197
    :cond_3
    invoke-static {p0, v4}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v2

    .line 198
    .local v2, "conn_size":I
    add-int/lit8 v4, v4, 0x4

    .line 200
    add-int v10, v4, v2

    array-length v11, p0

    if-le v10, v11, :cond_4

    move-object v8, v9

    .line 201
    goto :goto_0

    .line 204
    :cond_4
    invoke-static {p0, v4, v2}, Lcom/tunnelworkshop/postern/SnifferTrace;->parseSnifferConn([BII)Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    move-result-object v0

    .line 205
    .local v0, "conn":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;
    if-nez v0, :cond_5

    move-object v8, v9

    .line 206
    goto :goto_0

    .line 209
    :cond_5
    add-int/2addr v4, v2

    .line 211
    iget-object v10, v8, Lcom/tunnelworkshop/postern/SnifferTrace;->conns:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "conn":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;
    .end local v2    # "conn_size":I
    :cond_6
    invoke-static {p0, v4}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v7

    .line 221
    .local v7, "record_size":I
    add-int/lit8 v4, v4, 0x4

    .line 223
    add-int v10, v4, v7

    array-length v11, p0

    if-le v10, v11, :cond_7

    move-object v8, v9

    .line 224
    goto :goto_0

    .line 227
    :cond_7
    invoke-static {v8, p0, v4, v7}, Lcom/tunnelworkshop/postern/SnifferTrace;->parseSnifferRecord(Lcom/tunnelworkshop/postern/SnifferTrace;[BII)Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    move-result-object v5

    .line 228
    .local v5, "record":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;
    if-nez v5, :cond_8

    move-object v8, v9

    .line 229
    goto :goto_0

    .line 232
    :cond_8
    add-int/2addr v4, v7

    .line 234
    iget-object v10, v8, Lcom/tunnelworkshop/postern/SnifferTrace;->records:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v10, v5, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    iget-object v10, v10, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->records:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static getIpAddressFromBuf([BI)Ljava/net/InetAddress;
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 70
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 73
    .local v1, "ip":[B
    const/4 v3, 0x0

    aget-byte v4, p0, p1

    aput-byte v4, v1, v3

    .line 74
    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 75
    const/4 v3, 0x2

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 76
    const/4 v3, 0x3

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 79
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 84
    .local v2, "ret":Ljava/net/InetAddress;
    :goto_0
    return-object v2

    .line 80
    .end local v2    # "ret":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    .restart local v2    # "ret":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method private static getStringFromBuf([BII)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 60
    add-int/lit8 v2, p2, -0x1

    new-array v1, v2, [C

    .line 63
    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-lt v0, v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 64
    :cond_0
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 63
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_0
.end method

.method private static parseSnifferConn([BII)Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 88
    move v2, p1

    .line 90
    .local v2, "origOffset":I
    const/16 v4, 0x18

    if-ge p2, v4, :cond_0

    move-object v1, v3

    .line 132
    :goto_0
    return-object v1

    .line 93
    :cond_0
    new-instance v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    invoke-direct {v1}, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;-><init>()V

    .line 95
    .local v1, "conn":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;
    invoke-static {p0, p1}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v4

    iput v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->protocol:I

    .line 96
    add-int/lit8 p1, p1, 0x4

    .line 98
    invoke-static {p0, p1}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v4

    iput v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->state:I

    .line 99
    add-int/lit8 p1, p1, 0x4

    .line 101
    invoke-static {p0, p1}, Lcom/tunnelworkshop/postern/SnifferTrace;->getIpAddressFromBuf([BI)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->downIp:Ljava/net/InetAddress;

    .line 102
    add-int/lit8 p1, p1, 0x4

    .line 103
    iget-object v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->downIp:Ljava/net/InetAddress;

    if-nez v4, :cond_1

    move-object v1, v3

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p0, p1}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohs([BI)I

    move-result v4

    iput v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->downPort:I

    .line 107
    add-int/lit8 p1, p1, 0x2

    .line 109
    invoke-static {p0, p1}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v4

    iput v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->addrType:I

    .line 110
    add-int/lit8 p1, p1, 0x4

    .line 112
    iget v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->addrType:I

    if-eq v4, v6, :cond_2

    iget v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->addrType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    move-object v1, v3

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    invoke-static {p0, p1}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v0

    .line 116
    .local v0, "addrLen":I
    add-int/lit8 p1, p1, 0x4

    .line 118
    iget v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->addrType:I

    if-ne v4, v6, :cond_4

    .line 119
    invoke-static {p0, p1, v0}, Lcom/tunnelworkshop/postern/SnifferTrace;->getStringFromBuf([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remoteDomain:Ljava/lang/String;

    .line 125
    :cond_3
    add-int/2addr p1, v0

    .line 127
    sub-int v4, p1, v2

    add-int/lit8 v4, v4, 0x2

    if-le v4, p2, :cond_5

    move-object v1, v3

    .line 128
    goto :goto_0

    .line 121
    :cond_4
    invoke-static {p0, p1}, Lcom/tunnelworkshop/postern/SnifferTrace;->getIpAddressFromBuf([BI)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remoteIp:Ljava/net/InetAddress;

    .line 122
    iget-object v4, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remoteIp:Ljava/net/InetAddress;

    if-nez v4, :cond_3

    move-object v1, v3

    .line 123
    goto :goto_0

    .line 130
    :cond_5
    invoke-static {p0, p1}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohs([BI)I

    move-result v3

    iput v3, v1, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remotePort:I

    goto :goto_0
.end method

.method private static parseSnifferRecord(Lcom/tunnelworkshop/postern/SnifferTrace;[BII)Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;
    .locals 6
    .param p0, "trace"    # Lcom/tunnelworkshop/postern/SnifferTrace;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 136
    move v1, p2

    .line 138
    .local v1, "origOffset":I
    const/16 v3, 0xc

    if-ge p3, v3, :cond_0

    move-object v2, v4

    .line 167
    :goto_0
    return-object v2

    .line 142
    :cond_0
    invoke-static {p1, p2}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v0

    .line 143
    .local v0, "conn_idx":I
    add-int/lit8 p2, p2, 0x4

    .line 145
    iget-object v3, p0, Lcom/tunnelworkshop/postern/SnifferTrace;->conns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v0, v3, :cond_1

    move-object v2, v4

    .line 146
    goto :goto_0

    .line 149
    :cond_1
    new-instance v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    invoke-direct {v2}, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;-><init>()V

    .line 150
    .local v2, "record":Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;
    iget-object v3, p0, Lcom/tunnelworkshop/postern/SnifferTrace;->conns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    iput-object v3, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    .line 152
    invoke-static {p1, p2}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v3

    iput v3, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->dir:I

    .line 153
    add-int/lit8 p2, p2, 0x4

    .line 154
    iget v3, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->dir:I

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->dir:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    move-object v2, v4

    .line 155
    goto :goto_0

    .line 158
    :cond_2
    invoke-static {p1, p2}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v3

    iput v3, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data_len:I

    .line 159
    add-int/lit8 p2, p2, 0x4

    .line 161
    iget v3, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data_len:I

    sub-int v5, p2, v1

    add-int/2addr v3, v5

    if-le v3, p3, :cond_3

    move-object v2, v4

    .line 162
    goto :goto_0

    .line 165
    :cond_3
    iget v3, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data_len:I

    add-int/2addr v3, p2

    invoke-static {p1, p2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iput-object v3, v2, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;->data:[B

    goto :goto_0
.end method
