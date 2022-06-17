.class public Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;
.super Ljava/lang/Object;
.source "SnifferTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tunnelworkshop/postern/SnifferTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnifferRecord"
.end annotation


# static fields
.field public static final VPROXY_DIR_DOWNLINK:I = 0x1

.field public static final VPROXY_DIR_UPLINK:I


# instance fields
.field public conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

.field data:[B

.field public data_len:I

.field public dir:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method
