.class Lcom/tunnelworkshop/postern/PosternMain$2;
.super Landroid/widget/ArrayAdapter;
.source "PosternMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tunnelworkshop/postern/PosternMain;->refreshDrawerList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/PosternMain;

.field private final synthetic val$typedArray:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Lcom/tunnelworkshop/postern/PosternMain;Landroid/content/Context;I[Ljava/lang/String;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # [Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternMain$2;->this$0:Lcom/tunnelworkshop/postern/PosternMain;

    iput-object p5, p0, Lcom/tunnelworkshop/postern/PosternMain$2;->val$typedArray:Landroid/content/res/TypedArray;

    .line 114
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tunnelworkshop/postern/PosternMain$2;->val$typedArray:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 120
    .local v1, "resourceId":I
    iget-object v3, p0, Lcom/tunnelworkshop/postern/PosternMain$2;->this$0:Lcom/tunnelworkshop/postern/PosternMain;

    invoke-virtual {v3}, Lcom/tunnelworkshop/postern/PosternMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-object v2
.end method
