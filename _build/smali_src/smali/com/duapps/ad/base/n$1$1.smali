.class Lcom/duapps/ad/base/n$1$1;
.super Lcom/duapps/ad/base/r$b;
.source "ToolCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/base/n$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/duapps/ad/base/n$1;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/n$1;J)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iput-wide p2, p0, Lcom/duapps/ad/base/n$1$1;->a:J

    invoke-direct {p0}, Lcom/duapps/ad/base/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/duapps/ad/base/r$a;)V
    .locals 9

    .prologue
    const/16 v0, 0xc8

    const/16 v8, -0x65

    .line 224
    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_6

    .line 225
    :try_start_0
    iget-object v0, p2, Lcom/duapps/ad/base/r$a;->a:Lorg/json/JSONObject;

    .line 226
    const-string v1, "datas"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 227
    const-string v1, "ToolboxCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWall sType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v3, v3, Lcom/duapps/ad/base/n$1;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", response ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    iget-object v1, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v1, v1, Lcom/duapps/ad/base/n$1;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/n;->a(Ljava/lang/String;)Lcom/duapps/ad/base/n$a;

    move-result-object v6

    .line 232
    iget-object v0, p2, Lcom/duapps/ad/base/r$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/duapps/ad/base/n$a;->b:Ljava/lang/String;

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/duapps/ad/base/n$a;->c:J

    .line 234
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->i:Ljava/lang/String;

    iput-object v0, v6, Lcom/duapps/ad/base/n$a;->a:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-virtual {v0, v6}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n$a;)V

    .line 236
    const-string v0, "sId"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 237
    if-lez v3, :cond_0

    .line 238
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/duapps/ad/base/m;->i(Landroid/content/Context;I)V

    .line 241
    :cond_0
    const-string v0, "pe"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 244
    :try_start_1
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/duapps/ad/c/a/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :cond_1
    :goto_0
    :try_start_2
    new-instance v1, Lcom/duapps/ad/entity/AdModel;

    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v2, v0, Lcom/duapps/ad/base/n$1;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v4, v0, Lcom/duapps/ad/base/n$1;->e:Ljava/lang/String;

    iget-wide v6, v6, Lcom/duapps/ad/base/n$a;->c:J

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/entity/AdModel;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 254
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/duapps/ad/entity/AdModel;->n:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/k;->a(Landroid/content/Context;)Lcom/duapps/ad/base/k;

    move-result-object v0

    iget-object v2, v1, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/duapps/ad/base/k;->a(Ljava/util/List;)Z

    .line 258
    const-string v0, "normal"

    iget-object v2, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v2, v2, Lcom/duapps/ad/base/n$1;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Landroid/content/Context;)Lcom/duapps/ad/base/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/base/l;->a()V

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v0, v1, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 264
    iget v5, v0, Lcom/duapps/ad/entity/AdData;->a:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 265
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string v1, "ToolboxCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWall sType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v3, v3, Lcom/duapps/ad/base/n$1;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dlType->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v3, v3, Lcom/duapps/ad/base/n$1;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",parse JsonException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->j:Lcom/duapps/ad/base/s;

    const/16 v1, 0x7d0

    sget-object v2, Lcom/duapps/ad/a;->d:Lcom/duapps/ad/a;

    .line 309
    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->f:Ljava/lang/String;

    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget v1, v1, Lcom/duapps/ad/base/n$1;->d:I

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$1$1;->a:J

    sub-long/2addr v2, v4

    .line 311
    invoke-static {v0, v1, v8, v2, v3}, Lcom/duapps/ad/stats/c;->f(Landroid/content/Context;IIJ)V

    .line 318
    :goto_2
    return-void

    .line 248
    :catch_1
    move-exception v0

    .line 249
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 268
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Landroid/content/Context;)Lcom/duapps/ad/base/l;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/duapps/ad/base/l;->a(Ljava/util/List;)V

    .line 274
    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/entity/AdModel;)V

    .line 276
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->j:Lcom/duapps/ad/base/s;

    invoke-interface {v0, p1, v1}, Lcom/duapps/ad/base/s;->a(ILjava/lang/Object;)V

    .line 277
    iget-wide v0, p2, Lcom/duapps/ad/base/r$a;->c:J

    .line 278
    iget-object v2, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v2, v2, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v2}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0, v1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;IJ)V

    .line 298
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->f:Ljava/lang/String;

    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 299
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget v1, v1, Lcom/duapps/ad/base/n$1;->d:I

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$1$1;->a:J

    sub-long/2addr v2, v4

    .line 299
    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->f(Landroid/content/Context;IIJ)V

    goto :goto_2

    .line 279
    :cond_6
    const/16 v0, 0x130

    if-ne p1, v0, :cond_5

    .line 280
    const-string v0, "ToolboxCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Url->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v2, v2, Lcom/duapps/ad/base/n$1;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 304 called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    iget-object v1, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v1, v1, Lcom/duapps/ad/base/n$1;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/n;->a(Ljava/lang/String;)Lcom/duapps/ad/base/n$a;

    move-result-object v0

    .line 282
    iget-object v1, v0, Lcom/duapps/ad/base/n$a;->b:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 283
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->j:Lcom/duapps/ad/base/s;

    const/16 v1, 0x3e9

    sget-object v2, Lcom/duapps/ad/a;->b:Lcom/duapps/ad/a;

    .line 284
    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 287
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/base/n$a;->c:J

    .line 288
    iget-object v1, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v1, v1, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-virtual {v1, v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n$a;)V

    .line 289
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/duapps/ad/base/n$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v2, "datas"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 292
    const-string v2, "ToolboxCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWall sType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v4, v4, Lcom/duapps/ad/base/n$1;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dlType->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v4, v4, Lcom/duapps/ad/base/n$1;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from cache, response ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v2, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/duapps/ad/entity/AdModel;

    iget-object v2, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v2, v2, Lcom/duapps/ad/base/n$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget v3, v3, Lcom/duapps/ad/base/n$1;->d:I

    iget-object v4, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v4, v4, Lcom/duapps/ad/base/n$1;->e:Ljava/lang/String;

    iget-wide v6, v0, Lcom/duapps/ad/base/n$a;->c:J

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/entity/AdModel;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 296
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->j:Lcom/duapps/ad/base/s;

    const/16 v2, 0xc8

    invoke-interface {v0, v2, v1}, Lcom/duapps/ad/base/s;->a(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 303
    :cond_8
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget v1, v1, Lcom/duapps/ad/base/n$1;->d:I

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$1$1;->a:J

    sub-long/2addr v2, v4

    .line 303
    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;IIJ)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 315
    :cond_9
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget v1, v1, Lcom/duapps/ad/base/n$1;->d:I

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$1$1;->a:J

    sub-long/2addr v2, v4

    .line 315
    invoke-static {v0, v1, v8, v2, v3}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;IIJ)V

    goto/16 :goto_2
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 220
    check-cast p2, Lcom/duapps/ad/base/r$a;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/base/n$1$1;->a(ILcom/duapps/ad/base/r$a;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 322
    const-string v0, "ToolboxCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWall sType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v2, v2, Lcom/duapps/ad/base/n$1;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dlType->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v2, v2, Lcom/duapps/ad/base/n$1;->f:Ljava/lang/String;

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

    .line 324
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->j:Lcom/duapps/ad/base/s;

    const/16 v1, 0x7d1

    sget-object v2, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/a;

    .line 325
    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->f:Ljava/lang/String;

    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget v1, v1, Lcom/duapps/ad/base/n$1;->d:I

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$1$1;->a:J

    sub-long/2addr v2, v4

    .line 327
    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->f(Landroid/content/Context;IIJ)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget-object v0, v0, Lcom/duapps/ad/base/n$1;->k:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$1$1;->b:Lcom/duapps/ad/base/n$1;

    iget v1, v1, Lcom/duapps/ad/base/n$1;->d:I

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$1$1;->a:J

    sub-long/2addr v2, v4

    .line 331
    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;IIJ)V

    goto :goto_0
.end method
