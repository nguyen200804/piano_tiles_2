.class public Lcom/cmcm/orion/picks/impl/DynamicImageView;
.super Landroid/widget/ImageView;
.source "DynamicImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/impl/DynamicImageView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

.field private b:Landroid/hardware/SensorManager;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Matrix;

.field private final e:Landroid/graphics/Matrix;

.field private final f:Landroid/graphics/RectF;

.field private final g:[F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->c:Landroid/graphics/Matrix;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->d:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->e:Landroid/graphics/Matrix;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->f:Landroid/graphics/RectF;

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->g:[F

    .line 37
    iput v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->h:F

    .line 49
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    invoke-virtual {p0, p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    sget-object v1, Lcom/cmcm/orion/adsdk/R$styleable;->DynamicImageView_incentive:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    sget v1, Lcom/cmcm/orion/adsdk/R$styleable;->DynamicImageView_incentive_width_aspect_view:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 58
    sget v2, Lcom/cmcm/orion/adsdk/R$styleable;->DynamicImageView_incentive_height_aspect_view:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 59
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_0

    .line 60
    div-float v0, v1, v0

    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->h:F

    .line 64
    :cond_0
    return-void
.end method

.method private a()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 272
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 273
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/DynamicImageView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->e:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 27
    .line 3145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3146
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 3148
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/DynamicImageView;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 27
    .line 2217
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a()Landroid/graphics/Matrix;

    move-result-object v0

    .line 2249
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2250
    if-eqz v2, :cond_4

    .line 2251
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v1, v1, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2252
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2253
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->f:Landroid/graphics/RectF;

    move-object v2, v0

    .line 2218
    :goto_0
    if-eqz v2, :cond_3

    .line 2223
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 2224
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 2226
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 2227
    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    .line 2229
    :goto_1
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_0

    .line 2230
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v4, v0

    .line 2232
    :cond_0
    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    .line 2233
    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    .line 2235
    :cond_1
    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_2

    .line 2236
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v1, v3, v1

    .line 2239
    :cond_2
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2213
    :cond_3
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 27
    return-void

    .line 2256
    :cond_4
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 170
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 171
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 173
    new-instance v0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;-><init>(Lcom/cmcm/orion/picks/impl/DynamicImageView;B)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    .line 174
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->a(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)V

    .line 176
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->b:Landroid/hardware/SensorManager;

    .line 181
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 193
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 195
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 165
    .line 1114
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1115
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1116
    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1121
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1122
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 1123
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1125
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 1126
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    .line 1128
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1130
    iget-object v5, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 1131
    iget-object v5, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1134
    iget-object v5, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->c:Landroid/graphics/Matrix;

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    mul-float/2addr v0, v4

    sub-float v0, v2, v0

    div-float/2addr v0, v6

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1263
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1267
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/high16 v9, -0x80000000

    const/high16 v8, 0x40000000    # 2.0f

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 69
    iget v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->h:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getMeasuredWidth()I

    move-result v1

    .line 75
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getMeasuredHeight()I

    move-result v0

    .line 76
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 77
    iget v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->h:F

    div-float v2, v3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    .line 78
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v4, v6

    if-lez v3, :cond_0

    .line 83
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 84
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 85
    if-ne v3, v9, :cond_2

    if-eq v4, v9, :cond_3

    :cond_2
    if-ne v3, v8, :cond_5

    if-ne v4, v8, :cond_5

    .line 88
    :cond_3
    cmpl-float v2, v2, v10

    if-lez v2, :cond_4

    .line 89
    int-to-float v0, v1

    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->h:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 106
    :goto_1
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0

    .line 91
    :cond_4
    int-to-float v1, v0

    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->h:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    .line 93
    :cond_5
    if-eq v3, v8, :cond_6

    if-ne v3, v9, :cond_7

    if-nez v4, :cond_7

    .line 96
    :cond_6
    int-to-float v0, v1

    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->h:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 97
    :cond_7
    if-eq v4, v8, :cond_8

    if-ne v4, v9, :cond_0

    if-nez v3, :cond_0

    .line 100
    :cond_8
    int-to-float v1, v0

    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->h:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-virtual {v0, p2}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
