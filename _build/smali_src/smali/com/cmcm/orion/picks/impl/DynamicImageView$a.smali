.class final Lcom/cmcm/orion/picks/impl/DynamicImageView$a;
.super Ljava/lang/Object;
.source "DynamicImageView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/DynamicImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;
    }
.end annotation


# instance fields
.field a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

.field private c:Landroid/view/VelocityTracker;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/DynamicImageView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 276
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->g:F

    .line 286
    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->h:F

    .line 398
    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/DynamicImageView;B)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;-><init>(Lcom/cmcm/orion/picks/impl/DynamicImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)V
    .locals 2

    .prologue
    .line 276
    .line 1384
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;

    if-nez v0, :cond_0

    .line 1385
    new-instance v0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;-><init>(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;

    .line 1386
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 276
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)V
    .locals 2

    .prologue
    .line 276
    .line 1391
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a()V

    .line 1393
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;

    .line 276
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->g:F

    return v0
.end method

.method static synthetic d(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->h:F

    return v0
.end method

.method static synthetic e(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->i:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    move v2, v0

    move v3, v4

    move v5, v4

    .line 297
    :goto_0
    if-ge v2, v6, :cond_0

    .line 298
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v5, v7

    .line 299
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v3, v7

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    int-to-float v2, v6

    div-float v2, v5, v2

    .line 302
    int-to-float v5, v6

    div-float/2addr v3, v5

    .line 307
    int-to-float v5, v6

    iget v7, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->f:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_2

    .line 308
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->i:Z

    .line 309
    iget-object v5, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1

    .line 310
    iget-object v5, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 312
    :cond_1
    iput v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->d:F

    .line 313
    iput v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->e:F

    .line 315
    :cond_2
    int-to-float v5, v6

    iput v5, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->f:F

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 370
    :cond_3
    :goto_1
    return v1

    .line 319
    :pswitch_0
    iget-object v4, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    if-nez v4, :cond_4

    .line 320
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    .line 324
    :goto_2
    iget-object v4, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 326
    iput v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->d:F

    .line 327
    iput v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->e:F

    .line 328
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->i:Z

    goto :goto_1

    .line 322
    :cond_4
    iget-object v4, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_2

    .line 332
    :pswitch_1
    iget v4, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->d:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->e:F

    sub-float v5, v3, v5

    .line 334
    iget-boolean v6, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->i:Z

    if-nez v6, :cond_6

    .line 337
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->i:Z

    .line 340
    :cond_6
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->i:Z

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 342
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a(Lcom/cmcm/orion/picks/impl/DynamicImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 343
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->b(Lcom/cmcm/orion/picks/impl/DynamicImageView;)V

    .line 346
    :cond_7
    iput v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->d:F

    .line 347
    iput v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->e:F

    .line 349
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 357
    :pswitch_2
    iget-boolean v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->i:Z

    if-eqz v2, :cond_8

    .line 358
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->i:Z

    .line 362
    :goto_3
    iput v4, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->f:F

    .line 363
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->performClick()Z

    goto :goto_3

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 381
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 375
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->g:F

    .line 376
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->h:F

    .line 377
    return-void
.end method
