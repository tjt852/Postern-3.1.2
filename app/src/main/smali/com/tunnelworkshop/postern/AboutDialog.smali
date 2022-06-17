.class public Lcom/tunnelworkshop/postern/AboutDialog;
.super Landroid/app/AlertDialog$Builder;
.source "AboutDialog.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/tunnelworkshop/postern/AboutDialog;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lcom/tunnelworkshop/postern/AboutDialog;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/tunnelworkshop/postern/AboutDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tunnelworkshop/postern/AboutDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public show()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/tunnelworkshop/postern/AboutDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 27
    iget-object v4, p0, Lcom/tunnelworkshop/postern/AboutDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/high16 v5, 0x7f030000

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 29
    iget-object v4, p0, Lcom/tunnelworkshop/postern/AboutDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const v5, 0x7f070001

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 30
    .local v3, "txtUserGuide":Landroid/widget/TextView;
    new-instance v4, Lcom/tunnelworkshop/postern/AboutDialog$1;

    invoke-direct {v4, p0}, Lcom/tunnelworkshop/postern/AboutDialog$1;-><init>(Lcom/tunnelworkshop/postern/AboutDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v4, p0, Lcom/tunnelworkshop/postern/AboutDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/high16 v5, 0x7f070000

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 39
    .local v1, "imageLinkOfficial":Landroid/widget/ImageView;
    new-instance v4, Lcom/tunnelworkshop/postern/AboutDialog$2;

    invoke-direct {v4, p0}, Lcom/tunnelworkshop/postern/AboutDialog$2;-><init>(Lcom/tunnelworkshop/postern/AboutDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v4, p0, Lcom/tunnelworkshop/postern/AboutDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const v5, 0x7f070003

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 48
    .local v2, "imageLinkTwitter":Landroid/widget/ImageView;
    new-instance v4, Lcom/tunnelworkshop/postern/AboutDialog$3;

    invoke-direct {v4, p0}, Lcom/tunnelworkshop/postern/AboutDialog$3;-><init>(Lcom/tunnelworkshop/postern/AboutDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v4, p0, Lcom/tunnelworkshop/postern/AboutDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 57
    .local v0, "imageLinkFacebook":Landroid/widget/ImageView;
    new-instance v4, Lcom/tunnelworkshop/postern/AboutDialog$4;

    invoke-direct {v4, p0}, Lcom/tunnelworkshop/postern/AboutDialog$4;-><init>(Lcom/tunnelworkshop/postern/AboutDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v4, p0, Lcom/tunnelworkshop/postern/AboutDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v4
.end method
