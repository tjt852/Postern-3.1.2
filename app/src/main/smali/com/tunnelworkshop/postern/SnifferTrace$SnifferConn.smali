.class public Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;
.super Ljava/lang/Object;
.source "SnifferTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tunnelworkshop/postern/SnifferTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnifferConn"
.end annotation


# static fields
.field public static final ADDR_DOMAIN:I = 0x2

.field public static final ADDR_INVALID:I = 0x3

.field public static final ADDR_IPV4:I = 0x1


# instance fields
.field public addrType:I

.field public downIp:Ljava/net/InetAddress;

.field public downPort:I

.field public protocol:I

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

.field public remoteDomain:Ljava/lang/String;

.field public remoteIp:Ljava/net/InetAddress;

.field public remotePort:I

.field public state:I

.field public totalLen:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->records:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->addrType:I

    .line 37
    iput-object v1, p0, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remoteDomain:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;->remoteIp:Ljava/net/InetAddress;

    .line 42
    return-void
.end method
