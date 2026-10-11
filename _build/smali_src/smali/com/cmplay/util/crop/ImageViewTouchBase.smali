.class abstract Lcom/cmplay/util/crop/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/crop/ImageViewTouchBase$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Ljava/lang/Runnable;

.field protected d:Landroid/graphics/Matrix;

.field protected e:Landroid/graphics/Matrix;

.field protected final f:Lcom/cmplay/util/crop/e;

.field g:I

.field h:I

.field i:F

.field protected j:Landroid/os/Handler;

.field private k:Lcom/cmplay/util/crop/ImageViewTouchBase$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->b:[F

    .line 60
    new-instance v0, Lcom/cmplay/util/crop/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cmplay/util/crop/e;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    .line 62
    iput v3, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->g:I

    .line 63
    iput v3, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->h:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->j:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->f()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->b:[F

    .line 60
    new-instance v0, Lcom/cmplay/util/crop/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cmplay/util/crop/e;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    .line 62
    iput v3, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->g:I

    .line 63
    iput v3, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->h:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->j:Landroid/os/Handler;

    .line 86
    invoke-direct {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->f()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->b:[F

    .line 60
    new-instance v0, Lcom/cmplay/util/crop/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cmplay/util/crop/e;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    .line 62
    iput v3, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->g:I

    .line 63
    iput v3, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->h:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->j:Landroid/os/Handler;

    .line 91
    invoke-direct {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->f()V

    .line 92
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    invoke-virtual {v0}, Lcom/cmplay/util/crop/e;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    invoke-virtual {v1, p1}, Lcom/cmplay/util/crop/e;->a(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    invoke-virtual {v1, p2}, Lcom/cmplay/util/crop/e;->a(I)V

    .line 152
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->k:Lcom/cmplay/util/crop/ImageViewTouchBase$a;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->k:Lcom/cmplay/util/crop/ImageViewTouchBase$a;

    invoke-interface {v1, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase$a;->a(Landroid/graphics/Bitmap;)V

    .line 155
    :cond_1
    return-void
.end method

.method private a(Lcom/cmplay/util/crop/e;Landroid/graphics/Matrix;Z)V
    .locals 8

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 261
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 262
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 264
    invoke-virtual {p1}, Lcom/cmplay/util/crop/e;->f()I

    move-result v2

    int-to-float v2, v2

    .line 265
    invoke-virtual {p1}, Lcom/cmplay/util/crop/e;->e()I

    move-result v3

    int-to-float v3, v3

    .line 266
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 269
    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 270
    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 271
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 273
    if-eqz p3, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/cmplay/util/crop/e;->c()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 276
    :cond_0
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 277
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 278
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 242
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 243
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Matrix;)F
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;I)F
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->b:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 247
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->b:[F

    aget v0, v0, p2

    return v0
.end method

.method public a()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 290
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 291
    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Lcom/cmplay/util/crop/e;Landroid/graphics/Matrix;Z)V

    .line 292
    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 293
    return-object v0
.end method

.method protected a(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 340
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 341
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 342
    invoke-virtual {p0, p1, v0, v1}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(FFF)V

    .line 343
    return-void
.end method

.method protected a(FF)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 391
    return-void
.end method

.method protected a(FFF)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 307
    iget v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->i:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 308
    iget p1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->i:F

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->c()F

    move-result v0

    .line 312
    div-float v0, p1, v0

    .line 314
    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 315
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 316
    invoke-virtual {p0, v2, v2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(ZZ)V

    .line 317
    return-void
.end method

.method protected a(FFFF)V
    .locals 10

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->c()F

    move-result v0

    sub-float v0, p1, v0

    div-float v7, v0, p4

    .line 322
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->c()F

    move-result v6

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 325
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->j:Landroid/os/Handler;

    new-instance v1, Lcom/cmplay/util/crop/ImageViewTouchBase$2;

    move-object v2, p0

    move v3, p4

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/cmplay/util/crop/ImageViewTouchBase$2;-><init>(Lcom/cmplay/util/crop/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/cmplay/util/crop/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cmplay/util/crop/e;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Lcom/cmplay/util/crop/e;Z)V

    .line 166
    return-void
.end method

.method public a(Lcom/cmplay/util/crop/ImageViewTouchBase$a;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->k:Lcom/cmplay/util/crop/ImageViewTouchBase$a;

    .line 96
    return-void
.end method

.method public a(Lcom/cmplay/util/crop/e;Z)V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 171
    if-gtz v0, :cond_0

    .line 172
    new-instance v0, Lcom/cmplay/util/crop/ImageViewTouchBase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/util/crop/ImageViewTouchBase$1;-><init>(Lcom/cmplay/util/crop/ImageViewTouchBase;Lcom/cmplay/util/crop/e;Z)V

    iput-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->c:Ljava/lang/Runnable;

    .line 193
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/cmplay/util/crop/e;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Lcom/cmplay/util/crop/e;Landroid/graphics/Matrix;Z)V

    .line 182
    invoke-virtual {p1}, Lcom/cmplay/util/crop/e;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmplay/util/crop/e;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 188
    :goto_1
    if-eqz p2, :cond_1

    .line 189
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 192
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->e()F

    move-result v0

    iput v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->i:F

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected a(ZZ)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    invoke-virtual {v1}, Lcom/cmplay/util/crop/e;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 202
    if-nez v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v2

    .line 207
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, v0, v0, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 208
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 210
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 211
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 215
    if-eqz p2, :cond_6

    .line 216
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->getHeight()I

    move-result v4

    .line 217
    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 218
    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v6

    iget v4, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    .line 226
    :goto_1
    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->getWidth()I

    move-result v4

    .line 228
    int-to-float v5, v4

    cmpg-float v5, v2, v5

    if-gez v5, :cond_4

    .line 229
    int-to-float v0, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 237
    :cond_1
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(FF)V

    .line 238
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 219
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 220
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_1

    .line 221
    :cond_3
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    .line 222
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_1

    .line 230
    :cond_4
    iget v2, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 231
    iget v0, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_2

    .line 232
    :cond_5
    iget v2, v3, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 233
    int-to-float v0, v4

    iget v2, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;Z)V

    .line 159
    return-void
.end method

.method protected b(FF)V
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(FF)V

    .line 395
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 396
    return-void
.end method

.method protected c()F
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected d()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 285
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 286
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected e()F
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    invoke-virtual {v0}, Lcom/cmplay/util/crop/e;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    const/high16 v0, 0x3f800000    # 1.0f

    .line 303
    :goto_0
    return v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    invoke-virtual {v0}, Lcom/cmplay/util/crop/e;->f()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 302
    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    invoke-virtual {v1}, Lcom/cmplay/util/crop/e;->e()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 116
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 125
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->c()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(F)V

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 101
    sub-int v0, p4, p2

    iput v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->g:I

    .line 102
    sub-int v0, p5, p3

    iput v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->h:I

    .line 103
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->c:Ljava/lang/Runnable;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->c:Ljava/lang/Runnable;

    .line 106
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    invoke-virtual {v0}, Lcom/cmplay/util/crop/e;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->f:Lcom/cmplay/util/crop/e;

    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Lcom/cmplay/util/crop/e;Landroid/graphics/Matrix;Z)V

    .line 110
    invoke-virtual {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 112
    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 139
    return-void
.end method
