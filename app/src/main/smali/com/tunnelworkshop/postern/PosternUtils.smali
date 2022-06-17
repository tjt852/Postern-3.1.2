.class public Lcom/tunnelworkshop/postern/PosternUtils;
.super Ljava/lang/Object;
.source "PosternUtils.java"


# static fields
.field public static final DEFAULT_DNS:Ljava/lang/String; = "8.8.8.8"

.field public static final HOSTIP_PER_PAGE:I = 0x14

.field public static final LOCAL_ADDR:Ljava/lang/String; = "1.1.1.1"

.field public static final LOCAL_DNS:Ljava/lang/String; = "240.0.0.1"

.field public static final MAX_DOMAIN_LEN:I = 0x100

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final TAG:Ljava/lang/String; = "Postern"

.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tunnelworkshop/postern/PosternUtils;->random:Ljava/util/Random;

    .line 38
    const-string v0, "^(([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.){3}([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tunnelworkshop/postern/PosternUtils;->PATTERN:Ljava/util/regex/Pattern;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ntohl([BI)I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 21
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    .line 25
    return v1

    .line 22
    :cond_0
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v2, v3, 0x8

    .line 23
    .local v2, "shift":I
    add-int v3, v0, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ntohs([BI)I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 34
    return v1

    .line 31
    :cond_0
    rsub-int/lit8 v3, v0, 0x1

    mul-int/lit8 v2, v3, 0x8

    .line 32
    .local v2, "shift":I
    add-int v3, v0, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static validateIp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lcom/tunnelworkshop/postern/PosternUtils;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
