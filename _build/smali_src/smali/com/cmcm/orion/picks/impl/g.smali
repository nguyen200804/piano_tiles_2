.class public final Lcom/cmcm/orion/picks/impl/g;
.super Ljava/lang/Object;
.source "VastAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/impl/g$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Z

.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/cmcm/orion/picks/impl/h;

.field private u:Lcom/cmcm/orion/picks/impl/h$a;

.field private v:Lcom/cmcm/orion/picks/a/a/a;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/cmcm/orion/picks/impl/h;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v2, ""

    iput-object v2, p0, Lcom/cmcm/orion/picks/impl/g;->w:Ljava/lang/String;

    .line 122
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->x:Z

    .line 124
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->y:Z

    .line 125
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/impl/g;->z:Z

    .line 126
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/impl/g;->A:Z

    .line 127
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->B:Z

    .line 128
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/impl/g;->C:Z

    .line 137
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/g;->t:Lcom/cmcm/orion/picks/impl/h;

    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the vast model is null, please check"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/impl/h;->p()Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v2

    iput-object v2, p0, Lcom/cmcm/orion/picks/impl/g;->v:Lcom/cmcm/orion/picks/a/a/a;

    .line 142
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/g;->v:Lcom/cmcm/orion/picks/a/a/a;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/g;->v:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/a/a/a;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmcm/orion/picks/impl/g;->w:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/g;->v:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/a/a/a;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->B:Z

    .line 147
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method private a(Lcom/cmcm/orion/picks/impl/g$a;IJZ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 335
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->a:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->e:Z

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->v:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->i:Z

    if-nez v0, :cond_0

    .line 341
    :cond_2
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->i:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->g:Z

    if-nez v0, :cond_0

    .line 344
    :cond_3
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->j:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->h:Z

    if-nez v0, :cond_0

    .line 347
    :cond_4
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->m:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->j:Z

    if-nez v0, :cond_0

    .line 350
    :cond_5
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->n:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->k:Z

    if-nez v0, :cond_0

    .line 354
    :cond_6
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->l:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_7

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->s:Z

    if-nez v0, :cond_0

    .line 358
    :cond_7
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->e:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->r:Z

    if-nez v0, :cond_0

    .line 362
    :cond_8
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->f:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_a

    .line 363
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->q:Z

    if-nez v0, :cond_9

    .line 364
    invoke-virtual {p0, p2}, Lcom/cmcm/orion/picks/impl/g;->b(I)V

    .line 366
    :cond_9
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->l:Z

    if-nez v0, :cond_0

    .line 370
    :cond_a
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->g:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_c

    .line 371
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->l:Z

    if-nez v0, :cond_b

    .line 372
    sget-object v2, Lcom/cmcm/orion/picks/impl/g$a;->f:Lcom/cmcm/orion/picks/impl/g$a;

    int-to-float v0, p2

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v4, v0

    move-object v1, p0

    move v3, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJZ)V

    .line 374
    :cond_b
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->m:Z

    if-nez v0, :cond_0

    .line 378
    :cond_c
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->h:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_e

    .line 379
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->m:Z

    if-nez v0, :cond_d

    .line 380
    sget-object v2, Lcom/cmcm/orion/picks/impl/g$a;->g:Lcom/cmcm/orion/picks/impl/g$a;

    int-to-float v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v4, v0

    move-object v1, p0

    move v3, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJZ)V

    .line 382
    :cond_d
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->n:Z

    if-nez v0, :cond_0

    .line 386
    :cond_e
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->c:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_10

    .line 387
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->n:Z

    if-nez v0, :cond_f

    .line 388
    sget-object v2, Lcom/cmcm/orion/picks/impl/g$a;->h:Lcom/cmcm/orion/picks/impl/g$a;

    int-to-float v0, p2

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v4, v0

    move-object v1, p0

    move v3, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJZ)V

    .line 390
    :cond_f
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->p:Z

    if-nez v0, :cond_0

    .line 401
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cmcm/orion/picks/impl/g;->b(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 403
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->v:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_11

    .line 404
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->i:Z

    .line 406
    :cond_11
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->i:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_12

    .line 407
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->g:Z

    .line 409
    :cond_12
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->j:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_13

    .line 410
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->h:Z

    .line 412
    :cond_13
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->m:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_14

    .line 413
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->j:Z

    .line 415
    :cond_14
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->n:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_15

    .line 416
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->k:Z

    .line 418
    :cond_15
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->a:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_16

    .line 419
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->e:Z

    .line 421
    :cond_16
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->g:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_17

    .line 422
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->m:Z

    .line 424
    :cond_17
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->f:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_18

    .line 425
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->l:Z

    .line 427
    :cond_18
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->h:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_19

    .line 428
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->n:Z

    .line 430
    :cond_19
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->l:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_1a

    .line 431
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->s:Z

    .line 432
    iput-boolean v8, p0, Lcom/cmcm/orion/picks/impl/g;->r:Z

    .line 434
    :cond_1a
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->e:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_1b

    .line 435
    iput-boolean v7, p0, Lcom/cmcm/orion/picks/impl/g;->r:Z

    .line 436
    iput-boolean v8, p0, Lcom/cmcm/orion/picks/impl/g;->s:Z

    .line 438
    :cond_1b
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->r:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_1d

    .line 439
    if-eqz p5, :cond_1c

    .line 440
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/g;->e()V

    .line 445
    :cond_1c
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->a()Lcom/cmcm/orion/utils/internal/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/g;->v:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v0, v1, v8, v8}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/picks/a/a/a;IZ)V

    .line 447
    :cond_1d
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->B:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, v8

    move v3, p2

    move-wide v4, p3

    .line 448
    invoke-direct/range {v0 .. v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;ZIJ)V

    goto/16 :goto_0
.end method

.method private a(Lcom/cmcm/orion/picks/impl/g$a;ZIJ)V
    .locals 6

    .prologue
    .line 580
    if-ltz p3, :cond_1

    .line 581
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 582
    const-string v0, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v0, "playtime"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    const-string v0, "lockpkg"

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_0
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->r:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 590
    :goto_0
    if-eqz v1, :cond_3

    .line 591
    const-string v0, "0"

    .line 600
    :goto_1
    const-string v3, "event"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    if-eqz v1, :cond_6

    const-string v0, "vast_click"

    :goto_2
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/g;->t:Lcom/cmcm/orion/picks/impl/h;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->p()Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v1

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/g;->w:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 604
    :cond_1
    return-void

    .line 589
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 593
    :cond_3
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->a:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_5

    .line 594
    if-eqz p2, :cond_4

    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->s:Lcom/cmcm/orion/picks/impl/g$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/g$a;->a(Lcom/cmcm/orion/picks/impl/g$a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->a:Lcom/cmcm/orion/picks/impl/g$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/g$a;->a(Lcom/cmcm/orion/picks/impl/g$a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 597
    :cond_5
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/g$a;->a(Lcom/cmcm/orion/picks/impl/g$a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 601
    :cond_6
    const-string v0, "vast_play"

    goto :goto_2
.end method

.method public static a(Lcom/cmcm/orion/picks/impl/h;I)V
    .locals 6

    .prologue
    .line 608
    if-eqz p0, :cond_2

    .line 609
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/h;->d()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->k:Lcom/cmcm/orion/picks/impl/g$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 610
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 611
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 612
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 613
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 614
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 618
    const-string v4, "ERRORCODE"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 621
    :cond_1
    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/g;->a(Ljava/util/List;)V

    .line 624
    :cond_2
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    return-void

    .line 645
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 646
    invoke-static {v0}, Lcom/cmcm/orion/utils/d;->a(Ljava/lang/String;)Lcom/cmcm/orion/utils/d$b;

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/g;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->C:Z

    return v0
.end method

.method private b(Lcom/cmcm/orion/picks/impl/g$a;IJ)V
    .locals 9

    .prologue
    .line 464
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->t:Lcom/cmcm/orion/picks/impl/h;

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->t:Lcom/cmcm/orion/picks/impl/h;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 466
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    const-string v1, "{DURATION}"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 473
    const-string v5, "{CONTENTPLAYHEAD}"

    int-to-long v0, p2

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    int-to-long v0, p2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 474
    const-string v1, "{CACHEBUSTING}"

    invoke-static {}, Lcom/cmcm/orion/picks/impl/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 475
    const-string v1, "{TIMESTAMP}"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    const-string v1, "{LOCKPKG}"

    iget-object v4, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 481
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-wide v0, p3

    .line 473
    goto :goto_1

    .line 483
    :cond_2
    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/g;->a(Ljava/util/List;)V

    .line 486
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/g;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->C:Z

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 453
    new-instance v0, Lcom/cmcm/orion/picks/impl/g$2;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/g$2;-><init>(Lcom/cmcm/orion/picks/impl/g;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method


# virtual methods
.method public final a()Lcom/cmcm/orion/picks/impl/h;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->t:Lcom/cmcm/orion/picks/impl/h;

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 262
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->c:Z

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/impl/g;->c:Z

    .line 266
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->c:Z

    if-eqz v0, :cond_0

    .line 267
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->p:Z

    if-nez v0, :cond_0

    .line 268
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->c:Lcom/cmcm/orion/picks/impl/g$a;

    int-to-long v2, p1

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 269
    new-instance v0, Lcom/cmcm/orion/picks/impl/g$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/g$1;-><init>(Lcom/cmcm/orion/picks/impl/g;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    .line 277
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/impl/g;->p:Z

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 10

    .prologue
    .line 489
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->t:Lcom/cmcm/orion/picks/impl/h;

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->t:Lcom/cmcm/orion/picks/impl/h;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h;->e()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->u:Lcom/cmcm/orion/picks/impl/g$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 491
    if-eqz v0, :cond_3

    .line 492
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 493
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/orion/picks/impl/h$b;

    .line 495
    int-to-long v4, p1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/cmcm/orion/picks/impl/i;->a(JLjava/lang/String;)J

    move-result-wide v4

    .line 500
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    int-to-long v6, p1

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 503
    cmp-long v3, p2, v4

    if-ltz v3, :cond_1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h$b;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 504
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h$b;->b()Ljava/lang/String;

    move-result-object v3

    .line 505
    const-string v4, "{DURATION}"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 509
    const-string v6, "{CONTENTPLAYHEAD}"

    int-to-long v4, p1

    cmp-long v4, p2, v4

    if-lez v4, :cond_2

    int-to-long v4, p1

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 510
    const-string v4, "{CACHEBUSTING}"

    invoke-static {}, Lcom/cmcm/orion/picks/impl/i;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 511
    const-string v4, "{TIMESTAMP}"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 513
    iget-object v4, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    const-string v4, "{LOCKPKG}"

    iget-object v5, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 516
    :cond_0
    invoke-static {v3}, Lcom/cmcm/orion/utils/d;->a(Ljava/lang/String;)Lcom/cmcm/orion/utils/d$b;

    .line 518
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h$b;->d()V

    .line 492
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    move-wide v4, p2

    .line 509
    goto :goto_1

    .line 523
    :cond_3
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->t:Lcom/cmcm/orion/picks/impl/h;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h;->p()Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 630
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/cmcm/orion/picks/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 632
    :cond_0
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/impl/g$a;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 299
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->a:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->E:Z

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->u:Lcom/cmcm/orion/picks/impl/h$a;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->u:Lcom/cmcm/orion/picks/impl/h$a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 304
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 305
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/g;->a(Ljava/util/List;)V

    .line 309
    :cond_2
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->r:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_3

    .line 313
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/cmcm/orion/picks/impl/g;->b(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 314
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->a()Lcom/cmcm/orion/utils/internal/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/g;->v:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v0, v1, v3, v3}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/picks/a/a/a;IZ)V

    .line 315
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/impl/g;->o:Z

    .line 318
    :cond_3
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->t:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_4

    .line 319
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/g;->e()V

    .line 322
    :cond_4
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->a:Lcom/cmcm/orion/picks/impl/g$a;

    if-ne p1, v0, :cond_5

    .line 323
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/impl/g;->E:Z

    .line 325
    :cond_5
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->B:Z

    if-eqz v0, :cond_0

    .line 326
    iget v3, p0, Lcom/cmcm/orion/picks/impl/g;->a:I

    iget v0, p0, Lcom/cmcm/orion/picks/impl/g;->a:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;ZIJ)V

    goto :goto_0
.end method

.method public final a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V
    .locals 7

    .prologue
    .line 331
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJZ)V

    .line 332
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/impl/h$a;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/g;->u:Lcom/cmcm/orion/picks/impl/h$a;

    .line 296
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/cmcm/orion/picks/impl/g;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    .line 539
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->q:Z

    if-eqz v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->e:Z

    if-nez v0, :cond_1

    .line 544
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->a:Lcom/cmcm/orion/picks/impl/g$a;

    invoke-virtual {p0, v0, p1, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 546
    :cond_1
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->f:Z

    if-nez v0, :cond_2

    .line 547
    iput-boolean v8, p0, Lcom/cmcm/orion/picks/impl/g;->f:Z

    .line 548
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->p:Lcom/cmcm/orion/picks/impl/g$a;

    invoke-virtual {p0, v0, p1, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 549
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->o:Lcom/cmcm/orion/picks/impl/g$a;

    invoke-virtual {p0, v0, p1, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 552
    :cond_2
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->B:Z

    if-eqz v0, :cond_5

    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 556
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 557
    const-string v1, "lockpkg"

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/g;->D:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_3
    const-string v1, "view"

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/g;->v:Lcom/cmcm/orion/picks/a/a/a;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/g;->w:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-static {v1, v2, v3, v6, v0}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 562
    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->b:Lcom/cmcm/orion/picks/impl/g$a;

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;ZIJ)V

    .line 564
    :cond_5
    iput-boolean v8, p0, Lcom/cmcm/orion/picks/impl/g;->q:Z

    .line 565
    new-instance v0, Lcom/cmcm/orion/picks/impl/g$3;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/g$3;-><init>(Lcom/cmcm/orion/picks/impl/g;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/g;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/cmcm/orion/picks/impl/h$a;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g;->u:Lcom/cmcm/orion/picks/impl/h$a;

    return-object v0
.end method
