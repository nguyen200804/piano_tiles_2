.class public Lcom/facebook/notifications/internal/view/f;
.super Landroid/view/View;
.source "GifView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/view/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/notifications/internal/view/f$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/facebook/notifications/internal/view/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/notifications/internal/view/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/notifications/internal/utilities/b;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/utilities/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/f;->setDrawingCacheEnabled(Z)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/facebook/notifications/internal/view/f;->setWillNotCacheDrawing(Z)V

    .line 98
    new-instance v0, Lcom/facebook/notifications/internal/view/f$a;

    invoke-direct {v0, p0, p2}, Lcom/facebook/notifications/internal/view/f$a;-><init>(Lcom/facebook/notifications/internal/view/f;Lcom/facebook/notifications/internal/utilities/b;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/f;->b:Lcom/facebook/notifications/internal/view/f$a;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/f;->c:Landroid/graphics/Paint;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/f;->d:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/f;->e:Landroid/graphics/RectF;

    .line 103
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 105
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 112
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f;->b:Lcom/facebook/notifications/internal/view/f$a;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/view/f$a;->start()V

    .line 113
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f;->b:Lcom/facebook/notifications/internal/view/f$a;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/view/f$a;->interrupt()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f;->b:Lcom/facebook/notifications/internal/view/f$a;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/view/f$a;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 126
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    sget-object v1, Lcom/facebook/notifications/internal/view/f;->a:Ljava/lang/String;

    const-string v2, "Failed to kill decoder thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 167
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    iget-object v2, p0, Lcom/facebook/notifications/internal/view/f;->b:Lcom/facebook/notifications/internal/view/f$a;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f;->b:Lcom/facebook/notifications/internal/view/f$a;

    invoke-static {v0}, Lcom/facebook/notifications/internal/view/f$a;->b(Lcom/facebook/notifications/internal/view/f$a;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 172
    if-nez v1, :cond_0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f;->b:Lcom/facebook/notifications/internal/view/f$a;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 175
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f;->b:Lcom/facebook/notifications/internal/view/f$a;

    invoke-static {v0}, Lcom/facebook/notifications/internal/view/f$a;->b(Lcom/facebook/notifications/internal/view/f$a;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 180
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 182
    if-nez v0, :cond_1

    .line 209
    :goto_1
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    sget-object v3, Lcom/facebook/notifications/internal/view/f;->a:Ljava/lang/String;

    const-string v4, "Failed to wait"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 188
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 189
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 191
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/view/f;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 192
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/view/f;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 194
    div-float v5, v4, v2

    .line 195
    div-float v6, v3, v1

    .line 197
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 199
    mul-float/2addr v1, v5

    .line 200
    mul-float/2addr v2, v5

    .line 202
    sub-float/2addr v3, v1

    div-float/2addr v3, v7

    .line 203
    sub-float/2addr v4, v2

    div-float/2addr v4, v7

    .line 205
    iget-object v5, p0, Lcom/facebook/notifications/internal/view/f;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 206
    iget-object v5, p0, Lcom/facebook/notifications/internal/view/f;->e:Landroid/graphics/RectF;

    add-float/2addr v1, v3

    add-float/2addr v2, v4

    invoke-virtual {v5, v3, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    iget-object v1, p0, Lcom/facebook/notifications/internal/view/f;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/facebook/notifications/internal/view/f;->e:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/notifications/internal/view/f;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f;->b:Lcom/facebook/notifications/internal/view/f$a;

    invoke-static {v0}, Lcom/facebook/notifications/internal/view/f$a;->a(Lcom/facebook/notifications/internal/view/f$a;)Lcom/facebook/notifications/internal/utilities/b;

    move-result-object v4

    .line 131
    if-nez v4, :cond_0

    .line 132
    invoke-virtual {p0, v2, v2}, Lcom/facebook/notifications/internal/view/f;->setMeasuredDimension(II)V

    .line 163
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v5, :cond_1

    move v0, v1

    .line 137
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 139
    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 140
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 142
    invoke-virtual {v4}, Lcom/facebook/notifications/internal/utilities/b;->c()I

    move-result v5

    int-to-float v5, v5

    .line 143
    invoke-virtual {v4}, Lcom/facebook/notifications/internal/utilities/b;->d()I

    move-result v4

    int-to-float v4, v4

    .line 145
    int-to-float v6, v3

    .line 146
    int-to-float v7, v2

    .line 148
    div-float/2addr v7, v4

    .line 149
    div-float/2addr v6, v5

    .line 151
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 152
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 154
    int-to-float v1, v3

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 155
    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 162
    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/facebook/notifications/internal/view/f;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 136
    goto :goto_1

    :cond_2
    move v1, v2

    .line 137
    goto :goto_2

    .line 156
    :cond_3
    if-eqz v0, :cond_4

    .line 157
    int-to-float v0, v2

    div-float v1, v5, v4

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_3

    .line 158
    :cond_4
    if-eqz v1, :cond_5

    .line 159
    int-to-float v0, v3

    div-float v1, v4, v5

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v1, v3

    goto :goto_3

    :cond_5
    move v0, v2

    move v1, v3

    goto :goto_3
.end method
