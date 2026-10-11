.class public Lcom/duapps/ad/interstitial/ArcView;
.super Landroid/view/View;
.source "ArcView.java"


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/duapps/ad/interstitial/ArcView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/interstitial/ArcView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/interstitial/ArcView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 40
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 42
    sget-object v1, Lcom/duapps/ad/R$styleable;->Arc:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 44
    sget v2, Lcom/duapps/ad/R$styleable;->Arc_ArcLevel:I

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 45
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 46
    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 47
    new-instance v3, Landroid/graphics/RectF;

    neg-int v4, v0

    div-int/2addr v4, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    div-int v2, v0, v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {v3, v4, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/duapps/ad/interstitial/ArcView;->a:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/interstitial/ArcView;->b:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/duapps/ad/interstitial/ArcView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/duapps/ad/interstitial/ArcView;->b:Landroid/graphics/Paint;

    sget v2, Lcom/duapps/ad/R$styleable;->Arc_ArcColor:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/duapps/ad/interstitial/ArcView;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 61
    iget-object v1, p0, Lcom/duapps/ad/interstitial/ArcView;->a:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/duapps/ad/interstitial/ArcView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 63
    return-void
.end method
