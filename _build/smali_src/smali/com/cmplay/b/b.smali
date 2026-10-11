.class public Lcom/cmplay/b/b;
.super Ljava/lang/Object;
.source "AppCardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/b/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmplay/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    return-void
.end method

.method private a(Ljava/lang/String;II)Lcom/cmplay/b/a;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x4

    const/4 v3, 0x0

    .line 330
    invoke-direct {p0, p1}, Lcom/cmplay/b/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "award_max:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 332
    if-lt v0, p3, :cond_0

    .line 333
    const-string v0, ""

    invoke-direct {p0, v9, p2, v3, v0}, Lcom/cmplay/b/b;->a(IIILjava/lang/String;)V

    move-object v0, v1

    .line 387
    :goto_0
    return-object v0

    .line 337
    :cond_0
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 338
    new-instance v0, Lcom/cmplay/b/b$a;

    invoke-direct {v0}, Lcom/cmplay/b/b$a;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 340
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/b/a;

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card_show:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/cmplay/b/a;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;)I

    move-result v5

    .line 342
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "card_click:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/cmplay/b/a;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cmplay/util/b/a;->c(Ljava/lang/String;)Z

    move-result v6

    .line 343
    if-ne p2, v9, :cond_2

    .line 344
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "card_show_max:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/cmplay/b/a;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;)I

    move-result v7

    .line 345
    iget v8, v0, Lcom/cmplay/b/a;->g:I

    if-ge v7, v8, :cond_1

    .line 350
    :cond_2
    if-nez v6, :cond_1

    iget v6, v0, Lcom/cmplay/b/a;->e:I

    if-ge v5, v6, :cond_1

    .line 354
    invoke-direct {p0, v0}, Lcom/cmplay/b/b;->c(Lcom/cmplay/b/a;)I

    move-result v5

    .line 355
    if-nez v5, :cond_1

    goto :goto_0

    .line 361
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_7

    .line 362
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/b/a;

    .line 363
    if-ne p2, v9, :cond_4

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "card_show_max:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/cmplay/b/a;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;)I

    move-result v6

    .line 365
    iget v7, v0, Lcom/cmplay/b/a;->g:I

    if-lt v6, v7, :cond_4

    move-object v0, v1

    .line 361
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 370
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "card_show:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/cmplay/b/a;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;I)V

    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "card_click:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/cmplay/b/a;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;Z)V

    .line 373
    invoke-direct {p0, v0}, Lcom/cmplay/b/b;->c(Lcom/cmplay/b/a;)I

    move-result v6

    .line 374
    if-nez v1, :cond_5

    if-nez v6, :cond_5

    move-object v1, v0

    .line 379
    :cond_5
    if-nez v1, :cond_6

    add-int/lit8 v7, v5, -0x1

    if-ne v2, v7, :cond_6

    .line 380
    iget v7, v0, Lcom/cmplay/b/a;->a:I

    iget-object v0, v0, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    invoke-direct {p0, v6, p2, v7, v0}, Lcom/cmplay/b/b;->a(IIILjava/lang/String;)V

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move-object v0, v1

    .line 383
    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    .line 387
    goto/16 :goto_0
.end method

.method public static a()Lcom/cmplay/b/b;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/cmplay/b/b;->a:Lcom/cmplay/b/b;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/cmplay/b/b;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/cmplay/b/b;->a:Lcom/cmplay/b/b;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/cmplay/b/b;

    invoke-direct {v0}, Lcom/cmplay/b/b;-><init>()V

    sput-object v0, Lcom/cmplay/b/b;->a:Lcom/cmplay/b/b;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/cmplay/b/b;->a:Lcom/cmplay/b/b;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/b/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/cmplay/b/b;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/b/b;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/cmplay/b/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(IIILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 398
    if-eq p2, v2, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v4, :cond_2

    .line 399
    :cond_0
    const/4 v0, 0x0

    .line 400
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 401
    const/16 v0, 0xc

    .line 412
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 413
    invoke-static {p2}, Lcom/cmplay/b/d;->a(I)I

    move-result v1

    invoke-static {v1, p3, p4, v0}, Lcom/cmplay/g/d;->a(IILjava/lang/String;I)V

    .line 416
    :cond_2
    return-void

    .line 402
    :cond_3
    if-ne p1, v2, :cond_4

    .line 403
    const/16 v0, 0xd

    goto :goto_0

    .line 404
    :cond_4
    if-ne p1, v3, :cond_5

    .line 405
    const/16 v0, 0xe

    goto :goto_0

    .line 406
    :cond_5
    if-ne p1, v4, :cond_6

    .line 407
    const/16 v0, 0xf

    goto :goto_0

    .line 408
    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 409
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private a(Lcom/cmplay/b/a;)V
    .locals 5

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/cmplay/b/b;->f()Ljava/util/List;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 267
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 268
    iget v4, p1, Lcom/cmplay/b/a;->a:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/b/a;

    iget v0, v0, Lcom/cmplay/b/a;->a:I

    if-ne v4, v0, :cond_1

    .line 269
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 274
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 275
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/b/a;

    .line 276
    invoke-virtual {v0}, Lcom/cmplay/b/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 267
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 278
    :cond_2
    const-string v0, "card_install:"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/cmplay/b/b;Lcom/cmplay/b/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/cmplay/b/b;->b(Lcom/cmplay/b/a;)V

    return-void
.end method

.method private b(Lcom/cmplay/b/a;)V
    .locals 4

    .prologue
    .line 283
    iget v0, p1, Lcom/cmplay/b/a;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 284
    new-instance v0, Lcom/cmplay/b/b$3;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/b/b$3;-><init>(Lcom/cmplay/b/b;Lcom/cmplay/b/a;)V

    invoke-static {v0}, Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V

    .line 322
    :goto_0
    return-void

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gold_source_card_install="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/cmplay/b/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/cmplay/b/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->DiamondToLogFile(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/cmplay/b/b;->d()V

    .line 300
    new-instance v0, Lcom/cmplay/b/b$4;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/b/b$4;-><init>(Lcom/cmplay/b/b;Lcom/cmplay/b/a;)V

    invoke-static {v0}, Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V

    .line 315
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cmplay/b/b$5;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/b/b$5;-><init>(Lcom/cmplay/b/b;Lcom/cmplay/b/a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/cmplay/b/b;Lcom/cmplay/b/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/cmplay/b/b;->a(Lcom/cmplay/b/a;)V

    return-void
.end method

.method private c(Lcom/cmplay/b/a;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 419
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cmplay/util/v;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    const/4 v0, 0x1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    iget-object v1, p1, Lcom/cmplay/b/a;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/cmplay/b/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    const/4 v0, 0x2

    goto :goto_0

    .line 427
    :cond_2
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/b/e;->a(Landroid/content/Context;)Lcom/cmplay/b/e;

    move-result-object v1

    iget v2, p1, Lcom/cmplay/b/a;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmplay/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 431
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/cmplay/b/d;->a(JJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 433
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 434
    const/4 v0, 0x3

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    packed-switch p1, :pswitch_data_0

    .line 465
    const-string v0, ""

    .line 469
    :goto_0
    return-object v0

    .line 449
    :pswitch_0
    const-string v0, "section_result_card"

    goto :goto_0

    .line 453
    :pswitch_1
    const-string v0, "section_setting_card"

    goto :goto_0

    .line 457
    :pswitch_2
    const-string v0, "section_battle_card"

    goto :goto_0

    .line 461
    :pswitch_3
    const-string v0, "section_popup_card"

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 477
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 479
    const/4 v1, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    .line 480
    new-instance v4, Lcom/cmplay/b/a;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/cmplay/b/a;-><init>(Lorg/json/JSONObject;)V

    .line 481
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 489
    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private f()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    const-string v0, "card_install:"

    invoke-static {v0}, Lcom/cmplay/util/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_0

    .line 182
    new-instance v5, Lcom/cmplay/b/a;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/cmplay/b/a;-><init>(Lorg/json/JSONObject;)V

    .line 183
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :catch_0
    move-exception v1

    .line 187
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v2, Lcom/cmplay/b/a;

    invoke-direct {v2, v3}, Lcom/cmplay/b/a;-><init>(Lorg/json/JSONObject;)V

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 191
    :catch_1
    move-exception v2

    .line 192
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 96
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/cmplay/b/b;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/cmplay/cloud/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v1

    const-string v2, "section_common"

    const-string v3, "cloud_key_card_award_max_day"

    const/4 v4, 0x3

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v0, 0x5

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/cmplay/b/b;->a(IIILjava/lang/String;)V

    .line 102
    const-string v0, ""

    .line 111
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-direct {p0, v0, p1, v1}, Lcom/cmplay/b/b;->a(Ljava/lang/String;II)Lcom/cmplay/b/a;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/cmplay/b/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lcom/cmplay/b/a;

    invoke-direct {v0, p1}, Lcom/cmplay/b/a;-><init>(Ljava/lang/String;)V

    .line 156
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/cmplay/b/a;->a:I

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card_click:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/cmplay/b/a;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/cmplay/i/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/cmplay/b/b$1;

    invoke-direct {v0, p0}, Lcom/cmplay/b/b$1;-><init>(Lcom/cmplay/b/b;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card_show:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 138
    if-ne v0, v4, :cond_0

    move v0, v1

    .line 141
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card_show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v0}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;I)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card_show_max:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 144
    if-ne v0, v4, :cond_1

    .line 147
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card_show_max:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;I)V

    .line 148
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 231
    new-instance v3, Lcom/cmplay/b/a;

    invoke-direct {v3, p1}, Lcom/cmplay/b/a;-><init>(Ljava/lang/String;)V

    .line 233
    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/cmplay/b/b;->f()Ljava/util/List;

    move-result-object v4

    .line 238
    if-eqz v4, :cond_0

    .line 240
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_4

    .line 241
    iget v6, v3, Lcom/cmplay/b/a;->a:I

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/b/a;

    iget v0, v0, Lcom/cmplay/b/a;->a:I

    if-ne v6, v0, :cond_2

    .line 242
    const/4 v0, 0x1

    .line 247
    :goto_2
    if-nez v0, :cond_0

    .line 248
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 250
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/b/a;

    .line 251
    invoke-virtual {v0}, Lcom/cmplay/b/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 240
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 254
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "card_install:"

    invoke-static {v1, v0}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public c()V
    .locals 5

    .prologue
    .line 118
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "section_common"

    const-string v3, "cloud_key_report_app_install"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-static {v0}, Lcom/cmplay/b/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 127
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cmplay/g/c;->a(Ljava/lang/String;)V

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "award_max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 166
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "award_max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/cmplay/util/b/a;->a(Ljava/lang/String;I)V

    .line 170
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/cmplay/b/b$2;

    invoke-direct {v0, p0}, Lcom/cmplay/b/b$2;-><init>(Lcom/cmplay/b/b;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method
