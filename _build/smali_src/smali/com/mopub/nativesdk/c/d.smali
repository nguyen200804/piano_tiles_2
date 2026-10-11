.class public final Lcom/mopub/nativesdk/c/d;
.super Lcom/mopub/nativesdk/c/a;
.source "AdApiLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/nativesdk/c/a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mopub/nativesdk/Campaign;",
        ">;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mopub/nativesdk/c/a;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/mopub/nativesdk/c/d;->d:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativesdk/c/d;->g:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/nativesdk/c/d;->i:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/nativesdk/c/d;->j:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0x29d4

    const/4 v6, 0x1

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 308
    new-instance v1, Lcom/mopub/nativesdk/c/f;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/mopub/nativesdk/c/f;-><init>(B)V

    .line 316
    const-string v0, "platform"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 318
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    invoke-static {}, Lcom/mopub/nativesdk/core/a;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 320
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    invoke-static {}, Lcom/mopub/nativesdk/core/a;->c()Ljava/util/Map;

    move-result-object v0

    .line 323
    const-string v4, "os_version"

    const-string v5, "os_version"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 326
    const-string v4, "package_name"

    const-string v5, "package_name"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 329
    const-string v4, "app_version_name"

    const-string v5, "app_version_name"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 332
    const-string v4, "app_version_code"

    const-string v5, "app_version_code"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 335
    const-string v4, "orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 338
    const-string v4, "brand"

    const-string v5, "brand"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 341
    const-string v4, "model"

    const-string v5, "model"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 344
    const-string v4, "gaid"

    const-string v5, "gaid"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 347
    const-string v4, "mnc"

    const-string v5, "mnc"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 350
    const-string v4, "mcc"

    const-string v5, "mcc"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 353
    const-string v4, "network_type"

    const-string v5, "network_type"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 356
    const-string v4, "language"

    const-string v5, "language"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 359
    const-string v4, "timezone"

    const-string v5, "timezone"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 362
    const-string v4, "useragent"

    const-string v5, "useragent"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 365
    const-string v4, "sdk_version"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 368
    const-string v4, "gp_version"

    const-string v5, "gp_version"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 371
    const-string v4, "gpsv"

    const-string v5, "gpsv"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 374
    const-string v4, "screen_size"

    const-string v5, "screen_size"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 384
    const-string v4, "d1"

    const-string v5, "imei"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 387
    const-string v4, "d2"

    const-string v5, "mac"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 390
    const-string v4, "d3"

    const-string v5, "android_id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 470
    :goto_0
    const-string v0, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 480
    const-string v0, "app_id"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 482
    const-string v0, "sdk_subid"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 485
    iget-object v0, p0, Lcom/mopub/nativesdk/c/d;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const-string v0, "pkg"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 490
    :cond_0
    const-string v0, "ad_num"

    iget v4, p0, Lcom/mopub/nativesdk/c/d;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 496
    const-string v0, "offset"

    iget v4, p0, Lcom/mopub/nativesdk/c/d;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 499
    const-string v0, "ad_type"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 504
    iget-object v0, p0, Lcom/mopub/nativesdk/c/d;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 506
    sget-object v0, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 508
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 510
    sget-object v0, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 511
    sget-object v0, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v8, 0x5

    if-le v0, v8, :cond_1

    .line 512
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_1

    .line 397
    :cond_2
    const-string v0, "os_version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 400
    const-string v0, "package_name"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 403
    const-string v0, "app_version_name"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 406
    const-string v0, "app_version_code"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->h(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 409
    const-string v0, "orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 412
    const-string v0, "brand"

    .line 1190
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 412
    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 415
    const-string v0, "model"

    .line 2180
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 415
    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 418
    const-string v0, "gaid"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 421
    const-string v0, "mnc"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 424
    const-string v0, "mcc"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 427
    const-string v0, "network_type"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->m(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 430
    const-string v0, "language"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 433
    const-string v0, "timezone"

    invoke-static {}, Lcom/mopub/nativesdk/d/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 439
    const-string v0, "sdk_version"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 442
    const-string v0, "gp_version"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 445
    const-string v0, "gpsv"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 448
    const-string v0, "screen_size"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->j(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->k(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 458
    const-string v0, "d1"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 461
    const-string v0, "d2"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 464
    const-string v0, "d3"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/nativesdk/d/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    goto/16 :goto_0

    .line 516
    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 517
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativesdk/c/d;->j:Ljava/lang/String;

    .line 523
    :cond_4
    iget-object v0, p0, Lcom/mopub/nativesdk/c/d;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mopub/nativesdk/c/d;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 524
    const-string v0, "exclude_ids"

    iget-object v4, p0, Lcom/mopub/nativesdk/c/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 527
    :cond_5
    const-string v0, "exclude_pkg"

    invoke-static {}, Lcom/mopub/nativesdk/c/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 530
    const-string v0, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mopub/nativesdk/c/d;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-cosiehl6789a**(%$)-12poiuhj,vktoihopbaposiuqh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/nativesdk/d/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mopub/nativesdk/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;

    .line 533
    invoke-virtual {v1}, Lcom/mopub/nativesdk/c/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 538
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 539
    sget-object v0, Lcom/mopub/nativesdk/core/a;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 540
    sget-object v0, Lcom/mopub/nativesdk/core/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    sget-object v3, Lcom/mopub/nativesdk/core/a;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 544
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 548
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/Campaign;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 161
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativesdk/c/d;->c:I

    .line 165
    iget v1, p0, Lcom/mopub/nativesdk/c/d;->c:I

    if-ne v1, v13, :cond_8

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 169
    const-string v1, "campaigns"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v2, v4

    .line 170
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 172
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 174
    new-instance v6, Lcom/mopub/nativesdk/Campaign;

    invoke-direct {v6}, Lcom/mopub/nativesdk/Campaign;-><init>()V

    .line 175
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mopub/nativesdk/Campaign;->setId(J)V

    .line 176
    const-string v1, "click_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setClickUrl(Ljava/lang/String;)V

    .line 177
    const-string v1, "impression_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setImpressionUrl(Ljava/lang/String;)V

    .line 178
    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setPackageName(Ljava/lang/String;)V

    .line 179
    const-string v1, "icon_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setIconUrl(Ljava/lang/String;)V

    .line 180
    const-string v1, "appName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setAppName(Ljava/lang/String;)V

    .line 181
    const-string v1, "appDesc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setAppDesc(Ljava/lang/String;)V

    .line 182
    const-string v1, "appScore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mopub/nativesdk/Campaign;->setAppScore(D)V

    .line 183
    const-string v1, "image_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setImageUrl(Ljava/lang/String;)V

    .line 184
    const-string v1, "image_size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setImageSize(Ljava/lang/String;)V

    .line 185
    const-string v1, "dataUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setDataUrl(Ljava/lang/String;)V

    .line 187
    const-string v1, "category"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setAppCategory(Ljava/lang/String;)V

    .line 188
    const-string v1, "category_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setAppCategoryID(Ljava/lang/String;)V

    .line 189
    const-string v1, "download_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setDownloadNum(Ljava/lang/String;)V

    .line 190
    const-string v1, "md5"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setFileMD5(Ljava/lang/String;)V

    .line 191
    const-string v1, "file_size"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mopub/nativesdk/Campaign;->setFileSizeLong(J)V

    .line 192
    const-string v1, "file_size_text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setFileSizeText(Ljava/lang/String;)V

    .line 193
    const-string v1, "ver_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setVersionName(Ljava/lang/String;)V

    .line 194
    const-string v1, "ver_code"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setVersionCode(I)V

    .line 196
    const-string v1, "developer"

    const-string v7, ""

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setDeveloper(Ljava/lang/String;)V

    .line 197
    const-string v1, "permissions_num"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setPermissionsNum(I)V

    .line 198
    const-string v1, "category_icon"

    const-string v7, ""

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mopub/nativesdk/Campaign;->setCategoryIconURL(Ljava/lang/String;)V

    .line 200
    const-string v1, "image_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 201
    if-eqz v7, :cond_1

    .line 202
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    .line 203
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 204
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {v6, v8}, Lcom/mopub/nativesdk/Campaign;->setScreenShot(Ljava/util/List;)V

    .line 209
    :cond_1
    const-string v1, "permission_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 210
    if-eqz v7, :cond_3

    .line 211
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    .line 212
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 214
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 216
    new-instance v10, Lcom/mopub/nativesdk/PermissionItem;

    invoke-direct {v10}, Lcom/mopub/nativesdk/PermissionItem;-><init>()V

    .line 217
    const-string v11, "permission_code"

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mopub/nativesdk/PermissionItem;->setPermissionCode(Ljava/lang/String;)V

    .line 218
    const-string v11, "permission_group_code"

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/mopub/nativesdk/PermissionItem;->setPermissionGroup(Ljava/lang/String;)V

    .line 219
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 221
    :cond_2
    invoke-virtual {v6, v8}, Lcom/mopub/nativesdk/Campaign;->setPermissionList(Ljava/util/List;)V

    .line 224
    :cond_3
    const-string v1, "category_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_5

    .line 226
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v4

    .line 227
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 229
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 231
    new-instance v9, Lcom/mopub/nativesdk/CategoryItem;

    invoke-direct {v9}, Lcom/mopub/nativesdk/CategoryItem;-><init>()V

    .line 232
    const-string v10, "category_code"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mopub/nativesdk/CategoryItem;->setCategoryCode(Ljava/lang/String;)V

    .line 233
    const-string v10, "category_title"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/mopub/nativesdk/CategoryItem;->setCategoryTitle(Ljava/lang/String;)V

    .line 234
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 236
    :cond_4
    invoke-virtual {v6, v7}, Lcom/mopub/nativesdk/Campaign;->setCategoryList(Ljava/util/List;)V

    .line 239
    :cond_5
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 245
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 247
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    .line 251
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    .line 252
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/Campaign;

    .line 254
    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 255
    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    .line 259
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catch_0
    move-exception v0

    .line 296
    :cond_8
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 266
    :cond_9
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_c

    .line 267
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/Campaign;

    .line 269
    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 270
    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 271
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v13, :cond_b

    .line 272
    new-instance v5, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Random;-><init>(J)V

    .line 273
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 274
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :goto_8
    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    .line 277
    :cond_b
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_c
    move-object v0, v2

    .line 284
    goto :goto_6

    :cond_d
    move-object v0, v3

    .line 289
    goto :goto_6
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x2

    return v0
.end method

.method protected final synthetic a(Ljava/util/Map;[B)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 31
    .line 3134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RESPONSE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3138
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 3139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3142
    invoke-direct {p0, v0}, Lcom/mopub/nativesdk/c/d;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3143
    if-eqz v0, :cond_0

    .line 3144
    :goto_0
    return-object v0

    .line 3148
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/mopub/nativesdk/c/d;->d:I

    .line 85
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mopub/nativesdk/c/d;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://realtime.icecyber.org/realtime?p="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/mopub/nativesdk/c/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/mopub/nativesdk/c/d;->g:I

    .line 89
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mopub/nativesdk/c/d;->f:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mopub/nativesdk/c/d;->b:Ljava/lang/String;

    .line 81
    return-void
.end method

.method protected final c()[B
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mopub/nativesdk/c/d;->i:Ljava/lang/String;

    .line 93
    return-void
.end method
