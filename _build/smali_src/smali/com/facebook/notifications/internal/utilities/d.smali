.class public Lcom/facebook/notifications/internal/utilities/d;
.super Ljava/lang/Object;
.source "RoundedViewHelper.java"


# instance fields
.field public final a:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:F

.field private final c:I

.field private final d:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;FI)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p3, p0, Lcom/facebook/notifications/internal/utilities/d;->c:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/d;->b:F

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/d;->d:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/d;->a:Landroid/graphics/Path;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 88
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/d;->c:I

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0xff

    const/4 v6, 0x4

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/d;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0
.end method

.method public a(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/d;->c:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/d;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 61
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/d;->d:Landroid/graphics/RectF;

    sub-int v1, p4, p2

    int-to-float v1, v1

    sub-int v2, p5, p3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 64
    iget v1, p0, Lcom/facebook/notifications/internal/utilities/d;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 65
    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/notifications/internal/utilities/d;->b:F

    aput v2, v0, v1

    .line 66
    const/4 v1, 0x1

    iget v2, p0, Lcom/facebook/notifications/internal/utilities/d;->b:F

    aput v2, v0, v1

    .line 69
    :cond_2
    iget v1, p0, Lcom/facebook/notifications/internal/utilities/d;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 70
    const/4 v1, 0x2

    iget v2, p0, Lcom/facebook/notifications/internal/utilities/d;->b:F

    aput v2, v0, v1

    .line 71
    const/4 v1, 0x3

    iget v2, p0, Lcom/facebook/notifications/internal/utilities/d;->b:F

    aput v2, v0, v1

    .line 74
    :cond_3
    iget v1, p0, Lcom/facebook/notifications/internal/utilities/d;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 75
    const/4 v1, 0x4

    iget v2, p0, Lcom/facebook/notifications/internal/utilities/d;->b:F

    aput v2, v0, v1

    .line 76
    const/4 v1, 0x5

    iget v2, p0, Lcom/facebook/notifications/internal/utilities/d;->b:F

    aput v2, v0, v1

    .line 79
    :cond_4
    iget v1, p0, Lcom/facebook/notifications/internal/utilities/d;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 80
    const/4 v1, 0x6

    iget v2, p0, Lcom/facebook/notifications/internal/utilities/d;->b:F

    aput v2, v0, v1

    .line 81
    const/4 v1, 0x7

    iget v2, p0, Lcom/facebook/notifications/internal/utilities/d;->b:F

    aput v2, v0, v1

    .line 84
    :cond_5
    iget-object v1, p0, Lcom/facebook/notifications/internal/utilities/d;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/notifications/internal/utilities/d;->d:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
