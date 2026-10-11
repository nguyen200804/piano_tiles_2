.class Lcom/duapps/ad/base/n$2$1;
.super Lcom/duapps/ad/base/r$b;
.source "ToolCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/base/n$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/duapps/ad/base/n$2;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/n$2;J)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iput-wide p2, p0, Lcom/duapps/ad/base/n$2$1;->a:J

    invoke-direct {p0}, Lcom/duapps/ad/base/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/duapps/ad/base/r$a;)V
    .locals 9

    .prologue
    const/16 v0, 0xc8

    const/16 v8, -0x65

    .line 387
    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    .line 388
    :try_start_0
    iget-object v0, p2, Lcom/duapps/ad/base/r$a;->a:Lorg/json/JSONObject;

    .line 389
    const-string v1, "datas"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 390
    const-string v1, "ToolboxCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWall sType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v3, v3, Lcom/duapps/ad/base/n$2;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dlType->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v3, v3, Lcom/duapps/ad/base/n$2;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", response ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 391
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v1, v1, Lcom/duapps/ad/base/n$2;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/n;->a(Ljava/lang/String;)Lcom/duapps/ad/base/n$a;

    move-result-object v0

    .line 394
    iget-object v1, p2, Lcom/duapps/ad/base/r$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/base/n$a;->b:Ljava/lang/String;

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/base/n$a;->c:J

    .line 396
    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v1, v1, Lcom/duapps/ad/base/n$2;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/duapps/ad/base/n$a;->a:Ljava/lang/String;

    .line 397
    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v1, v1, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-virtual {v1, v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n$a;)V

    .line 398
    new-instance v1, Lcom/duapps/ad/entity/AdModel;

    iget-object v2, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v2, v2, Lcom/duapps/ad/base/n$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget v3, v3, Lcom/duapps/ad/base/n$2;->d:I

    iget-object v4, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v4, v4, Lcom/duapps/ad/base/n$2;->e:Ljava/lang/String;

    iget-wide v6, v0, Lcom/duapps/ad/base/n$a;->c:J

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/entity/AdModel;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 400
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/duapps/ad/entity/AdModel;->n:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/k;->a(Landroid/content/Context;)Lcom/duapps/ad/base/k;

    move-result-object v0

    iget-object v2, v1, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/duapps/ad/base/k;->a(Ljava/util/List;)Z

    .line 405
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Landroid/content/Context;)Lcom/duapps/ad/base/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/base/l;->a()V

    .line 407
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 408
    iget-object v0, v1, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 409
    iget v4, v0, Lcom/duapps/ad/entity/AdData;->a:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 410
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    const-string v1, "ToolboxCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWall sType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v3, v3, Lcom/duapps/ad/base/n$2;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dlType->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v3, v3, Lcom/duapps/ad/base/n$2;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",parse JsonException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->i:Lcom/duapps/ad/base/s;

    const/16 v1, 0x7d0

    sget-object v2, Lcom/duapps/ad/a;->d:Lcom/duapps/ad/a;

    .line 452
    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->f:Ljava/lang/String;

    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 454
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget v1, v1, Lcom/duapps/ad/base/n$2;->d:I

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$2$1;->a:J

    sub-long/2addr v2, v4

    .line 454
    invoke-static {v0, v1, v8, v2, v3}, Lcom/duapps/ad/stats/c;->f(Landroid/content/Context;IIJ)V

    .line 461
    :goto_1
    return-void

    .line 413
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Landroid/content/Context;)Lcom/duapps/ad/base/l;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/duapps/ad/base/l;->a(Ljava/util/List;)V

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/entity/AdModel;)V

    .line 420
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->i:Lcom/duapps/ad/base/s;

    invoke-interface {v0, p1, v1}, Lcom/duapps/ad/base/s;->a(ILjava/lang/Object;)V

    .line 421
    iget-wide v0, p2, Lcom/duapps/ad/base/r$a;->c:J

    .line 422
    iget-object v2, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v2, v2, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v2}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget v3, v3, Lcom/duapps/ad/base/n$2;->d:I

    invoke-static {v2, v3, v0, v1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;IJ)V

    .line 441
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->f:Ljava/lang/String;

    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 442
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget v1, v1, Lcom/duapps/ad/base/n$2;->d:I

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$2$1;->a:J

    sub-long/2addr v2, v4

    .line 442
    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->f(Landroid/content/Context;IIJ)V

    goto :goto_1

    .line 423
    :cond_4
    const/16 v0, 0x130

    if-ne p1, v0, :cond_3

    .line 424
    const-string v0, "ToolboxCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Url->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v2, v2, Lcom/duapps/ad/base/n$2;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 304 called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v1, v1, Lcom/duapps/ad/base/n$2;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/n;->a(Ljava/lang/String;)Lcom/duapps/ad/base/n$a;

    move-result-object v0

    .line 426
    iget-object v1, v0, Lcom/duapps/ad/base/n$a;->b:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 427
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->i:Lcom/duapps/ad/base/s;

    const/16 v1, 0x3e9

    sget-object v2, Lcom/duapps/ad/a;->b:Lcom/duapps/ad/a;

    .line 428
    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 431
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/base/n$a;->c:J

    .line 432
    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v1, v1, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-virtual {v1, v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n$a;)V

    .line 433
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/duapps/ad/base/n$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 434
    const-string v2, "datas"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 435
    const-string v2, "ToolboxCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWall sType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v4, v4, Lcom/duapps/ad/base/n$2;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dlType->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v4, v4, Lcom/duapps/ad/base/n$2;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from cache, response ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 436
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v2, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v1, Lcom/duapps/ad/entity/AdModel;

    iget-object v2, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v2, v2, Lcom/duapps/ad/base/n$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget v3, v3, Lcom/duapps/ad/base/n$2;->d:I

    iget-object v4, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v4, v4, Lcom/duapps/ad/base/n$2;->e:Ljava/lang/String;

    iget-wide v6, v0, Lcom/duapps/ad/base/n$a;->c:J

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/entity/AdModel;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 439
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->i:Lcom/duapps/ad/base/s;

    const/16 v2, 0xc8

    invoke-interface {v0, v2, v1}, Lcom/duapps/ad/base/s;->a(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 446
    :cond_6
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget v1, v1, Lcom/duapps/ad/base/n$2;->d:I

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$2$1;->a:J

    sub-long/2addr v2, v4

    .line 446
    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;IIJ)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 458
    :cond_7
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget v1, v1, Lcom/duapps/ad/base/n$2;->d:I

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$2$1;->a:J

    sub-long/2addr v2, v4

    .line 458
    invoke-static {v0, v1, v8, v2, v3}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;IIJ)V

    goto/16 :goto_1
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 383
    check-cast p2, Lcom/duapps/ad/base/r$a;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/base/n$2$1;->a(ILcom/duapps/ad/base/r$a;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 465
    const-string v0, "ToolboxCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWall sType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v2, v2, Lcom/duapps/ad/base/n$2;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dlType->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v2, v2, Lcom/duapps/ad/base/n$2;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parse failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->i:Lcom/duapps/ad/base/s;

    const/16 v1, 0x7d1

    sget-object v2, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/a;

    .line 468
    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->f:Ljava/lang/String;

    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget v1, v1, Lcom/duapps/ad/base/n$2;->d:I

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$2$1;->a:J

    sub-long/2addr v2, v4

    .line 470
    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->f(Landroid/content/Context;IIJ)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget-object v0, v0, Lcom/duapps/ad/base/n$2;->j:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$2$1;->b:Lcom/duapps/ad/base/n$2;

    iget v1, v1, Lcom/duapps/ad/base/n$2;->d:I

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$2$1;->a:J

    sub-long/2addr v2, v4

    .line 474
    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;IIJ)V

    goto :goto_0
.end method
