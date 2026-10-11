.class public Lcom/duapps/ad/interstitial/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private b:F

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->a:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->c:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->d:Landroid/graphics/Paint;

    .line 25
    invoke-direct {p0, p1}, Lcom/duapps/ad/interstitial/RoundImageView;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->a:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->c:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->d:Landroid/graphics/Paint;

    .line 20
    invoke-direct {p0, p1}, Lcom/duapps/ad/interstitial/RoundImageView;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 34
    iget-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 37
    iget-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->d:Landroid/graphics/Paint;

    const v1, -0x1c1c1d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->b:F

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/16 v4, 0x1f

    .line 59
    iget-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/duapps/ad/interstitial/RoundImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 60
    iget-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/duapps/ad/interstitial/RoundImageView;->b:F

    iget v2, p0, Lcom/duapps/ad/interstitial/RoundImageView;->b:F

    iget-object v3, p0, Lcom/duapps/ad/interstitial/RoundImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 61
    iget-object v0, p0, Lcom/duapps/ad/interstitial/RoundImageView;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/duapps/ad/interstitial/RoundImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 64
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 52
    invoke-virtual {p0}, Lcom/duapps/ad/interstitial/RoundImageView;->getWidth()I

    move-result v0

    .line 53
    invoke-virtual {p0}, Lcom/duapps/ad/interstitial/RoundImageView;->getHeight()I

    move-result v1

    .line 54
    iget-object v2, p0, Lcom/duapps/ad/interstitial/RoundImageView;->a:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    return-void
.end method
