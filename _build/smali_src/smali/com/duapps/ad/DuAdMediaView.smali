.class public Lcom/duapps/ad/DuAdMediaView;
.super Landroid/widget/RelativeLayout;
.source "DuAdMediaView.java"


# instance fields
.field private a:Z

.field private b:Lcom/facebook/ads/MediaView;

.field private c:Lcom/duapps/ad/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView;->c:Lcom/duapps/ad/d;

    return-object v0
.end method

.method private b(Lcom/duapps/ad/entity/a/a;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 54
    if-nez p1, :cond_1

    .line 55
    invoke-virtual {p0, v1}, Lcom/duapps/ad/DuAdMediaView;->setVisibility(I)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-interface {p1}, Lcom/duapps/ad/entity/a/a;->m()Ljava/lang/Object;

    move-result-object v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    invoke-virtual {p0, v1}, Lcom/duapps/ad/DuAdMediaView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {p1}, Lcom/duapps/ad/entity/a/a;->j()I

    move-result v1

    .line 66
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 67
    check-cast v0, Lcom/facebook/ads/NativeAd;

    .line 68
    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView;->b:Lcom/facebook/ads/MediaView;

    if-nez v1, :cond_3

    .line 69
    new-instance v1, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0}, Lcom/duapps/ad/DuAdMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/duapps/ad/DuAdMediaView;->b:Lcom/facebook/ads/MediaView;

    .line 70
    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView;->b:Lcom/facebook/ads/MediaView;

    iget-boolean v2, p0, Lcom/duapps/ad/DuAdMediaView;->a:Z

    invoke-virtual {v1, v2}, Lcom/facebook/ads/MediaView;->setAutoplay(Z)V

    .line 71
    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView;->b:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/MediaView;->setFocusable(Z)V

    .line 72
    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView;->b:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/MediaView;->setClickable(Z)V

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    iget-object v2, p0, Lcom/duapps/ad/DuAdMediaView;->b:Lcom/facebook/ads/MediaView;

    invoke-virtual {p0, v2, v1}, Lcom/duapps/ad/DuAdMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView;->b:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 77
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView;->b:Lcom/facebook/ads/MediaView;

    new-instance v1, Lcom/duapps/ad/DuAdMediaView$1;

    invoke-direct {v1, p0}, Lcom/duapps/ad/DuAdMediaView$1;-><init>(Lcom/duapps/ad/DuAdMediaView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/duapps/ad/entity/a/a;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/duapps/ad/DuAdMediaView;->b(Lcom/duapps/ad/entity/a/a;)V

    .line 27
    return-void
.end method

.method public a(Lcom/duapps/ad/f;)V
    .locals 1

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/duapps/ad/DuAdMediaView;->setVisibility(I)V

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/duapps/ad/f;->m()Lcom/duapps/ad/entity/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duapps/ad/DuAdMediaView;->b(Lcom/duapps/ad/entity/a/a;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/duapps/ad/DuAdMediaView;->a:Z

    .line 48
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView;->b:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView;->b:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->setAutoplay(Z)V

    .line 51
    :cond_0
    return-void
.end method
