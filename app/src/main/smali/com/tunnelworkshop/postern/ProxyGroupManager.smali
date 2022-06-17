.class public Lcom/tunnelworkshop/postern/ProxyGroupManager;
.super Ljava/lang/Object;
.source "ProxyGroupManager.java"


# static fields
.field private static instance:Lcom/tunnelworkshop/postern/ProxyGroupManager;


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tunnelworkshop/postern/ProxyGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/tunnelworkshop/postern/ProxyGroupManager;->instance:Lcom/tunnelworkshop/postern/ProxyGroupManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tunnelworkshop/postern/ProxyGroupManager;->list:Ljava/util/ArrayList;

    .line 14
    return-void
.end method

.method private native enumpg()[B
.end method

.method public static getProxyGroupManager()Lcom/tunnelworkshop/postern/ProxyGroupManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/tunnelworkshop/postern/ProxyGroupManager;->instance:Lcom/tunnelworkshop/postern/ProxyGroupManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/tunnelworkshop/postern/ProxyGroupManager;

    invoke-direct {v0}, Lcom/tunnelworkshop/postern/ProxyGroupManager;-><init>()V

    sput-object v0, Lcom/tunnelworkshop/postern/ProxyGroupManager;->instance:Lcom/tunnelworkshop/postern/ProxyGroupManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/tunnelworkshop/postern/ProxyGroupManager;->instance:Lcom/tunnelworkshop/postern/ProxyGroupManager;

    return-object v0
.end method


# virtual methods
.method public addProxyGroup(Lcom/tunnelworkshop/postern/ProxyGroup;)V
    .locals 1
    .param p1, "pg"    # Lcom/tunnelworkshop/postern/ProxyGroup;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyGroupManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyGroupManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    return-void
.end method

.method public getProxyGroup(I)Lcom/tunnelworkshop/postern/ProxyGroup;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyGroupManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tunnelworkshop/postern/ProxyGroup;

    return-object v0
.end method

.method public getProxyGroupByName(Ljava/lang/String;)Lcom/tunnelworkshop/postern/ProxyGroup;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroupCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 46
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 40
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->getProxyGroup(I)Lcom/tunnelworkshop/postern/ProxyGroup;

    move-result-object v1

    .line 42
    .local v1, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    invoke-virtual {v1}, Lcom/tunnelworkshop/postern/ProxyGroup;->getPgname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getProxyGroupCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyGroupManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public refreshProxyGroup()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 54
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->enumpg()[B

    move-result-object v0

    .line 55
    .local v0, "bytes":[B
    if-nez v0, :cond_1

    .line 81
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->clear()V

    .line 60
    invoke-static {v0, v12}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v7

    .line 61
    .local v7, "pgCount":I
    const/4 v8, 0x4

    .line 63
    .local v8, "proced":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 65
    add-int/lit8 v9, v8, 0x4

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 66
    .local v6, "pgBytesLenBuf":[B
    add-int/lit8 v8, v8, 0x4

    .line 68
    invoke-static {v6, v12}, Lcom/tunnelworkshop/postern/PosternUtils;->ntohl([BI)I

    move-result v5

    .line 69
    .local v5, "pgBytesLen":I
    add-int v9, v8, v5

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 70
    .local v4, "pgBytes":[B
    add-int/2addr v8, v5

    .line 72
    invoke-static {v4}, Lcom/tunnelworkshop/postern/ProxyGroup;->deserialize([B)Lcom/tunnelworkshop/postern/ProxyGroup;

    move-result-object v3

    .line 73
    .local v3, "pg":Lcom/tunnelworkshop/postern/ProxyGroup;
    if-eqz v3, :cond_0

    .line 76
    const-string v9, "ProxyGroup %s added\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/ProxyGroup;->getPgname()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "dbg":Ljava/lang/String;
    const-string v9, "Postern"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, v3}, Lcom/tunnelworkshop/postern/ProxyGroupManager;->addProxyGroup(Lcom/tunnelworkshop/postern/ProxyGroup;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
