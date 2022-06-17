.class public Lcom/tunnelworkshop/postern/HostsManager;
.super Ljava/lang/Object;
.source "HostsManager.java"


# static fields
.field private static instance:Lcom/tunnelworkshop/postern/HostsManager;


# instance fields
.field private hostipOffset:I

.field private hostipTotalCount:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tunnelworkshop/postern/Hosts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tunnelworkshop/postern/HostsManager;->instance:Lcom/tunnelworkshop/postern/HostsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tunnelworkshop/postern/HostsManager;->list:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/tunnelworkshop/postern/HostsManager;->hostipOffset:I

    .line 18
    return-void
.end method

.method private native enumhosts(II)[B
.end method

.method public static getHostsManager()Lcom/tunnelworkshop/postern/HostsManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tunnelworkshop/postern/HostsManager;->instance:Lcom/tunnelworkshop/postern/HostsManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/tunnelworkshop/postern/HostsManager;

    invoke-direct {v0}, Lcom/tunnelworkshop/postern/HostsManager;-><init>()V

    sput-object v0, Lcom/tunnelworkshop/postern/HostsManager;->instance:Lcom/tunnelworkshop/postern/HostsManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/tunnelworkshop/postern/HostsManager;->instance:Lcom/tunnelworkshop/postern/HostsManager;

    return-object v0
.end method

.method private native gethostscount()I
.end method


# virtual methods
.method public addHosts(Lcom/tunnelworkshop/postern/Hosts;)V
    .locals 1
    .param p1, "h"    # Lcom/tunnelworkshop/postern/Hosts;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tunnelworkshop/postern/HostsManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tunnelworkshop/postern/HostsManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    return-void
.end method

.method public getHostOffset()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/tunnelworkshop/postern/HostsManager;->hostipOffset:I

    return v0
.end method

.method public getHosts(I)Lcom/tunnelworkshop/postern/Hosts;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tunnelworkshop/postern/HostsManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/Hosts;

    return-object v0
.end method

.method public getHostsCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tunnelworkshop/postern/HostsManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHostsTotalCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/tunnelworkshop/postern/HostsManager;->hostipTotalCount:I

    return v0
.end method

.method public refreshHosts(II)V
    .locals 13
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/tunnelworkshop/postern/HostsManager;->enumhosts(II)[B

    move-result-object v0

    .line 64
    .local v0, "bytes":[B
    if-nez v0, :cond_1

    .line 65
    const-string v9, "Postern"

    const-string v10, "enumhosts return null\n"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/HostsManager;->clear()V

    .line 71
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v6

    .line 72
    .local v6, "hostsCount":I
    const/4 v8, 0x4

    .line 74
    .local v8, "proced":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 76
    add-int/lit8 v9, v8, 0x4

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 77
    .local v5, "hostsBytesLenBuf":[B
    add-int/lit8 v8, v8, 0x4

    .line 79
    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v4

    .line 80
    .local v4, "hostsBytesLen":I
    add-int v9, v8, v4

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 81
    .local v3, "hostsBytes":[B
    add-int/2addr v8, v4

    .line 83
    invoke-static {v3}, Lcom/tunnelworkshop/postern/Hosts;->deserialize([B)Lcom/tunnelworkshop/postern/Hosts;

    move-result-object v2

    .line 84
    .local v2, "h":Lcom/tunnelworkshop/postern/Hosts;
    if-eqz v2, :cond_0

    .line 87
    const-string v9, "Hosts %s-->%s added\n"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/Hosts;->getDomain()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/tunnelworkshop/postern/Hosts;->getIp()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "dbg":Ljava/lang/String;
    const-string v9, "Postern"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, v2}, Lcom/tunnelworkshop/postern/HostsManager;->addHosts(Lcom/tunnelworkshop/postern/Hosts;)V

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public refreshHostsTotalCount()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/HostsManager;->gethostscount()I

    move-result v0

    iput v0, p0, Lcom/tunnelworkshop/postern/HostsManager;->hostipTotalCount:I

    .line 60
    return-void
.end method

.method public setHostOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/tunnelworkshop/postern/HostsManager;->hostipOffset:I

    .line 48
    return-void
.end method
