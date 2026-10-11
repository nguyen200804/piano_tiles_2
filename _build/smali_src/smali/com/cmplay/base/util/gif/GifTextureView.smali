.class public Lcom/cmplay/base/util/gif/GifTextureView;
.super Landroid/view/TextureView;
.source "GifTextureView.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;,
        Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;
    }
.end annotation


# static fields
.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mFreezesAnimation:Z

.field private mInputSource:Lcom/cmplay/base/util/gif/InputSource;

.field private mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSpeedFactor:F

.field private final mTransform:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cmplay/base/util/gif/GifTextureView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 61
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mSpeedFactor:F

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/cmplay/base/util/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mSpeedFactor:F

    .line 77
    invoke-direct {p0, p2, v1, v1}, Lcom/cmplay/base/util/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mSpeedFactor:F

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/cmplay/base/util/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mSpeedFactor:F

    .line 88
    invoke-direct {p0, p2, p3, p4}, Lcom/cmplay/base/util/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/base/util/gif/GifTextureView;)Lcom/cmplay/base/util/gif/InputSource;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/gif/GifTextureView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmplay/base/util/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/gif/GifTextureView;
    .param p1, "x1"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/gif/GifTextureView;->setSuperSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/cmplay/base/util/gif/GifTextureView;Lcom/cmplay/base/util/gif/GifInfoHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/gif/GifTextureView;
    .param p1, "x1"    # Lcom/cmplay/base/util/gif/GifInfoHandle;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/gif/GifTextureView;->updateTextureViewSize(Lcom/cmplay/base/util/gif/GifInfoHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/cmplay/base/util/gif/GifTextureView;)F
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/gif/GifTextureView;

    .prologue
    .line 49
    iget v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mSpeedFactor:F

    return v0
.end method

.method private static findSource(Landroid/content/res/TypedArray;)Lcom/cmplay/base/util/gif/InputSource;
    .locals 4
    .param p0, "textureViewAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    .line 147
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 148
    sget v0, Lcom/cmplay/base/util/R$styleable;->GifTextureView_gifSource:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 152
    :cond_0
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    sget-object v2, Lcom/cmplay/base/util/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$ResourcesSource;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Lcom/cmplay/base/util/gif/InputSource$ResourcesSource;-><init>(Landroid/content/res/Resources;I)V

    goto :goto_0

    .line 156
    :cond_1
    const-string v2, "string"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected string, drawable, mipmap or raw resource type. \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_2
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$AssetSource;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/cmplay/base/util/gif/InputSource$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 92
    if-eqz p1, :cond_2

    .line 93
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "scaleType"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 94
    if-ltz v0, :cond_0

    sget-object v1, Lcom/cmplay/base/util/gif/GifTextureView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 95
    sget-object v1, Lcom/cmplay/base/util/gif/GifTextureView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifTextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/cmplay/base/util/R$styleable;->GifTextureView:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/cmplay/base/util/gif/GifTextureView;->findSource(Landroid/content/res/TypedArray;)Lcom/cmplay/base/util/gif/InputSource;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 100
    sget v1, Lcom/cmplay/base/util/R$styleable;->GifTextureView_isOpaque:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-super {p0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-static {p0, p1, p2, p3}, Lcom/cmplay/base/util/gif/GifViewUtils;->isFreezingAnimation(Landroid/view/View;Landroid/util/AttributeSet;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mFreezesAnimation:Z

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifTextureView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;-><init>(Lcom/cmplay/base/util/gif/GifTextureView;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    .line 108
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->start()V

    .line 112
    :cond_1
    return-void

    .line 104
    :cond_2
    invoke-super {p0, v3}, Landroid/view/TextureView;->setOpaque(Z)V

    goto :goto_0
.end method

.method private setSuperSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 268
    return-void
.end method

.method private updateTextureViewSize(Lcom/cmplay/base/util/gif/GifInfoHandle;)V
    .locals 11
    .param p1, "gifInfoHandle"    # Lcom/cmplay/base/util/gif/GifInfoHandle;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 372
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 373
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifTextureView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 374
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifTextureView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 376
    invoke-virtual {p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 377
    invoke-virtual {p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 378
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 379
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v9, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 380
    sget-object v8, Lcom/cmplay/base/util/gif/GifTextureView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 415
    :goto_0
    invoke-super {p0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 416
    :pswitch_0
    return-void

    .line 382
    :pswitch_1
    div-float v0, v2, v10

    div-float v2, v3, v10

    invoke-virtual {v1, v4, v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 385
    :pswitch_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v0, v6

    .line 386
    mul-float/2addr v4, v0

    mul-float/2addr v0, v5

    div-float/2addr v2, v10

    div-float/2addr v3, v10

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 389
    :pswitch_3
    invoke-virtual {p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_0

    invoke-virtual {p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v3

    if-gtz v6, :cond_0

    .line 394
    :goto_1
    mul-float/2addr v4, v0

    mul-float/2addr v0, v5

    div-float/2addr v2, v10

    div-float/2addr v3, v10

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 392
    :cond_0
    div-float v6, v0, v4

    div-float/2addr v0, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    .line 397
    :pswitch_4
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 398
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 401
    :pswitch_5
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 402
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 405
    :pswitch_6
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 406
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 411
    :pswitch_7
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 412
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getIOException()Ljava/io/IOException;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->access$500(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->access$500(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;)Ljava/io/IOException;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->access$200(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;)Lcom/cmplay/base/util/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getNativeErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/base/util/gif/GifIOException;->fromCode(I)Lcom/cmplay/base/util/gif/GifIOException;

    move-result-object v0

    goto :goto_0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    new-instance p1, Landroid/graphics/Matrix;

    .end local p1    # "transform":Landroid/graphics/Matrix;
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 454
    .restart local p1    # "transform":Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 455
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->dispose(Lcom/cmplay/base/util/gif/GifTextureView;Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;)V

    .line 290
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 291
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 295
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 466
    instance-of v0, p1, Lcom/cmplay/base/util/gif/GifViewSavedState;

    if-nez v0, :cond_0

    .line 467
    invoke-super {p0, p1}, Landroid/view/TextureView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 473
    .end local p1    # "state":Landroid/os/Parcelable;
    :goto_0
    return-void

    .line 470
    .restart local p1    # "state":Landroid/os/Parcelable;
    :cond_0
    check-cast p1, Lcom/cmplay/base/util/gif/GifViewSavedState;

    .line 471
    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p1}, Lcom/cmplay/base/util/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/TextureView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 472
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    iget-object v1, p1, Lcom/cmplay/base/util/gif/GifViewSavedState;->mStates:[[J

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mSavedState:[J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-static {v1}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->access$200(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;)Lcom/cmplay/base/util/gif/GifInfoHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getSavedState()[J

    move-result-object v1

    iput-object v1, v0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mSavedState:[J

    .line 461
    new-instance v1, Lcom/cmplay/base/util/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/view/TextureView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iget-boolean v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mFreezesAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    iget-object v0, v0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mSavedState:[J

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/cmplay/base/util/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[J)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFreezesAnimation(Z)V
    .locals 0
    .param p1, "freezesAnimation"    # Z

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mFreezesAnimation:Z

    .line 483
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/cmplay/base/util/gif/GifTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 426
    return-void
.end method

.method public declared-synchronized setInputSource(Lcom/cmplay/base/util/gif/InputSource;)V
    .locals 1
    .param p1, "inputSource"    # Lcom/cmplay/base/util/gif/InputSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 304
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/cmplay/base/util/gif/GifTextureView;->setInputSource(Lcom/cmplay/base/util/gif/InputSource;Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInputSource(Lcom/cmplay/base/util/gif/InputSource;Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;)V
    .locals 1
    .param p1, "inputSource"    # Lcom/cmplay/base/util/gif/InputSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "placeholderDrawListener"    # Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/cmplay/base/util/gif/annotations/Beta;
    .end annotation

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-virtual {v0, p0, p2}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->dispose(Lcom/cmplay/base/util/gif/GifTextureView;Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;)V

    .line 317
    iput-object p1, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 318
    new-instance v0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;-><init>(Lcom/cmplay/base/util/gif/GifTextureView;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    .line 319
    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_0
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "opaque"    # Z

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifTextureView;->isOpaque()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 282
    invoke-super {p0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 283
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/gif/GifTextureView;->setInputSource(Lcom/cmplay/base/util/gif/InputSource;)V

    .line 285
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 359
    iput-object p1, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 360
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->access$200(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;)Lcom/cmplay/base/util/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/gif/GifTextureView;->updateTextureViewSize(Lcom/cmplay/base/util/gif/GifInfoHandle;)V

    .line 361
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "factor"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .prologue
    .line 332
    iput p1, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mSpeedFactor:F

    .line 333
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->access$200(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;)Lcom/cmplay/base/util/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->setSpeedFactor(F)V

    .line 334
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing SurfaceTexture is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing SurfaceTextureListener is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 437
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView;->mRenderThread:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->access$200(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;)Lcom/cmplay/base/util/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/gif/GifTextureView;->updateTextureViewSize(Lcom/cmplay/base/util/gif/GifInfoHandle;)V

    .line 438
    return-void
.end method
