.class public abstract Lcom/tunnelworkshop/postern/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# static fields
.field public static final RULE_TYPE_DEFAULT:I = 0x5

.field public static final RULE_TYPE_DOMAIN:I = 0x4

.field public static final RULE_TYPE_DOMAIN_KEYWORD:I = 0x2

.field public static final RULE_TYPE_DOMAIN_SUFFIX:I = 0x3

.field public static final RULE_TYPE_GEOIP:I = 0x0

.field public static final RULE_TYPE_IPCIDR:I = 0x1

.field public static final RULE_TYPE_MAX:I = 0x5

.field public static final RULE_TYPE_MIN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRuleFromString(ILjava/lang/String;)Lcom/tunnelworkshop/postern/Rule;
    .locals 1
    .param p0, "type"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    invoke-static {p1}, Lcom/tunnelworkshop/postern/RuleGeoip;->buildRuleFromString(Ljava/lang/String;)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_1
    invoke-static {p1}, Lcom/tunnelworkshop/postern/RuleIpcidr;->buildRuleFromString(Ljava/lang/String;)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_2
    invoke-static {p1}, Lcom/tunnelworkshop/postern/RuleDomainKeyword;->buildRuleFromString(Ljava/lang/String;)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_3
    invoke-static {p1}, Lcom/tunnelworkshop/postern/RuleDomainSuffix;->buildRuleFromString(Ljava/lang/String;)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_4
    invoke-static {p1}, Lcom/tunnelworkshop/postern/RuleDomain;->buildRuleFromString(Ljava/lang/String;)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_5
    invoke-static {p1}, Lcom/tunnelworkshop/postern/RuleDefault;->buildRuleFromString(Ljava/lang/String;)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static deserialize(I[BII)Lcom/tunnelworkshop/postern/Rule;
    .locals 1
    .param p0, "type"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/tunnelworkshop/postern/RuleGeoip;->deserialize([BII)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 22
    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/tunnelworkshop/postern/RuleIpcidr;->deserialize([BII)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 24
    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/tunnelworkshop/postern/RuleDomainKeyword;->deserialize([BII)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 26
    :pswitch_3
    invoke-static {p1, p2, p3}, Lcom/tunnelworkshop/postern/RuleDomainSuffix;->deserialize([BII)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 28
    :pswitch_4
    invoke-static {p1, p2, p3}, Lcom/tunnelworkshop/postern/RuleDomain;->deserialize([BII)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_5
    invoke-static {p1, p2, p3}, Lcom/tunnelworkshop/postern/RuleDefault;->deserialize([BII)Lcom/tunnelworkshop/postern/Rule;

    move-result-object v0

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public abstract serialize()[B
.end method

.method public abstract toString()Ljava/lang/String;
.end method
