.class public Lcom/cmplay/tile2/ui/view/ScoreRankView;
.super Landroid/view/View;
.source "ScoreRankView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->c:Landroid/graphics/Bitmap;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->e:I

    .line 40
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->c:Landroid/graphics/Bitmap;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->e:I

    .line 35
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->c:Landroid/graphics/Bitmap;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->e:I

    .line 30
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->a()V

    .line 31
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->a(I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->b:I

    .line 45
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->a(I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->a:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->d:I

    .line 47
    return-void
.end method

.method private b(II)I
    .locals 3

    .prologue
    .line 92
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 93
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 94
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    move p1, v0

    .line 99
    :cond_0
    :goto_0
    return p1

    .line 96
    :cond_1
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 97
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method a(I)I
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 51
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    iget v1, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->a:I

    iget v2, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->b:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->c:Landroid/graphics/Bitmap;

    .line 72
    iput p2, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->e:I

    .line 73
    const-string v0, "ScoreRankView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRankResouce count ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->invalidate()V

    .line 75
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->e:I

    if-nez v0, :cond_2

    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 61
    :goto_0
    iget v2, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->e:I

    if-ge v0, v2, :cond_1

    .line 62
    iget v2, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->a:I

    mul-int/2addr v2, v0

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->d:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 64
    iget-object v3, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->c:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 79
    .line 80
    iget v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->e:I

    if-lez v0, :cond_1

    .line 81
    iget v0, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->e:I

    iget v2, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->a:I

    iget v3, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->d:I

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->d:I

    add-int/2addr v0, v2

    .line 83
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->b(II)I

    move-result v0

    .line 85
    if-lez v0, :cond_0

    .line 86
    iget v1, p0, Lcom/cmplay/tile2/ui/view/ScoreRankView;->b:I

    invoke-direct {p0, v1, p2}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->b(II)I

    move-result v1

    .line 88
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->setMeasuredDimension(II)V

    .line 89
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
