.class public Lcom/cmcm/orion/picks/a/a/c;
.super Landroid/os/AsyncTask;
.source "AppLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cmcm/orion/picks/a/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field protected b:Lcom/cmcm/orion/picks/a/a/g$b;

.field protected final c:Ljava/lang/String;

.field protected final d:I

.field protected final e:I

.field public f:J

.field public g:Z

.field private h:J

.field private i:Lcom/cmcm/orion/picks/a/a/i;

.field private final j:Z

.field private k:I

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Lcom/cmcm/orion/picks/a/a/i;


# direct methods
.method public constructor <init>(IILjava/lang/String;ZILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/a/a/c;->a:Z

    .line 38
    iput-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    .line 44
    iput v3, p0, Lcom/cmcm/orion/picks/a/a/c;->k:I

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cmcm/orion/picks/a/a/c;->m:J

    .line 47
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    .line 50
    iput-boolean v3, p0, Lcom/cmcm/orion/picks/a/a/c;->o:Z

    .line 51
    const/16 v0, 0xf

    iput v0, p0, Lcom/cmcm/orion/picks/a/a/c;->p:I

    .line 55
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/a/a/c;->q:Z

    .line 56
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/a/a/c;->r:Z

    .line 85
    iput v2, p0, Lcom/cmcm/orion/picks/a/a/c;->t:I

    .line 91
    iput v2, p0, Lcom/cmcm/orion/picks/a/a/c;->u:I

    .line 136
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/a/a/c;->v:Z

    .line 137
    iput-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->w:Lcom/cmcm/orion/picks/a/a/i;

    .line 61
    iput-object p3, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 62
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    .line 63
    iput p2, p0, Lcom/cmcm/orion/picks/a/a/c;->e:I

    .line 64
    iput-boolean p4, p0, Lcom/cmcm/orion/picks/a/a/c;->j:Z

    .line 65
    iput p5, p0, Lcom/cmcm/orion/picks/a/a/c;->k:I

    .line 66
    iput-object p6, p0, Lcom/cmcm/orion/picks/a/a/c;->l:Ljava/util/Map;

    .line 67
    return-void
.end method

.method private a(Ljava/net/URI;)I
    .locals 12

    .prologue
    .line 395
    new-instance v8, Lcom/cmcm/orion/picks/a/a/m;

    invoke-direct {v8}, Lcom/cmcm/orion/picks/a/a/m;-><init>()V

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 397
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/utils/d;->b(Ljava/lang/String;)Lcom/cmcm/orion/utils/b$1;

    move-result-object v9

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v0

    .line 400
    iget v0, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    if-nez v0, :cond_2

    .line 401
    const-string v0, ""

    .line 402
    iget v1, v9, Lcom/cmcm/orion/utils/b$1;->b:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    .line 403
    iget-object v0, v9, Lcom/cmcm/orion/utils/b$1;->a:Ljava/lang/String;

    .line 412
    :goto_0
    iget v1, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    if-nez v1, :cond_2

    .line 413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 414
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-static {v1, v2, v0, v8}, Lcom/cmcm/orion/picks/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/m;)Lcom/cmcm/orion/picks/a/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    .line 5454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5459
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5460
    const-string v0, "ext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_7

    .line 417
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    if-eqz v0, :cond_a

    .line 422
    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->aA:Lcom/cmcm/orion/adsdk/b$a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    const-string v3, "brand"

    const-wide/16 v4, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cmcm/orion/adsdk/e;->a(Lcom/cmcm/orion/adsdk/b$a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 428
    :goto_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    .line 437
    :cond_2
    :goto_3
    const/4 v5, 0x0

    .line 438
    iget v0, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    if-nez v0, :cond_d

    .line 439
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 440
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 441
    :cond_3
    const/16 v5, 0x66

    .line 449
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    iget v1, v9, Lcom/cmcm/orion/utils/b$1;->b:I

    iget-object v4, v9, Lcom/cmcm/orion/utils/b$1;->c:Ljava/lang/String;

    move-wide v2, v10

    invoke-static/range {v0 .. v5}, Lcom/cmcm/orion/adsdk/e;->a(Ljava/lang/String;IJLjava/lang/String;I)V

    .line 450
    iget v0, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    return v0

    .line 405
    :cond_5
    iget v1, v9, Lcom/cmcm/orion/utils/b$1;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 406
    const/16 v1, 0x69

    iput v1, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    goto/16 :goto_0

    .line 408
    :cond_6
    const/16 v1, 0x68

    iput v1, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    goto/16 :goto_0

    .line 5465
    :cond_7
    :try_start_1
    const-string v1, "7069636b733230313531313034"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 5466
    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 5467
    invoke-static {v1, v0}, Lcom/cmcm/orion/utils/b;->b([B[B)[B

    move-result-object v0

    .line 5468
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5469
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5473
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5475
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5476
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 5477
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 5478
    if-eqz v3, :cond_8

    .line 5482
    new-instance v4, Lcom/cmcm/orion/picks/a/a/a;

    invoke-direct {v4}, Lcom/cmcm/orion/picks/a/a/a;-><init>()V

    .line 5483
    const-string v5, "pkg_url"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cmcm/orion/picks/a/a/a;->j(Ljava/lang/String;)V

    .line 5484
    const-string v5, "click_tracking_url"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cmcm/orion/picks/a/a/a;->a(Ljava/lang/String;)V

    .line 5485
    const-string v5, "third_imp_url"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cmcm/orion/picks/a/a/a;->b(Ljava/lang/String;)V

    .line 5486
    const-string v5, "report_interval"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/cmcm/orion/picks/a/a/a;->b(J)V

    .line 5487
    const-string v5, "report_ratio"

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/cmcm/orion/picks/a/a/a;->j(I)V

    .line 5488
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5476
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5491
    :cond_9
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->a()Lcom/cmcm/orion/utils/internal/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 425
    :cond_a
    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->aB:Lcom/cmcm/orion/adsdk/b$a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    const-string v3, "brand"

    const-wide/16 v4, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cmcm/orion/adsdk/e;->a(Lcom/cmcm/orion/adsdk/b$a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 432
    :cond_b
    const/16 v0, 0x6a

    invoke-static {v8, v0}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V

    goto/16 :goto_3

    .line 444
    :cond_c
    const/16 v5, 0x71

    goto/16 :goto_4

    .line 447
    :cond_d
    iget v5, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    goto/16 :goto_4
.end method

.method private a(Lcom/cmcm/orion/picks/a/a/i;Lcom/cmcm/orion/picks/a/a/i;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 781
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v3

    .line 785
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    .line 787
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 788
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->E()Ljava/lang/String;

    move-result-object v5

    .line 9801
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9804
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 9805
    const-string v6, "VAST"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "http"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 790
    :goto_2
    if-eqz v1, :cond_2

    .line 791
    invoke-virtual {v0, v5}, Lcom/cmcm/orion/picks/a/a/a;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 9805
    goto :goto_2

    .line 797
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->w:Lcom/cmcm/orion/picks/a/a/i;

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 622
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 623
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 624
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 625
    if-nez v0, :cond_1

    .line 626
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->A()Z

    move-result v2

    if-nez v2, :cond_2

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds remove not normal cache ad, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 636
    :cond_2
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->J()I

    move-result v2

    if-ne v4, v2, :cond_5

    .line 637
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/cmcm/orion/picks/a/a/c;->f(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds not support cpt,remove cache ad, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",support:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/c;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 641
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 644
    :cond_3
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->D()Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-static {v2}, Lcom/cmcm/orion/utils/b;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2, v4}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 648
    iput-boolean v4, p0, Lcom/cmcm/orion/picks/a/a/c;->q:Z

    .line 651
    :cond_4
    iget-boolean v3, p0, Lcom/cmcm/orion/picks/a/a/c;->j:Z

    invoke-static {v2, v3}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds remove cache cpt invalid ad,st et is invalid, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 659
    :cond_5
    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->J()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 660
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/cmcm/orion/picks/a/a/c;->f(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds not support toutiao,remove cache ad, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",support:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/c;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 668
    :cond_6
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->g()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 669
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 672
    :cond_7
    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->J()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 673
    invoke-direct {p0, v4}, Lcom/cmcm/orion/picks/a/a/c;->f(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds not support cpm,remove cache ad, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",support:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/c;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 677
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 680
    :cond_8
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->D()Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-static {v2}, Lcom/cmcm/orion/utils/b;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v2, v4}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_9

    .line 684
    iput-boolean v4, p0, Lcom/cmcm/orion/picks/a/a/c;->q:Z

    .line 687
    :cond_9
    iget-boolean v3, p0, Lcom/cmcm/orion/picks/a/a/c;->j:Z

    invoke-static {v2, v3}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds remove cache cpm invalid ad,st et is invalid, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 696
    :cond_a
    invoke-direct {p0, v5}, Lcom/cmcm/orion/picks/a/a/c;->f(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds not support other,remove cache ad, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",support:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/c;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 701
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 704
    :cond_b
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->D()Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-static {v2}, Lcom/cmcm/orion/utils/b;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v2, v4}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 709
    :cond_c
    iput-boolean v4, p0, Lcom/cmcm/orion/picks/a/a/c;->q:Z

    .line 713
    :cond_d
    invoke-static {v2}, Lcom/cmcm/orion/utils/b;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->g()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 714
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 717
    :cond_e
    invoke-static {v2}, Lcom/cmcm/orion/utils/b;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-boolean v3, p0, Lcom/cmcm/orion/picks/a/a/c;->j:Z

    invoke-static {v2, v3}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_f

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds remove cache other invalid ad,st et is not null , invalid, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 727
    :cond_f
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->z()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds remove cache other invalid ad,st et is null and showed , invalid, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 738
    :cond_10
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->s()I

    move-result v2

    if-ne v2, v5, :cond_11

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds remove cache installed ad, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 745
    :cond_11
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->F()Z

    move-result v2

    if-nez v2, :cond_0

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filterAds remove cache invalid mtType, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 756
    :cond_12
    return-void
.end method

.method private b()Ljava/net/URI;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/cmcm/orion/picks/a/a/g$b;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/a/a/g$b;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->b:Lcom/cmcm/orion/picks/a/a/g$b;

    .line 106
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->b:Lcom/cmcm/orion/picks/a/a/g$b;

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/g$b;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->b(I)Lcom/cmcm/orion/picks/a/a/g$b;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/orion/picks/a/a/c;->e:I

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(I)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 107
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    if-nez v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->b:Lcom/cmcm/orion/picks/a/a/g$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->d(I)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->b:Lcom/cmcm/orion/picks/a/a/g$b;

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->b(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 114
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->t:I

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->b:Lcom/cmcm/orion/picks/a/a/g$b;

    iget v1, p0, Lcom/cmcm/orion/picks/a/a/c;->t:I

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->e(I)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "support vext ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cmcm/orion/picks/a/a/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->u:I

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->b:Lcom/cmcm/orion/picks/a/a/g$b;

    iget v1, p0, Lcom/cmcm/orion/picks/a/a/c;->u:I

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->f(I)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 121
    :cond_1
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->s:I

    if-ltz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->b:Lcom/cmcm/orion/picks/a/a/g$b;

    iget v1, p0, Lcom/cmcm/orion/picks/a/a/c;->s:I

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->c(I)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->l:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->b:Lcom/cmcm/orion/picks/a/a/g$b;

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->l:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/util/Map;)V

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->b:Lcom/cmcm/orion/picks/a/a/g$b;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/g$b;->a()Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->b:Lcom/cmcm/orion/picks/a/a/g$b;

    .line 1822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2070
    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 1822
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_pageloader_offset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/cmcm/orion/picks/a/a/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->d(I)Lcom/cmcm/orion/picks/a/a/g$b;

    goto :goto_0
.end method

.method private b(Lcom/cmcm/orion/picks/a/a/i;)V
    .locals 2

    .prologue
    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10070
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-static {}, Lcom/cmcm/orion/picks/a/c;->a()Lcom/cmcm/orion/picks/a/c;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/cmcm/orion/picks/a/c;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/i;)V

    .line 811
    invoke-static {}, Lcom/cmcm/orion/picks/a/c;->a()Lcom/cmcm/orion/picks/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/c;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    .line 812
    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 167
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/c;->o:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/c;->j:Z

    if-nez v0, :cond_c

    .line 2255
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    .line 2256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2257
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2258
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 2259
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->J()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 2260
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->D()Ljava/lang/String;

    move-result-object v4

    .line 2261
    iget-boolean v5, p0, Lcom/cmcm/orion/picks/a/a/c;->j:Z

    invoke-static {v4, v5}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2262
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "orion AppLoader first valid ad is cpt, title:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    :cond_1
    :goto_0
    const/4 v0, 0x0

    move-object v3, v0

    .line 169
    :goto_1
    if-eqz v3, :cond_b

    .line 2295
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/a/a/c;->o:Z

    .line 2296
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/a/a/c;->g:Z

    .line 2297
    new-instance v4, Lcom/cmcm/orion/picks/a/a/m;

    invoke-direct {v4}, Lcom/cmcm/orion/picks/a/a/m;-><init>()V

    .line 3070
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 2322
    invoke-virtual {v3}, Lcom/cmcm/orion/picks/a/a/a;->H()Ljava/lang/String;

    move-result-object v5

    .line 2323
    invoke-static {v5}, Lcom/cmcm/orion/utils/b;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2326
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4070
    iget-object v7, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 2326
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2327
    invoke-static {}, Lcom/cmcm/orion/picks/a/c;->a()Lcom/cmcm/orion/picks/a/c;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/cmcm/orion/picks/a/c;->b(Ljava/lang/String;)V

    .line 2329
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "db start to delete cpm, title:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/j;->a()Lcom/cmcm/orion/picks/a/a/j;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lcom/cmcm/orion/picks/a/a/j;->b(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 2299
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->b()Ljava/net/URI;

    move-result-object v0

    .line 2300
    if-nez v0, :cond_7

    .line 2301
    const/16 v0, 0x6b

    invoke-static {v4, v0}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V

    .line 2317
    :cond_3
    :goto_2
    iget v0, v4, Lcom/cmcm/orion/picks/a/a/m;->a:I

    .line 171
    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->g(I)I

    move-result v0

    .line 172
    if-eqz v0, :cond_a

    .line 173
    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->a(I)V

    .line 186
    :goto_3
    return-void

    .line 2268
    :cond_4
    const/4 v4, 0x5

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->J()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 2269
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->D()Ljava/lang/String;

    move-result-object v4

    .line 2270
    iget-boolean v5, p0, Lcom/cmcm/orion/picks/a/a/c;->j:Z

    invoke-static {v4, v5}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2271
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "orion AppLoader first valid ad is cpm, title:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v0

    .line 2275
    goto/16 :goto_1

    .line 2277
    :cond_5
    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->J()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 2278
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "orion AppLoader first valid ad is toutiao, title:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v0

    .line 2282
    goto/16 :goto_1

    .line 2284
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "orion AppLoader first valid ad is other, title:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2303
    :cond_7
    iget v3, v4, Lcom/cmcm/orion/picks/a/a/m;->a:I

    if-nez v3, :cond_3

    .line 2304
    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->a(Ljava/net/URI;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V

    .line 2305
    iget v0, v4, Lcom/cmcm/orion/picks/a/a/m;->a:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    if-eqz v0, :cond_3

    .line 2306
    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    .line 4336
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->k:I

    if-eq v0, v8, :cond_d

    .line 4337
    invoke-direct {p0, v3}, Lcom/cmcm/orion/picks/a/a/c;->b(Lcom/cmcm/orion/picks/a/a/i;)V

    .line 5070
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 4340
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/cmcm/orion/picks/a/a/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmcm/orion/utils/b;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/cmcm/orion/picks/a/a/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4343
    :cond_8
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/j;->a()Lcom/cmcm/orion/picks/a/a/j;

    move-result-object v5

    invoke-virtual {v3}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/cmcm/orion/picks/a/a/j;->b(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 4344
    invoke-virtual {v3}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_9

    move v0, v1

    .line 2307
    :goto_4
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->k:I

    if-eq v0, v8, :cond_3

    .line 2308
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->e()V

    .line 2310
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    if-nez v0, :cond_3

    .line 2311
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->d()V

    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 4344
    goto :goto_4

    .line 175
    :cond_a
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/a/a/c;->v:Z

    .line 176
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->a(Lcom/cmcm/orion/picks/a/a/i;)V

    goto/16 :goto_3

    .line 179
    :cond_b
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/a/a/c;->v:Z

    .line 180
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->a(Lcom/cmcm/orion/picks/a/a/i;)V

    goto/16 :goto_3

    .line 183
    :cond_c
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/a/a/c;->v:Z

    .line 184
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->a(Lcom/cmcm/orion/picks/a/a/i;)V

    goto/16 :goto_3

    :cond_d
    move v0, v1

    goto :goto_4
.end method

.method private d()V
    .locals 4

    .prologue
    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/orion/picks/a/a/c;->h:J

    .line 527
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->f()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/cmcm/orion/picks/a/a/c;->h:J

    invoke-static {v0, v2, v3}, Lcom/cmcm/orion/picks/a/a/h;->a(Ljava/lang/String;J)V

    .line 528
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 540
    iput-wide v2, p0, Lcom/cmcm/orion/picks/a/a/c;->h:J

    .line 541
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/cmcm/orion/picks/a/a/h;->a(Ljava/lang/String;J)V

    .line 542
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6070
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_cache_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/cmcm/orion/picks/a/a/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7070
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_cache_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/cmcm/orion/picks/a/a/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f(I)Z
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->p:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(I)I
    .locals 3

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    if-nez v0, :cond_1

    .line 231
    const/16 p1, 0x74

    .line 251
    :cond_0
    :goto_0
    return p1

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    const/16 p1, 0x71

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 237
    :cond_3
    const/16 p1, 0x66

    goto :goto_0

    .line 239
    :cond_4
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/c;->o:Z

    if-nez v0, :cond_6

    .line 240
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/c;->v:Z

    if-nez v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cmcm/orion/picks/a/a/c;->j:Z

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/c;->p:I

    invoke-static {v0, v1, v2}, Lcom/cmcm/orion/picks/a/a/i;->a(Ljava/util/List;ZI)V

    .line 242
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "after filter net has ads number:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 246
    :cond_7
    const/16 p1, 0x67

    goto :goto_0

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method private g()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 556
    iget-wide v0, p0, Lcom/cmcm/orion/picks/a/a/c;->m:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 557
    iget-wide v0, p0, Lcom/cmcm/orion/picks/a/a/c;->m:J

    .line 561
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7531
    iget-wide v4, p0, Lcom/cmcm/orion/picks/a/a/c;->h:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 7532
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmcm/orion/picks/a/a/h;->g(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cmcm/orion/picks/a/a/c;->h:J

    .line 7534
    :cond_0
    iget-wide v4, p0, Lcom/cmcm/orion/picks/a/a/c;->h:J

    .line 561
    add-long/2addr v0, v4

    sub-long v0, v2, v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a/h;->c(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 561
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private h()I
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 568
    new-instance v8, Lcom/cmcm/orion/picks/a/a/m;

    invoke-direct {v8}, Lcom/cmcm/orion/picks/a/a/m;-><init>()V

    .line 570
    iget v0, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    if-nez v0, :cond_2

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8070
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {}, Lcom/cmcm/orion/picks/a/c;->a()Lcom/cmcm/orion/picks/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/c;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    .line 573
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 9070
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 575
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/cmcm/orion/utils/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    :cond_1
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/j;->a()Lcom/cmcm/orion/picks/a/a/j;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/cmcm/orion/picks/a/a/j;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/m;)Ljava/util/List;

    move-result-object v0

    .line 579
    iget v1, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    if-nez v1, :cond_2

    .line 580
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 581
    const/16 v0, 0x70

    invoke-static {v8, v0}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V

    .line 593
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    if-eqz v0, :cond_4

    .line 594
    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->aC:Lcom/cmcm/orion/adsdk/b$a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    const-string v3, "brand"

    iget v0, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v7}, Lcom/cmcm/orion/adsdk/e;->a(Lcom/cmcm/orion/adsdk/b$a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 601
    :goto_1
    iget v0, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    return v0

    .line 583
    :cond_3
    new-instance v1, Lcom/cmcm/orion/picks/a/a/i;

    invoke-direct {v1}, Lcom/cmcm/orion/picks/a/a/i;-><init>()V

    iput-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    .line 584
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/i;->a(Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/i;->a(Ljava/util/List;)V

    .line 587
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->b(Lcom/cmcm/orion/picks/a/a/i;)V

    goto :goto_0

    .line 597
    :cond_4
    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->aD:Lcom/cmcm/orion/adsdk/b$a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    const-string v3, "brand"

    iget v0, v8, Lcom/cmcm/orion/picks/a/a/m;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v7}, Lcom/cmcm/orion/adsdk/e;->a(Lcom/cmcm/orion/adsdk/b$a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method private i()Z
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "before filter cache has ads number:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->a(Ljava/util/List;)V

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "after filter cache has ads number:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 815
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 74
    const-wide/32 v0, 0x1b7740

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 75
    iput-wide p1, p0, Lcom/cmcm/orion/picks/a/a/c;->m:J

    .line 77
    :cond_0
    return-void
.end method

.method public a(Lcom/cmcm/orion/picks/a/a/i;)V
    .locals 3

    .prologue
    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11070
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_pageloader_offset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/i;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    invoke-static {p1}, Lcom/cmcm/orion/utils/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/c;->r:Z

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/c;->t:I

    .line 89
    return-void
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/c;->u:I

    .line 94
    return-void
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/c;->p:I

    .line 98
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 31
    .line 11386
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->k:I

    if-ne v2, v0, :cond_8

    .line 11387
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/c;->a:Z

    if-eqz v0, :cond_7

    :cond_0
    move v0, v2

    .line 11193
    :goto_0
    if-nez v0, :cond_9

    .line 11195
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->h()I

    move-result v3

    .line 11197
    if-nez v3, :cond_12

    .line 11198
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->i()Z

    move-result v0

    .line 11199
    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/cmcm/orion/picks/a/a/c;->q:Z

    if-nez v4, :cond_1

    move v0, v1

    .line 11211
    :cond_1
    :goto_1
    iget-boolean v4, p0, Lcom/cmcm/orion/picks/a/a/c;->v:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    iget v4, p0, Lcom/cmcm/orion/picks/a/a/c;->k:I

    if-eq v0, v4, :cond_5

    .line 13350
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/a/a/c;->g:Z

    .line 13351
    new-instance v3, Lcom/cmcm/orion/picks/a/a/m;

    invoke-direct {v3}, Lcom/cmcm/orion/picks/a/a/m;-><init>()V

    .line 13354
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->b()Ljava/net/URI;

    move-result-object v0

    .line 13355
    if-nez v0, :cond_c

    .line 13356
    const/16 v0, 0x6b

    invoke-static {v3, v0}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V

    .line 13372
    :cond_2
    :goto_2
    iget v0, v3, Lcom/cmcm/orion/picks/a/a/m;->a:I

    if-eqz v0, :cond_4

    .line 15070
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 14499
    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmcm/orion/utils/b;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15519
    :cond_3
    iget v4, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    if-nez v4, :cond_f

    .line 14502
    :goto_3
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/j;->a()Lcom/cmcm/orion/picks/a/a/j;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cmcm/orion/picks/a/a/j;->b(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 14503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16070
    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 14503
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14504
    invoke-static {}, Lcom/cmcm/orion/picks/a/c;->a()Lcom/cmcm/orion/picks/a/c;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/cmcm/orion/picks/a/c;->b(Ljava/lang/String;)V

    .line 14506
    new-instance v2, Lcom/cmcm/orion/picks/a/a/c$1;

    invoke-direct {v2, p0, v0}, Lcom/cmcm/orion/picks/a/a/c$1;-><init>(Lcom/cmcm/orion/picks/a/a/c;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    .line 13375
    :cond_4
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/a/a/c;->a:Z

    .line 13376
    iget v3, v3, Lcom/cmcm/orion/picks/a/a/m;->a:I

    .line 11213
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/a/a/c;->o:Z

    .line 11216
    :cond_5
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/c;->v:Z

    if-nez v0, :cond_6

    .line 11217
    invoke-direct {p0, v3}, Lcom/cmcm/orion/picks/a/a/c;->g(I)I

    move-result v0

    .line 11218
    if-eqz v0, :cond_10

    .line 11219
    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->a(I)V

    .line 11224
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    .line 31
    return-object v0

    :cond_7
    move v0, v1

    .line 11387
    goto/16 :goto_0

    .line 11388
    :cond_8
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->k:I

    if-ne v7, v0, :cond_13

    move v0, v2

    .line 11389
    goto/16 :goto_0

    .line 11206
    :cond_9
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->k:I

    if-eq v7, v0, :cond_b

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/c;->j:Z

    if-nez v0, :cond_b

    .line 12140
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->h()I

    move-result v0

    .line 12141
    if-nez v0, :cond_b

    .line 12142
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->i()Z

    move-result v3

    .line 12143
    if-nez v3, :cond_b

    .line 12144
    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->g(I)I

    move-result v0

    .line 12145
    new-instance v3, Lcom/cmcm/orion/picks/a/a/i;

    invoke-direct {v3}, Lcom/cmcm/orion/picks/a/a/i;-><init>()V

    iput-object v3, p0, Lcom/cmcm/orion/picks/a/a/c;->w:Lcom/cmcm/orion/picks/a/a/i;

    .line 12146
    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/c;->w:Lcom/cmcm/orion/picks/a/a/i;

    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cmcm/orion/picks/a/a/i;->a(Ljava/lang/String;)V

    .line 12147
    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/c;->w:Lcom/cmcm/orion/picks/a/a/i;

    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v4}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cmcm/orion/picks/a/a/i;->a(Ljava/util/List;)V

    .line 12149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13070
    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 12149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12150
    invoke-static {}, Lcom/cmcm/orion/picks/a/c;->a()Lcom/cmcm/orion/picks/a/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/cmcm/orion/picks/a/c;->b(Ljava/lang/String;)V

    .line 12152
    if-eqz v0, :cond_a

    .line 12153
    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->a(I)V

    move v0, v2

    move v3, v1

    goto/16 :goto_1

    .line 12155
    :cond_a
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/a/a/c;->r:Z

    .line 12157
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/a/a/c;->v:Z

    .line 12159
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->c()V

    :cond_b
    move v0, v2

    move v3, v1

    goto/16 :goto_1

    .line 13358
    :cond_c
    iget v4, v3, Lcom/cmcm/orion/picks/a/a/m;->a:I

    if-nez v4, :cond_2

    .line 13359
    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/a/a/c;->a(Ljava/net/URI;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V

    .line 13360
    iget v0, v3, Lcom/cmcm/orion/picks/a/a/m;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    if-eqz v0, :cond_2

    .line 13361
    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/c;->i:Lcom/cmcm/orion/picks/a/a/i;

    .line 13763
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->k:I

    if-eq v0, v7, :cond_11

    .line 13766
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->w:Lcom/cmcm/orion/picks/a/a/i;

    invoke-direct {p0, v0, v4}, Lcom/cmcm/orion/picks/a/a/c;->a(Lcom/cmcm/orion/picks/a/a/i;Lcom/cmcm/orion/picks/a/a/i;)V

    .line 13768
    invoke-direct {p0, v4}, Lcom/cmcm/orion/picks/a/a/c;->b(Lcom/cmcm/orion/picks/a/a/i;)V

    .line 14070
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/c;->c:Ljava/lang/String;

    .line 13771
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/cmcm/orion/picks/a/a/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmcm/orion/utils/b;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 13772
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/cmcm/orion/picks/a/a/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13774
    :cond_d
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/j;->a()Lcom/cmcm/orion/picks/a/a/j;

    move-result-object v5

    invoke-virtual {v4}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/cmcm/orion/picks/a/a/j;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 13775
    invoke-virtual {v4}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_e

    move v0, v2

    .line 13362
    :goto_5
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->k:I

    if-eq v0, v7, :cond_2

    .line 13363
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->e()V

    .line 13365
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/c;->d:I

    if-nez v0, :cond_2

    .line 13366
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->d()V

    goto/16 :goto_2

    :cond_e
    move v0, v1

    .line 13775
    goto :goto_5

    :cond_f
    move v2, v1

    .line 15519
    goto/16 :goto_3

    .line 11221
    :cond_10
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/c;->c()V

    goto/16 :goto_4

    :cond_11
    move v0, v2

    goto :goto_5

    :cond_12
    move v0, v1

    goto/16 :goto_1

    :cond_13
    move v0, v1

    goto/16 :goto_0
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 830
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/c;->s:I

    .line 831
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/c;->g:Z

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/orion/picks/a/a/c;->f:J

    .line 134
    return-void
.end method
