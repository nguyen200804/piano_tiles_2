.class public Lcom/duapps/ad/offerwall/ui/i;
.super Lcom/duapps/ad/offerwall/ui/d;
.source "TopicBannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/offerwall/ui/i$a;
    }
.end annotation


# instance fields
.field f:I

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/duapps/ad/offerwall/ui/i$a;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Landroid/os/Handler;

.field private n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/ui/d;-><init>(Landroid/content/Context;)V

    .line 48
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/i;->f:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/i;->j:Z

    .line 51
    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/i;->k:Z

    .line 53
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/i;->l:I

    .line 59
    new-instance v0, Lcom/duapps/ad/offerwall/ui/i$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/ui/i$1;-><init>(Lcom/duapps/ad/offerwall/ui/i;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->m:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/duapps/ad/offerwall/ui/i$2;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/ui/i$2;-><init>(Lcom/duapps/ad/offerwall/ui/i;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/i;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/ui/i;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/i;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/ui/i;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/i;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/duapps/ad/offerwall/ui/i;)Lcom/duapps/ad/offerwall/ui/i$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->i:Lcom/duapps/ad/offerwall/ui/i$a;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/offerwall/ui/i;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/duapps/ad/offerwall/ui/d;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data empty, you should call <setData> before <createView>."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_topic_banner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 290
    new-instance v0, Lcom/duapps/ad/offerwall/ui/i$a;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/duapps/ad/offerwall/ui/i$a;-><init>(Lcom/duapps/ad/offerwall/ui/i;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->i:Lcom/duapps/ad/offerwall/ui/i$a;

    .line 291
    sget v0, Lcom/duapps/ad/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->g:Landroid/support/v4/view/ViewPager;

    .line 292
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i;->i:Lcom/duapps/ad/offerwall/ui/i$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 293
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 294
    sget v0, Lcom/duapps/ad/R$id;->indicator:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->h:Landroid/widget/LinearLayout;

    .line 296
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/i;->b()V

    .line 297
    return-object p0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 302
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should not pass empty data to this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/i;->d:Z

    .line 309
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 311
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v2, :cond_2

    .line 312
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    move-object v1, v0

    .line 313
    check-cast v1, Lcom/duapps/ad/entity/c;

    .line 314
    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v4

    iget v5, p0, Lcom/duapps/ad/offerwall/ui/i;->l:I

    iput v5, v4, Lcom/duapps/ad/entity/AdData;->g:I

    .line 315
    iget-object v4, p0, Lcom/duapps/ad/offerwall/ui/i;->a:Landroid/content/Context;

    new-instance v5, Lcom/duapps/ad/stats/f;

    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/i;->l:I

    invoke-static {v4, v5, v1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;I)V

    .line 317
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 319
    add-int/lit8 v0, v2, -0x1

    .line 320
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/i;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/i;->l:I

    move v2, v0

    .line 321
    goto :goto_0

    .line 323
    :cond_2
    return-object p1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/duapps/ad/offerwall/ui/d;->a(I)V

    .line 56
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/i;->l:I

    .line 57
    return-void
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/i;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/i;->d:Z

    .line 370
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 372
    instance-of v0, v0, Lcom/duapps/ad/entity/c;

    if-eqz v0, :cond_2

    .line 373
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 375
    goto :goto_0

    .line 376
    :cond_0
    rsub-int/lit8 v0, v1, 0x1

    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 379
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v2, :cond_1

    .line 380
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    move-object v1, v0

    .line 381
    check-cast v1, Lcom/duapps/ad/entity/c;

    .line 382
    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v4

    iget v5, p0, Lcom/duapps/ad/offerwall/ui/i;->l:I

    iput v5, v4, Lcom/duapps/ad/entity/AdData;->g:I

    .line 383
    iget-object v4, p0, Lcom/duapps/ad/offerwall/ui/i;->a:Landroid/content/Context;

    new-instance v5, Lcom/duapps/ad/stats/f;

    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/i;->l:I

    invoke-static {v4, v5, v1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;I)V

    .line 385
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 387
    add-int/lit8 v0, v2, -0x1

    .line 388
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/i;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/i;->l:I

    move v2, v0

    .line 389
    goto :goto_2

    .line 391
    :cond_1
    return-object p1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/i;->d:Z

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/i;->d:Z

    .line 360
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->i:Lcom/duapps/ad/offerwall/ui/i$a;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/i$a;->a(Ljava/util/List;)V

    .line 361
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0
.end method

.method public c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 333
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should not pass empty data to this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/i;->d:Z

    .line 338
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 341
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 342
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    .line 343
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 347
    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/i;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 348
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 349
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 351
    goto :goto_0

    .line 352
    :cond_2
    return-void
.end method

.method public c()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    .line 397
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 398
    instance-of v0, v0, Lcom/duapps/ad/entity/c;

    if-eqz v0, :cond_2

    .line 399
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 401
    goto :goto_0

    .line 402
    :cond_0
    if-gt v3, v1, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public d()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 103
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 412
    .line 413
    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/i;->d:Z

    .line 415
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 416
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 417
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 419
    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/i;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 420
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 421
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 423
    goto :goto_0

    .line 424
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iput-boolean v2, p0, Lcom/duapps/ad/offerwall/ui/i;->j:Z

    .line 84
    iput-boolean v3, p0, Lcom/duapps/ad/offerwall/ui/i;->k:Z

    .line 85
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->m:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/duapps/ad/offerwall/ui/d;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 88
    :cond_2
    iput-boolean v3, p0, Lcom/duapps/ad/offerwall/ui/i;->j:Z

    .line 89
    iput-boolean v2, p0, Lcom/duapps/ad/offerwall/ui/i;->k:Z

    .line 90
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->m:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->m:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 93
    iput-boolean v2, p0, Lcom/duapps/ad/offerwall/ui/i;->j:Z

    .line 94
    iput-boolean v2, p0, Lcom/duapps/ad/offerwall/ui/i;->k:Z

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
