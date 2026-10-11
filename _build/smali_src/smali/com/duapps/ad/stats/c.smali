.class public Lcom/duapps/ad/stats/c;
.super Ljava/lang/Object;
.source "StatsReportHelper.java"


# direct methods
.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x2

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v0, "dln"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 4

    .prologue
    .line 361
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 366
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 367
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 368
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ow2show"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 369
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "co"

    .line 370
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 371
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 373
    const-string v2, "behavior"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IIJ)V
    .locals 5

    .prologue
    .line 85
    const/4 v0, 0x3

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 90
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 91
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 92
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "fbe"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 93
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "co"

    .line 94
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tsi"

    .line 95
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 96
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, "behavior"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;IIJLjava/lang/String;)V
    .locals 5

    .prologue
    .line 164
    const/4 v0, 0x3

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 168
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 169
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 170
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 171
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 172
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "co"

    .line 173
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tsi"

    .line 174
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 175
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    const-string v2, "behavior"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IJ)V
    .locals 4

    .prologue
    .line 289
    const/4 v0, 0x3

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 293
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 294
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 295
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 296
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "srce"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "co"

    .line 297
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tsi"

    .line 298
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 299
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    const-string v2, "behavior"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IJI)V
    .locals 8

    .prologue
    .line 427
    const-string v3, "owrf"

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;ILjava/lang/String;JI)V

    .line 428
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 572
    const/4 v0, 0x3

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 591
    :goto_0
    return-void

    .line 576
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 577
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 578
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 579
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tfe"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 580
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "result"

    .line 581
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "pkg_name"

    .line 582
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    .line 583
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 585
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    const-string v2, "behavior"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;J)V
    .locals 7

    .prologue
    .line 476
    const/4 v6, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;ILjava/lang/String;JI)V

    .line 477
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;JI)V
    .locals 7

    .prologue
    .line 483
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 502
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 488
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 489
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 490
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 491
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tsi"

    .line 492
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 493
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 494
    if-lez p5, :cond_1

    .line 495
    const-string v2, "co"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    int-to-long v4, p5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 497
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 498
    const-string v2, "behavior"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;I)V
    .locals 1

    .prologue
    .line 187
    const-string v0, "irc"

    invoke-static {p0, p1, p2, v0}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;ILjava/lang/String;)V

    .line 188
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 195
    const/4 v0, 0x3

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 199
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 200
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 201
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 202
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "id"

    .line 203
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-wide v2, p1, Lcom/duapps/ad/entity/AdData;->b:J

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 204
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p1, Lcom/duapps/ad/entity/AdData;->y:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "co"

    .line 205
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 206
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v2, "behavior"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 618
    const/4 v0, 0x4

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 641
    :goto_0
    return-void

    .line 621
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 622
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 623
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 624
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "gp_url_info"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 625
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "pkg_name"

    .line 626
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "logId"

    .line 627
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "id"

    .line 628
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 629
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->j()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "result_url"

    .line 630
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "redirect_url"

    .line 631
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "directgp"

    .line 632
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v1

    .line 633
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 635
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    const-string v2, "behavior"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 638
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x2

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v0, "fbgr"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 122
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 123
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 124
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 125
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 126
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "st"

    .line 127
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 128
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "behavior"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 10

    .prologue
    const-wide/16 v0, 0x1

    const-wide/16 v2, -0x1

    .line 538
    const/4 v4, 0x3

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 559
    :goto_0
    return-void

    .line 542
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v6

    .line 543
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 544
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "key"

    .line 545
    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "tdm"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "ts"

    .line 546
    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "pkg_name"

    .line 547
    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "co"

    .line 548
    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    if-eqz p2, :cond_1

    move-wide v4, v2

    :goto_1
    invoke-virtual {v7, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "dl_pkg"

    .line 549
    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4, p3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "sco"

    .line 550
    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    if-eqz p4, :cond_2

    :goto_2
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    const-string v1, "behavior"

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v0, v2}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-wide v4, v0

    .line 548
    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 550
    goto :goto_2
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 274
    const-string v0, "imn"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    return-void
.end method

.method public static b(Landroid/content/Context;IIJ)V
    .locals 7

    .prologue
    .line 140
    const-string v6, "dle"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;IIJLjava/lang/String;)V

    .line 141
    return-void
.end method

.method public static b(Landroid/content/Context;IJ)V
    .locals 4

    .prologue
    .line 316
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 321
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 322
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 323
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "owcu"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 324
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 325
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tsi"

    .line 326
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "itype"

    .line 327
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "offerwall"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 330
    const-string v2, "behavior"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;IJI)V
    .locals 8

    .prologue
    .line 445
    const-string v3, "owgf"

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;ILjava/lang/String;JI)V

    .line 446
    return-void
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 597
    const/4 v0, 0x4

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 615
    :goto_0
    return-void

    .line 600
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 601
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 602
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 603
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "efe"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 604
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "reason"

    .line 605
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "type"

    .line 606
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 607
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 609
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    const-string v2, "behavior"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 224
    const-string v0, "dlgr"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 240
    const/4 v0, 0x2

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 244
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 245
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 246
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 247
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "st"

    .line 248
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 249
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 250
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    const-string v2, "behavior"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 278
    const-string v0, "oln"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    return-void
.end method

.method public static c(Landroid/content/Context;IIJ)V
    .locals 7

    .prologue
    .line 144
    const-string v6, "ime"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;IIJLjava/lang/String;)V

    .line 145
    return-void
.end method

.method public static c(Landroid/content/Context;IJ)V
    .locals 2

    .prologue
    .line 436
    const-string v0, "owrs"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;ILjava/lang/String;J)V

    .line 437
    return-void
.end method

.method public static c(Landroid/content/Context;IJI)V
    .locals 8

    .prologue
    .line 463
    const-string v3, "owaf"

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;ILjava/lang/String;JI)V

    .line 464
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 228
    const-string v0, "amgr"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    return-void
.end method

.method public static d(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 517
    const/4 v0, 0x2

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v0, "dlhn"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;IIJ)V
    .locals 7

    .prologue
    .line 148
    const-string v6, "ole"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;IIJLjava/lang/String;)V

    .line 149
    return-void
.end method

.method public static d(Landroid/content/Context;IJ)V
    .locals 2

    .prologue
    .line 454
    const-string v0, "owgs"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;ILjava/lang/String;J)V

    .line 455
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 232
    const-string v0, "imgr"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    return-void
.end method

.method public static e(Landroid/content/Context;IIJ)V
    .locals 7

    .prologue
    .line 152
    const-string v6, "ame"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;IIJLjava/lang/String;)V

    .line 153
    return-void
.end method

.method public static e(Landroid/content/Context;IJ)V
    .locals 2

    .prologue
    .line 472
    const-string v0, "owas"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;ILjava/lang/String;J)V

    .line 473
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 236
    const-string v0, "olgr"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    return-void
.end method

.method public static f(Landroid/content/Context;IIJ)V
    .locals 7

    .prologue
    .line 531
    const-string v6, "dlhe"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;IIJLjava/lang/String;)V

    .line 532
    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 505
    const/4 v0, 0x2

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 508
    :cond_0
    const-string v0, "dlhgr"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
