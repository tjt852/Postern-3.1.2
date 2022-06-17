.class public Lcom/tunnelworkshop/postern/RelativeLayoutButton;
.super Landroid/widget/LinearLayout;
.source "RelativeLayoutButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->initView()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->initView()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->initView()V

    .line 16
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 29
    invoke-virtual {p0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->addView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0, v4}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setClickable(Z)V

    .line 34
    invoke-virtual {p0, v4}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setFocusable(Z)V

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setFocusableInTouchMode(Z)V

    .line 36
    return-void
.end method

.method private setImageDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    return-void
.end method

.method private setImageResource(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "image_resource_id"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    :cond_0
    return-void
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public setImageRes(I)V
    .locals 1
    .param p1, "image_resource_id"    # I

    .prologue
    .line 48
    const v0, 0x7f070012

    invoke-direct {p0, v0, p1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setImageResource(II)V

    .line 49
    return-void
.end method

.method public setText1(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    const v0, 0x7f070013

    invoke-direct {p0, v0, p1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText(ILjava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public setText2(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 44
    const v0, 0x7f070014

    invoke-direct {p0, v0, p1}, Lcom/tunnelworkshop/postern/RelativeLayoutButton;->setText(ILjava/lang/CharSequence;)V

    .line 45
    return-void
.end method
