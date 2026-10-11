.class public Lcom/duapps/ad/stats/h;
.super Ljava/lang/Object;
.source "ToolStatsHelper.java"


# direct methods
.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    const-string v0, ""

    .line 213
    if-nez p0, :cond_1

    .line 214
    const-string v0, "none"

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 215
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p0, :cond_2

    .line 216
    const-string v0, "tctp"

    goto :goto_0

    .line 217
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p0, :cond_3

    .line 218
    const-string v0, "tctb"

    goto :goto_0

    .line 219
    :cond_3
    const/4 v1, 0x3

    if-ne v1, p0, :cond_0

    .line 220
    const-string v0, "err"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 703
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 709
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 710
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 711
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 712
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 713
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 714
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 715
    const-string v2, "behavior"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    const-string v1, "ToolStatsHelper"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 456
    const-string v0, "admob"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/stats/h;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 829
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 835
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 836
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 837
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "fid"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 838
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "fid"

    .line 839
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {p2}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 840
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 841
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 842
    const-string v2, "itype"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 844
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 845
    const-string v2, "behavior"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    const-string v1, "ToolStatsHelper"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;IIJ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 639
    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v0

    if-le v1, v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 643
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 644
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 645
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 646
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "pclick"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "id"

    .line 647
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-wide v2, p1, Lcom/duapps/ad/entity/AdData;->b:J

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "logid"

    .line 648
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p1, Lcom/duapps/ad/entity/AdData;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 649
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p1, Lcom/duapps/ad/entity/AdData;->y:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ptype"

    .line 650
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "loop"

    .line 651
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tsi"

    .line 652
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 653
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 656
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 657
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "key"

    .line 658
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "jm"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "end"

    .line 659
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    .line 660
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 662
    const-string v2, "native"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 664
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V
    .locals 1

    .prologue
    .line 92
    const-string v0, "tctc"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/duapps/ad/stats/f;)V

    .line 93
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/stats/f;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 402
    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v0

    if-le v1, v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 407
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 408
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 409
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "show"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 410
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p1, Lcom/duapps/ad/stats/f;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "logid"

    .line 411
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 412
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "itype"

    .line 413
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "offerwall"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "pos"

    .line 414
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ids"

    .line 415
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 418
    iget-object v2, p1, Lcom/duapps/ad/stats/f;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const-string v1, "ToolStatsHelper"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/stats/f;J)V
    .locals 2

    .prologue
    .line 355
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;JI)V

    .line 356
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/stats/f;JI)V
    .locals 6

    .prologue
    .line 345
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;JILjava/lang/String;)V

    .line 346
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/stats/f;JILjava/lang/String;)V
    .locals 6

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 306
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 307
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 308
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "thist"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "id"

    .line 309
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "adpkg"

    .line 310
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ac"

    .line 311
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 312
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 313
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_3

    .line 314
    const-string v2, "logid"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 315
    if-lez p4, :cond_2

    .line 316
    const-string v2, "sc"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    int-to-long v4, p4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 317
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 318
    const-string v2, "st"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 320
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 322
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 323
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "key"

    .line 324
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "jm"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "end"

    .line 325
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 328
    const-string v2, "native"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const-string v1, "ToolStatsHelper"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 233
    const/4 v0, 0x4

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 238
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 239
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 240
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ex"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "id"

    .line 241
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 242
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "exm"

    .line 243
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 246
    const-string v2, "behavior"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "ToolStatsHelper"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 944
    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v0

    if-le v1, v0, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    if-nez p1, :cond_2

    .line 948
    const-string v0, "ToolStatsHelper"

    const-string v1, "\u4e0a\u62a5exg\uff0cdata\u662f\u7a7a\u7684_modify\uff0c\u4e0d\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_2
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 953
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 954
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 955
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "exg_gaid"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "logid"

    .line 956
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "isModify"

    .line 957
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "hostname"

    .line 958
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 959
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "id"

    .line 960
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 961
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 962
    const-string v2, "ToolStatsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exg_ismodify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v2, p1, Lcom/duapps/ad/stats/f;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    const-string v1, "ToolStatsHelper"

    const-string v2, "reportExgIsModify failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 909
    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v0

    if-le v1, v0, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    if-nez p1, :cond_2

    .line 914
    const-string v0, "ToolStatsHelper"

    const-string v1, "\u4e0a\u62a5exg\uff0cdata\u662f\u7a7a\u7684\uff0c\u4e0d\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 918
    :cond_2
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 920
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 921
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 922
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "exg_gaid"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "logid"

    .line 923
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "device_id_type"

    .line 924
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "hostname"

    .line 925
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "device_id_param"

    .line 926
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 927
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "id"

    .line 928
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 929
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 931
    const-string v2, "ToolStatsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exg_gaid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v2, p1, Lcom/duapps/ad/stats/f;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    const-string v1, "ToolStatsHelper"

    const-string v2, "reportExgGaidAnid failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 264
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 269
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 270
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 271
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "thista"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "adpkg"

    .line 272
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ac"

    .line 273
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 274
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 277
    const-string v2, "native"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "ToolStatsHelper"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 464
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 469
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 470
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 471
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tctc"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 472
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 473
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 474
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    const-string v2, "itype"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 477
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 479
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/duapps/ad/stats/f;)V
    .locals 6

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 167
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 168
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 169
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 170
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 171
    const-string v2, "logid"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 172
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 174
    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->d()I

    move-result v2

    if-lez v2, :cond_2

    .line 175
    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->e()Lcom/duapps/ad/base/j;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 176
    const-string v3, "preclick"

    invoke-virtual {v1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget v2, v2, Lcom/duapps/ad/base/j;->c:I

    invoke-static {v2}, Lcom/duapps/ad/stats/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 177
    const-string v2, "adpkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 179
    :cond_2
    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "online"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    const-string v2, "adpkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 182
    :cond_3
    invoke-static {}, Lcom/duapps/ad/base/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string v3, "thi"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 184
    const-string v3, "referrer"

    invoke-virtual {v1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 186
    :cond_4
    const-string v2, "sid"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->j()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 187
    const-string v2, "tctc"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/duapps/ad/stats/f;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 188
    const-string v2, "itype"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p2, Lcom/duapps/ad/stats/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 190
    :cond_5
    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->f()Lcom/duapps/ad/entity/AdData;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_6

    .line 192
    iget v2, v2, Lcom/duapps/ad/entity/AdData;->g:I

    .line 193
    const-string v3, "tctc"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 194
    const-string v3, "pos"

    invoke-virtual {v1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 197
    :cond_6
    const-string v2, "tctp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 198
    const-string v2, "directgp"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->o()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 200
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 202
    iget-object v2, p2, Lcom/duapps/ad/stats/f;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "ToolStatsHelper"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/duapps/ad/entity/AdData;)V
    .locals 5

    .prologue
    .line 882
    iget-object v1, p0, Lcom/duapps/ad/entity/AdData;->G:[Ljava/lang/String;

    .line 883
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 884
    aget-object v2, v1, v0

    .line 885
    invoke-static {}, Lcom/duapps/ad/base/t;->a()Lcom/duapps/ad/base/t;

    move-result-object v3

    new-instance v4, Lcom/duapps/ad/stats/h$1;

    invoke-direct {v4, v2, p0}, Lcom/duapps/ad/stats/h$1;-><init>(Ljava/lang/String;Lcom/duapps/ad/entity/AdData;)V

    invoke-virtual {v3, v4}, Lcom/duapps/ad/base/t;->a(Ljava/lang/Runnable;)V

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 755
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 761
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 762
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 763
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ne"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 764
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 765
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 766
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 767
    const-string v2, "behavior"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v0

    .line 769
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    const-string v1, "ToolStatsHelper"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 460
    const-string v0, "admob"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 461
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;IIJ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 670
    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v0

    if-le v1, v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 675
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 676
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 677
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 678
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tts"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "id"

    .line 679
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-wide v2, p1, Lcom/duapps/ad/entity/AdData;->b:J

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "logid"

    .line 680
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p1, Lcom/duapps/ad/entity/AdData;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 681
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p1, Lcom/duapps/ad/entity/AdData;->y:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ptype"

    .line 682
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "loop"

    .line 683
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tsi"

    .line 684
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 685
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tts_t"

    .line 686
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p1, Lcom/duapps/ad/entity/AdData;->a:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 687
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v1

    .line 689
    const-string v2, "native"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 691
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V
    .locals 1

    .prologue
    .line 96
    const-string v0, "tcta"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/duapps/ad/stats/f;)V

    .line 97
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 365
    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v0

    if-le v1, v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 370
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 371
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 372
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "show"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 373
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p1, Lcom/duapps/ad/stats/f;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "logid"

    .line 374
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 375
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 376
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 377
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "online"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    const-string v2, "adpkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 380
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 381
    const-string v2, "itype"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 383
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 385
    iget-object v2, p1, Lcom/duapps/ad/stats/f;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "ToolStatsHelper"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 484
    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v0

    if-le v1, v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 489
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 490
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 491
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "show"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 492
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

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
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 495
    const-string v2, "itype"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 497
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 499
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 592
    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v0

    if-le v1, v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 597
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 598
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 599
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "show"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 600
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 601
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 602
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 603
    const-string v2, "itype"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 605
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 607
    const-string v2, "facebook"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V
    .locals 1

    .prologue
    .line 100
    const-string v0, "tct"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/duapps/ad/stats/f;)V

    .line 101
    return-void
.end method

.method public static d(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 618
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 636
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 623
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 624
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 625
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tctc"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "sid"

    .line 626
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 627
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 628
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 629
    const-string v2, "itype"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 631
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 633
    const-string v2, "facebook"

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/stats/f;)V

    .line 105
    const-string v0, "tctb"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/duapps/ad/stats/f;)V

    .line 106
    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V
    .locals 1

    .prologue
    .line 109
    invoke-static {p0}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/stats/f;)V

    .line 110
    const-string v0, "tctp"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/duapps/ad/stats/f;)V

    .line 111
    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V
    .locals 1

    .prologue
    .line 114
    const-string v0, "thi"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/duapps/ad/stats/f;)V

    .line 115
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V
    .locals 1

    .prologue
    .line 118
    const-string v0, "tccu"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/duapps/ad/stats/f;)V

    .line 119
    return-void
.end method

.method public static h(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V
    .locals 6

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/duapps/ad/base/m;->j(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;

    move-result-object v0

    .line 127
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 128
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "key"

    .line 129
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "tcpp"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ts"

    .line 130
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 131
    const-string v2, "logid"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 132
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 134
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->d()I

    move-result v2

    if-lez v2, :cond_2

    .line 135
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->e()Lcom/duapps/ad/base/j;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 136
    const-string v3, "preclick"

    invoke-virtual {v1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget v2, v2, Lcom/duapps/ad/base/j;->c:I

    invoke-static {v2}, Lcom/duapps/ad/stats/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 137
    const-string v2, "adpkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 139
    :cond_2
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "online"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    const-string v2, "adpkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 142
    :cond_3
    const-string v2, "sid"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->j()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 143
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 146
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 147
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "key"

    .line 148
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "jm"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "end"

    .line 149
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 152
    iget-object v2, p1, Lcom/duapps/ad/stats/f;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "ToolStatsHelper"

    const-string v2, "create report content failed."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
