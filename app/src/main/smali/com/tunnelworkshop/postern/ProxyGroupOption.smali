.class public Lcom/tunnelworkshop/postern/ProxyGroupOption;
.super Ljava/lang/Object;
.source "ProxyGroupOption.java"


# instance fields
.field public action:I

.field public pcname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringID()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/tunnelworkshop/postern/ProxyGroupOption;->action:I

    packed-switch v0, :pswitch_data_0

    .line 21
    const v0, 0x7f040035

    :goto_0
    return v0

    .line 11
    :pswitch_0
    const v0, 0x7f04002e

    goto :goto_0

    .line 14
    :pswitch_1
    const v0, 0x7f040030

    goto :goto_0

    .line 16
    :pswitch_2
    const v0, 0x7f040032

    goto :goto_0

    .line 18
    :pswitch_3
    const v0, 0x7f040033

    goto :goto_0

    .line 8
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
