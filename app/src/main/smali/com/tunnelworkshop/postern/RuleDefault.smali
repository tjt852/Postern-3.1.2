.class public Lcom/tunnelworkshop/postern/RuleDefault;
.super Lcom/tunnelworkshop/postern/Rule;
.source "RuleDefault.java"


# static fields
.field public static final DEFAULT_RULE_SERIALIZE_DUMMY:B = -0x1t

.field public static final DEFAULT_RULE_SERIALIZE_LEN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/Rule;-><init>()V

    return-void
.end method

.method public static buildRuleFromString(Ljava/lang/String;)Lcom/tunnelworkshop/postern/Rule;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/tunnelworkshop/postern/RuleDefault;

    invoke-direct {v0}, Lcom/tunnelworkshop/postern/RuleDefault;-><init>()V

    return-object v0
.end method

.method public static deserialize([BII)Lcom/tunnelworkshop/postern/Rule;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 20
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    aget-byte v0, p0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tunnelworkshop/postern/RuleDefault;

    invoke-direct {v0}, Lcom/tunnelworkshop/postern/RuleDefault;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public serialize()[B
    .locals 3

    .prologue
    .line 13
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 14
    .local v0, "buf":[B
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 16
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/String;

    const-string v1, "*"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
