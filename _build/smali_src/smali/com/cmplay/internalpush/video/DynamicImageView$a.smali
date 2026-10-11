.class Lcom/cmplay/internalpush/video/DynamicImageView$a;
.super Ljava/lang/Object;
.source "DynamicImageView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/video/DynamicImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/video/DynamicImageView$a$a;
    }
.end annotation


# instance fields
.field a:Lcom/cmplay/internalpush/video/DynamicImageView$a$a;

.field final synthetic b:Lcom/cmplay/internalpush/video/DynamicImageView;

.field private c:Landroid/view/VelocityTracker;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method private constructor <init>(Lcom/cmplay/internalpush/video/DynamicImageView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 278
    iput-object p1, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->b:Lcom/cmplay/internalpush/video/DynamicImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->g:F

    .line 288
    iput v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->h:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmplay/internalpush/video/DynamicImageView;Lcom/cmplay/internalpush/video/DynamicImageView$1;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/cmplay/internalpush/video/DynamicImageView$a;-><init>(Lcom/cmplay/internalpush/video/DynamicImageView;)V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->a:Lcom/cmplay/internalpush/video/DynamicImageView$a$a;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/cmplay/internalpush/video/DynamicImageView$a$a;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/video/DynamicImageView$a$a;-><init>(Lcom/cmplay/internalpush/video/DynamicImageView$a;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->a:Lcom/cmplay/internalpush/video/DynamicImageView$a$a;

    .line 388
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->b:Lcom/cmplay/internalpush/video/DynamicImageView;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->b:Lcom/cmplay/internalpush/video/DynamicImageView;

    iget-object v2, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->a:Lcom/cmplay/internalpush/video/DynamicImageView$a$a;

    invoke-static {v0, v1, v2}, Lcom/cmplay/internalpush/video/DynamicImageView;->a(Lcom/cmplay/internalpush/video/DynamicImageView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 390
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cmplay/internalpush/video/DynamicImageView$a;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/DynamicImageView$a;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->a:Lcom/cmplay/internalpush/video/DynamicImageView$a$a;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->a:Lcom/cmplay/internalpush/video/DynamicImageView$a$a;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/DynamicImageView$a$a;->a()V

    .line 395
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->b:Lcom/cmplay/internalpush/video/DynamicImageView;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->a:Lcom/cmplay/internalpush/video/DynamicImageView$a$a;

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/DynamicImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->a:Lcom/cmplay/internalpush/video/DynamicImageView$a$a;

    .line 398
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cmplay/internalpush/video/DynamicImageView$a;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/DynamicImageView$a;->b()V

    return-void
.end method

.method static synthetic c(Lcom/cmplay/internalpush/video/DynamicImageView$a;)F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->g:F

    return v0
.end method

.method static synthetic d(Lcom/cmplay/internalpush/video/DynamicImageView$a;)F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->h:F

    return v0
.end method

.method static synthetic e(Lcom/cmplay/internalpush/video/DynamicImageView$a;)Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->i:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    move v2, v0

    move v3, v4

    move v5, v4

    .line 299
    :goto_0
    if-ge v2, v6, :cond_0

    .line 300
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v5, v7

    .line 301
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v3, v7

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_0
    int-to-float v2, v6

    div-float v2, v5, v2

    .line 304
    int-to-float v5, v6

    div-float/2addr v3, v5

    .line 309
    int-to-float v5, v6

    iget v7, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->f:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_2

    .line 310
    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->i:Z

    .line 311
    iget-object v5, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1

    .line 312
    iget-object v5, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 314
    :cond_1
    iput v2, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->d:F

    .line 315
    iput v3, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->e:F

    .line 317
    :cond_2
    int-to-float v5, v6

    iput v5, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->f:F

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 372
    :cond_3
    :goto_1
    return v1

    .line 321
    :pswitch_0
    iget-object v4, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    if-nez v4, :cond_4

    .line 322
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    .line 326
    :goto_2
    iget-object v4, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 328
    iput v2, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->d:F

    .line 329
    iput v3, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->e:F

    .line 330
    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->i:Z

    goto :goto_1

    .line 324
    :cond_4
    iget-object v4, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_2

    .line 334
    :pswitch_1
    iget v4, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->d:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->e:F

    sub-float v5, v3, v5

    .line 336
    iget-boolean v6, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->i:Z

    if-nez v6, :cond_6

    .line 339
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
    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->i:Z

    .line 342
    :cond_6
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->i:Z

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->b:Lcom/cmplay/internalpush/video/DynamicImageView;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/DynamicImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 344
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->b:Lcom/cmplay/internalpush/video/DynamicImageView;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/DynamicImageView;->a(Lcom/cmplay/internalpush/video/DynamicImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 345
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->b:Lcom/cmplay/internalpush/video/DynamicImageView;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/DynamicImageView;->b(Lcom/cmplay/internalpush/video/DynamicImageView;)V

    .line 348
    :cond_7
    iput v2, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->d:F

    .line 349
    iput v3, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->e:F

    .line 351
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 359
    :pswitch_2
    iget-boolean v2, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->i:Z

    if-eqz v2, :cond_8

    .line 360
    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->i:Z

    .line 364
    :goto_3
    iput v4, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->f:F

    .line 365
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->c:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 362
    :cond_8
    iget-object v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->b:Lcom/cmplay/internalpush/video/DynamicImageView;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/DynamicImageView;->performClick()Z

    goto :goto_3

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 383
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 377
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->g:F

    .line 378
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/cmplay/internalpush/video/DynamicImageView$a;->h:F

    .line 379
    return-void
.end method
