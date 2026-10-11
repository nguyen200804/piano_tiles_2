.class public Lcom/example/luckywheel/ui/LuckyPanelView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:Landroid/content/Context;

.field private h:I

.field private i:F

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/example/luckywheel/ui/i;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/graphics/Path;

.field private l:Landroid/graphics/RectF;

.field private m:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/example/luckywheel/ui/LuckyPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->a:Landroid/graphics/RectF;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    const/4 v0, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->i:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/example/luckywheel/ui/LuckyPanelView;->setLayerType(ILandroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->g:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/example/luckywheel/ui/LuckyPanelView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/example/luckywheel/ui/LuckyPanelView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v3}, Lcom/example/luckywheel/ui/LuckyPanelView;->setKeepScreenOn(Z)V

    invoke-static {p1}, Lcom/example/luckywheel/ui/j;->a(Landroid/content/Context;)Lcom/example/luckywheel/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/j;->a()V

    invoke-static {p1}, Lcom/example/luckywheel/ui/j;->a(Landroid/content/Context;)Lcom/example/luckywheel/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/j;->d()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->j:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->b()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getMeasuredWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getMeasuredWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    shr-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFFF)V
    .locals 12

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->k:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->k:Landroid/graphics/Path;

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->k:Landroid/graphics/Path;

    float-to-double v4, p2

    move/from16 v0, p4

    float-to-double v6, v0

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    float-to-double v4, p3

    move/from16 v0, p4

    float-to-double v6, v0

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->k:Landroid/graphics/Path;

    float-to-double v4, p2

    move/from16 v0, p4

    float-to-double v6, v0

    move/from16 v0, p6

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    float-to-double v4, p3

    move/from16 v0, p4

    float-to-double v6, v0

    move/from16 v0, p6

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->k:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->k:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->l:Landroid/graphics/RectF;

    sub-float v4, p6, p5

    move/from16 v0, p5

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->k:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLjava/lang/String;III)V
    .locals 12

    if-eqz p7, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->a:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, p2, p3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setLinearText(Z)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p7, :cond_2

    iget v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    iget v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    shl-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x404ccccd    # 3.2f

    div-float v6, v2, v3

    const/16 v2, 0xc

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1

    iget-object v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :cond_1
    :goto_1
    const/4 v3, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iget-object v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    iget v5, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    shl-int/lit8 v5, v5, 0x1

    sub-int/2addr v3, v5

    int-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    move/from16 v0, p6

    int-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide v10, 0x4076800000000000L    # 360.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    sub-double v2, v8, v2

    double-to-float v5, v2

    iget-object v7, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    move-object v2, p1

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    iget v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    iget v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    shl-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float v6, v2, v3

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-gt v2, v3, :cond_3

    const/16 v2, 0x10

    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1

    iget-object v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_1

    :cond_3
    const/16 v2, 0x12

    goto :goto_2
.end method

.method private a(Landroid/graphics/Canvas;FII)V
    .locals 10

    iget v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    iget v1, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0xa

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/ui/i;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/i;->f()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    add-float/2addr v2, p2

    float-to-double v2, v2

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->f:I

    int-to-double v4, v3

    iget v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    iget v6, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    shl-int/lit8 v6, v6, 0x1

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    int-to-double v6, v3

    const-wide v8, 0x3ff2e147ae147ae1L    # 1.18

    div-double/2addr v6, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    iget v4, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->f:I

    int-to-double v4, v4

    iget v6, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    iget v7, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    shl-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    const-wide v8, 0x3ff3333333333333L    # 1.2

    div-double/2addr v6, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    new-instance v4, Landroid/graphics/Rect;

    div-int/lit8 v5, v1, 0x2

    sub-int v5, v3, v5

    div-int/lit8 v6, v1, 0x2

    sub-int v6, v2, v6

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v3, v7

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-direct {v4, v5, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->i:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->k:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->m:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/luckywheel/ui/j;->a(Landroid/content/Context;)Lcom/example/luckywheel/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/j;->b()V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/luckywheel/ui/j;->a(Landroid/content/Context;)Lcom/example/luckywheel/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/j;->c()V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/luckywheel/ui/j;->a(Landroid/content/Context;)Lcom/example/luckywheel/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/j;->d()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/example/luckywheel/ui/LuckyPanelView;->m:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-direct/range {p0 .. p1}, Lcom/example/luckywheel/ui/LuckyPanelView;->a(Landroid/graphics/Canvas;)V

    const/high16 v7, 0x43870000    # 270.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v14, v2

    move v15, v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/example/luckywheel/ui/LuckyPanelView;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/example/luckywheel/ui/LuckyPanelView;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/example/luckywheel/ui/LuckyPanelView;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/example/luckywheel/ui/i;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/example/luckywheel/ui/i;->c()I

    move-result v2

    if-ne v2, v15, :cond_2

    invoke-virtual {v13}, Lcom/example/luckywheel/ui/i;->d()I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/example/luckywheel/ui/LuckyPanelView;->c:Landroid/graphics/Paint;

    invoke-virtual {v13}, Lcom/example/luckywheel/ui/i;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getMeasuredWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    invoke-virtual/range {p0 .. p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getMeasuredHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    sub-int/2addr v2, v3

    int-to-float v6, v2

    add-float v8, v7, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/example/luckywheel/ui/LuckyPanelView;->a(Landroid/graphics/Canvas;FFFFF)V

    invoke-virtual {v13}, Lcom/example/luckywheel/ui/i;->a()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/example/luckywheel/ui/i;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v13}, Lcom/example/luckywheel/ui/i;->h()I

    move-result v10

    invoke-virtual {v13}, Lcom/example/luckywheel/ui/i;->d()I

    move-result v11

    invoke-virtual {v13}, Lcom/example/luckywheel/ui/i;->f()I

    move-result v12

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, v16

    invoke-direct/range {v5 .. v12}, Lcom/example/luckywheel/ui/LuckyPanelView;->a(Landroid/graphics/Canvas;FFLjava/lang/String;III)V

    invoke-virtual {v13}, Lcom/example/luckywheel/ui/i;->d()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v2, v14}, Lcom/example/luckywheel/ui/LuckyPanelView;->a(Landroid/graphics/Canvas;FII)V

    add-float v7, v7, v16

    :cond_0
    add-int/lit8 v3, v15, 0x1

    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v15, v3

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v13}, Lcom/example/luckywheel/ui/i;->e()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->f:I

    invoke-virtual {p0, v0, v0}, Lcom/example/luckywheel/ui/LuckyPanelView;->setMeasuredDimension(II)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyPanelView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->b:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->h:I

    sub-int/2addr v1, v2

    new-instance v2, Landroid/graphics/RectF;

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v1

    int-to-float v5, v5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/example/luckywheel/ui/LuckyPanelView;->l:Landroid/graphics/RectF;

    return-void
.end method
