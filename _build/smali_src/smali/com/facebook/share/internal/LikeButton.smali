.class public Lcom/facebook/share/internal/LikeButton;
.super Lcom/facebook/FacebookButtonBase;
.source "LikeButton.java"


# direct methods
.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget v0, Lcom/facebook/R$drawable;->com_facebook_button_like_icon_selected:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/facebook/share/internal/LikeButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 72
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->com_facebook_like_button_liked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeButton;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    sget v0, Lcom/facebook/R$drawable;->com_facebook_button_icon:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/facebook/share/internal/LikeButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->com_facebook_like_button_not_liked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeButton;->g()V

    .line 55
    return-void
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/facebook/R$style;->com_facebook_button_like:I

    return v0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->setSelected(Z)V

    .line 44
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeButton;->g()V

    .line 45
    return-void
.end method
