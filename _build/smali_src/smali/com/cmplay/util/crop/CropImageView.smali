.class public Lcom/cmplay/util/crop/CropImageView;
.super Lcom/cmplay/util/crop/ImageViewTouchBase;
.source "CropImageView.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/util/crop/c;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/cmplay/util/crop/c;

.field c:Landroid/content/Context;

.field private k:F

.field private l:F

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/cmplay/util/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/cmplay/util/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/cmplay/util/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method private b(Lcom/cmplay/util/crop/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 146
    iget-object v1, p1, Lcom/cmplay/util/crop/c;->b:Landroid/graphics/Rect;

    .line 148
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 149
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 151
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 152
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 154
    if-eqz v2, :cond_2

    .line 155
    :goto_0
    if-eqz v0, :cond_3

    .line 157
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/util/crop/CropImageView;->b(FF)V

    .line 160
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 154
    goto :goto_0

    :cond_3
    move v0, v1

    .line 155
    goto :goto_1
.end method

.method private c(Lcom/cmplay/util/crop/c;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v4, 0x3f19999a    # 0.6f

    .line 165
    iget-object v0, p1, Lcom/cmplay/util/crop/c;->b:Landroid/graphics/Rect;

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 170
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 171
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 173
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 174
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 176
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 177
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->c()F

    move-result v1

    mul-float/2addr v0, v1

    .line 178
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 180
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->c()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 181
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/cmplay/util/crop/c;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v6

    iget-object v2, p1, Lcom/cmplay/util/crop/c;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v7

    .line 182
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->a()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 183
    aget v2, v1, v6

    aget v1, v1, v7

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/cmplay/util/crop/CropImageView;->a(FFFF)V

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/cmplay/util/crop/CropImageView;->b(Lcom/cmplay/util/crop/c;)V

    .line 187
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected a(FF)V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(FF)V

    .line 79
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/c;

    .line 80
    iget-object v2, v0, Lcom/cmplay/util/crop/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 81
    invoke-virtual {v0}, Lcom/cmplay/util/crop/c;->a()V

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method protected a(FFF)V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(FFF)V

    .line 52
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/c;

    .line 53
    iget-object v2, v0, Lcom/cmplay/util/crop/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->a()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 54
    invoke-virtual {v0}, Lcom/cmplay/util/crop/c;->a()V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic a(Lcom/cmplay/util/crop/ImageViewTouchBase$a;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Lcom/cmplay/util/crop/ImageViewTouchBase$a;)V

    return-void
.end method

.method public a(Lcom/cmplay/util/crop/c;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->invalidate()V

    .line 200
    return-void
.end method

.method public bridge synthetic a(Lcom/cmplay/util/crop/e;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Lcom/cmplay/util/crop/e;Z)V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Lcom/cmplay/util/crop/ImageViewTouchBase;->b()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/cmplay/util/crop/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 192
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/c;

    .line 193
    invoke-virtual {v0, p1}, Lcom/cmplay/util/crop/c;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 36
    invoke-super/range {p0 .. p5}, Lcom/cmplay/util/crop/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 37
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->f:Lcom/cmplay/util/crop/e;

    invoke-virtual {v0}, Lcom/cmplay/util/crop/e;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/c;

    .line 40
    iget-object v2, v0, Lcom/cmplay/util/crop/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->a()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 41
    invoke-virtual {v0}, Lcom/cmplay/util/crop/c;->a()V

    .line 42
    invoke-virtual {v0}, Lcom/cmplay/util/crop/c;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-direct {p0, v0}, Lcom/cmplay/util/crop/CropImageView;->c(Lcom/cmplay/util/crop/c;)V

    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 87
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->c:Landroid/content/Context;

    check-cast v0, Lcom/cmplay/util/crop/CropImageActivity;

    .line 88
    invoke-virtual {v0}, Lcom/cmplay/util/crop/CropImageActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_2
    move v0, v1

    .line 141
    goto :goto_0

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/c;

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/cmplay/util/crop/c;->a(FF)I

    move-result v3

    .line 96
    if-eq v3, v1, :cond_3

    .line 97
    iput v3, p0, Lcom/cmplay/util/crop/CropImageView;->m:I

    .line 98
    iput-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->b:Lcom/cmplay/util/crop/c;

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/cmplay/util/crop/CropImageView;->k:F

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/cmplay/util/crop/CropImageView;->l:F

    .line 101
    iget-object v2, p0, Lcom/cmplay/util/crop/CropImageView;->b:Lcom/cmplay/util/crop/c;

    const/16 v0, 0x20

    if-ne v3, v0, :cond_4

    sget-object v0, Lcom/cmplay/util/crop/c$b;->b:Lcom/cmplay/util/crop/c$b;

    :goto_3
    invoke-virtual {v2, v0}, Lcom/cmplay/util/crop/c;->a(Lcom/cmplay/util/crop/c$b;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/cmplay/util/crop/c$b;->c:Lcom/cmplay/util/crop/c$b;

    goto :goto_3

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->b:Lcom/cmplay/util/crop/c;

    if-eqz v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->b:Lcom/cmplay/util/crop/c;

    invoke-direct {p0, v0}, Lcom/cmplay/util/crop/CropImageView;->c(Lcom/cmplay/util/crop/c;)V

    .line 111
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->b:Lcom/cmplay/util/crop/c;

    sget-object v2, Lcom/cmplay/util/crop/c$b;->a:Lcom/cmplay/util/crop/c$b;

    invoke-virtual {v0, v2}, Lcom/cmplay/util/crop/c;->a(Lcom/cmplay/util/crop/c$b;)V

    .line 113
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->b:Lcom/cmplay/util/crop/c;

    goto :goto_1

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->b:Lcom/cmplay/util/crop/c;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->b:Lcom/cmplay/util/crop/c;

    iget v2, p0, Lcom/cmplay/util/crop/CropImageView;->m:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/cmplay/util/crop/CropImageView;->k:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/cmplay/util/crop/CropImageView;->l:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/cmplay/util/crop/c;->a(IFF)V

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/cmplay/util/crop/CropImageView;->k:F

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/cmplay/util/crop/CropImageView;->l:F

    .line 121
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageView;->b:Lcom/cmplay/util/crop/c;

    invoke-direct {p0, v0}, Lcom/cmplay/util/crop/CropImageView;->b(Lcom/cmplay/util/crop/c;)V

    goto/16 :goto_1

    .line 128
    :pswitch_3
    invoke-virtual {p0, v1, v1}, Lcom/cmplay/util/crop/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 135
    :pswitch_4
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageView;->c()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 136
    invoke-virtual {p0, v1, v1}, Lcom/cmplay/util/crop/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 126
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Bitmap;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/cmplay/util/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
