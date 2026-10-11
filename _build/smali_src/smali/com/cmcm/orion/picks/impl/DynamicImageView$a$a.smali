.class final Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;
.super Ljava/lang/Object;
.source "DynamicImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/DynamicImageView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

.field private b:F

.field private c:F

.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 410
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->b:F

    .line 400
    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->c:F

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->d:Z

    .line 403
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->e:F

    .line 404
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->f:F

    .line 406
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->g:F

    .line 408
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->h:F

    .line 411
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->d:Z

    .line 466
    return-void
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->d:Z

    if-eqz v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)F

    move-result v0

    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->b:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->g:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 422
    iget v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->e:F

    .line 423
    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->b:F

    iget v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->f:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->b:F

    .line 428
    :goto_1
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->d(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)F

    move-result v2

    iget v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->g:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 429
    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->e:F

    .line 430
    iget v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->c:F

    iget v4, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->f:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->c:F

    .line 437
    :goto_2
    cmpl-float v3, v0, v1

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->e(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 438
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)F

    move-result v3

    iget v4, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->h:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 439
    iget v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->e:F

    move v3, v0

    .line 444
    :goto_3
    cmpl-float v0, v2, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->e(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 445
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->d(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)F

    move-result v0

    iget v1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 446
    iget v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->e:F

    .line 452
    :goto_4
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/i;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v5, v3

    move v3, v0

    move v0, v5

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a(Lcom/cmcm/orion/picks/impl/DynamicImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 459
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->b(Lcom/cmcm/orion/picks/impl/DynamicImageView;)V

    .line 461
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->b:Lcom/cmcm/orion/picks/impl/DynamicImageView;

    invoke-static {v0, p0}, Lcom/cmcm/orion/picks/impl/DynamicImageView;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)F

    move-result v0

    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->b:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->g:F

    neg-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    .line 425
    iget v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->e:F

    neg-float v0, v0

    .line 426
    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->b:F

    iget v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->f:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->b:F

    goto/16 :goto_1

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->d(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)F

    move-result v2

    iget v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->g:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 432
    iget v2, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->e:F

    neg-float v2, v2

    .line 433
    iget v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->c:F

    iget v4, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->f:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->c:F

    goto/16 :goto_2

    .line 440
    :cond_4
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->c(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)F

    move-result v3

    iget v4, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->h:F

    neg-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 441
    iget v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->e:F

    neg-float v0, v0

    move v3, v0

    goto/16 :goto_3

    .line 447
    :cond_5
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->a:Lcom/cmcm/orion/picks/impl/DynamicImageView$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/DynamicImageView$a;->d(Lcom/cmcm/orion/picks/impl/DynamicImageView$a;)F

    move-result v0

    iget v1, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->h:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 448
    iget v0, p0, Lcom/cmcm/orion/picks/impl/DynamicImageView$a$a;->e:F

    neg-float v0, v0

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_4

    :cond_7
    move v3, v0

    goto/16 :goto_3

    :cond_8
    move v2, v1

    goto/16 :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method
