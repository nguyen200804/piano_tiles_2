.class public Lcom/cmplay/base/util/webview/ui/LoadingView;
.super Landroid/widget/RelativeLayout;
.source "LoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;
    }
.end annotation


# instance fields
.field private mLoadingCircle:Landroid/widget/ImageView;

.field private mLoadingTv:Landroid/widget/TextView;

.field private mType:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cmplay/base/util/R$layout;->com_cmplay_message_tag_loading_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    sget v0, Lcom/cmplay/base/util/R$id;->loading_cicle:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingCircle:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/cmplay/base/util/R$id;->loading_tv:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingTv:Landroid/widget/TextView;

    .line 57
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/LoadingView;->startAnim()V

    .line 58
    return-void
.end method

.method private fresh()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 34
    sget-object v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->BIG:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mType:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    if-ne v0, v1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingCircle:Landroid/widget/ImageView;

    sget v1, Lcom/cmplay/base/util/R$drawable;->com_cmplay_tag_loading_circle_big:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    sget-object v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->SMALL:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mType:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    if-ne v0, v1, :cond_2

    .line 38
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingCircle:Landroid/widget/ImageView;

    sget v1, Lcom/cmplay/base/util/R$drawable;->com_cmplay_tag_loading_circle_small:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_2
    sget-object v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->RADAR:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mType:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingCircle:Landroid/widget/ImageView;

    sget v1, Lcom/cmplay/base/util/R$drawable;->com_cmplay_tag_loading_circle_radar:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private startAnim()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 61
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const v1, 0x43b38000    # 359.0f

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 62
    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 64
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 65
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    return-void
.end method


# virtual methods
.method public setLoadingCircle(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public setLoadingTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public setLoadingTextVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mLoadingTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setType(Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;)V
    .locals 0
    .param p1, "type"    # Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/LoadingView;->mType:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    .line 30
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/LoadingView;->fresh()V

    .line 31
    return-void
.end method
