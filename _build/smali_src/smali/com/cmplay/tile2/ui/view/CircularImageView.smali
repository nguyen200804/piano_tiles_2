.class public Lcom/cmplay/tile2/ui/view/CircularImageView;
.super Landroid/widget/ImageView;
.source "CircularImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmplay/tile2/ui/view/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const v0, 0x7f01003c

    invoke-direct {p0, p1, p2, v0}, Lcom/cmplay/tile2/ui/view/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->d:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->e:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->e:Landroid/graphics/Paint;

    const-string v1, "#151515"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->f:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->f:Landroid/graphics/Paint;

    const-string v1, "#f1f1f1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    sget-object v0, Lcom/cmplay/tiles4/R$styleable;->CircularImageView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 63
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->a(I)V

    .line 64
    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->b(I)V

    .line 67
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->a()V

    .line 69
    :cond_1
    return-void
.end method

.method private c(I)I
    .locals 3

    .prologue
    .line 144
    .line 145
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 148
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 156
    iget v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->b:I

    goto :goto_0
.end method

.method private d(I)I
    .locals 3

    .prologue
    .line 163
    .line 164
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 165
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 167
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x2

    return v0

    .line 170
    :cond_1
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 175
    iget v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->b:I

    goto :goto_0
.end method

.method private e(I)I
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    int-to-float v1, p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    if-nez p1, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    .line 184
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 185
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 191
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 85
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 88
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->a:I

    .line 73
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->requestLayout()V

    .line 74
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->invalidate()V

    .line 75
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->e:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->invalidate()V

    .line 81
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->c:Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "CircularImageView"

    const-string v1, "CircularImage onDraw"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->g:I

    iput v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->b:I

    .line 110
    iget v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->h:I

    iget v1, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->b:I

    if-ge v0, v1, :cond_0

    .line 111
    iget v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->h:I

    iput v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->b:I

    .line 113
    :cond_0
    iget v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->b:I

    div-int/lit8 v6, v0, 0x2

    .line 114
    iget v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->b:I

    div-int/lit8 v7, v0, 0x2

    .line 115
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v0, v4, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 116
    invoke-direct {p0, v2}, Lcom/cmplay/tile2/ui/view/CircularImageView;->e(I)I

    move-result v8

    .line 117
    sub-int v0, v6, v8

    .line 118
    new-instance v1, Landroid/graphics/RectF;

    sub-int v2, v6, v0

    int-to-float v2, v2

    sub-int v3, v7, v0

    int-to-float v3, v3

    add-int v5, v7, v0

    int-to-float v5, v5

    add-int/2addr v0, v6

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 119
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->e:Landroid/graphics/Paint;

    int-to-float v2, v8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 122
    mul-int/lit8 v0, v8, 0x2

    sub-int v0, v6, v0

    invoke-direct {p0, v9}, Lcom/cmplay/tile2/ui/view/CircularImageView;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    int-to-float v1, v6

    int-to-float v2, v7

    int-to-float v0, v0

    iget-object v3, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    mul-int/lit8 v0, v8, 0x3

    sub-int v0, v6, v0

    add-int/lit8 v0, v0, 0x1

    .line 126
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->c:Landroid/graphics/Bitmap;

    mul-int/lit8 v3, v6, 0x2

    mul-int/lit8 v5, v6, 0x2

    invoke-static {v2, v3, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 127
    iget-object v2, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 128
    int-to-float v1, v6

    int-to-float v2, v7

    int-to-float v0, v0

    iget-object v3, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->e(I)I

    move-result v1

    .line 131
    invoke-static {v0, v1, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    div-int/lit8 v2, v1, 0x2

    sub-int v2, v6, v2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 134
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->c(I)I

    move-result v0

    .line 139
    invoke-direct {p0, p2}, Lcom/cmplay/tile2/ui/view/CircularImageView;->d(I)I

    move-result v1

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setMeasuredDimension(II)V

    .line 141
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 93
    iput p1, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->g:I

    .line 94
    iput p2, p0, Lcom/cmplay/tile2/ui/view/CircularImageView;->h:I

    .line 95
    return-void
.end method
