.class Lcom/tunnelworkshop/postern/PosternMain$DrawerItemClickListener;
.super Ljava/lang/Object;
.source "PosternMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tunnelworkshop/postern/PosternMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tunnelworkshop/postern/PosternMain;


# direct methods
.method private constructor <init>(Lcom/tunnelworkshop/postern/PosternMain;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternMain$DrawerItemClickListener;->this$0:Lcom/tunnelworkshop/postern/PosternMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tunnelworkshop/postern/PosternMain;Lcom/tunnelworkshop/postern/PosternMain$DrawerItemClickListener;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/PosternMain$DrawerItemClickListener;-><init>(Lcom/tunnelworkshop/postern/PosternMain;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternMain$DrawerItemClickListener;->this$0:Lcom/tunnelworkshop/postern/PosternMain;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tunnelworkshop/postern/PosternMain;->access$0(Lcom/tunnelworkshop/postern/PosternMain;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 267
    return-void
.end method
