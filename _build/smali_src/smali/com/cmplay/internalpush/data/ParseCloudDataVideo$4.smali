.class Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;
.super Ljava/lang/Object;
.source "ParseCloudDataVideo.java"

# interfaces
.implements Lcom/cmplay/internalpush/video/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/data/c;

.field final synthetic b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Lcom/cmplay/internalpush/data/c;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    iput-object p2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x4

    const/4 v7, 0x0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info id ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v0, v7}, Lcom/cmplay/internalpush/data/c;->e(Z)V

    .line 377
    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, p2}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const-string v0, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ParseCloudDataVideo.getNextHitTopVideo  \u7206\u6b3e \u5185\u63a8\u89c6\u9891 \u4e0b\u8f7d\u6210\u529f pro_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->l()V

    .line 382
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-virtual {v0, v7}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(Z)V

    .line 383
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0, v7}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;I)I

    .line 399
    :goto_0
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v3

    .line 400
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    .line 403
    sparse-switch p1, :sswitch_data_0

    .line 441
    :goto_1
    return-void

    .line 385
    :cond_1
    const-string v0, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ParseCloudDataVideo.getNextHitTopVideo  \u7206\u6b3e \u5185\u63a8\u89c6\u9891 \u4e0b\u8f7d\u5931\u8d25 pro_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   \u4e0b\u8f7d\u4e0b\u4e00\u4e2a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(J)V

    .line 387
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->c(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)I

    .line 388
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;J)V

    .line 389
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-virtual {v0, v6}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(Z)V

    goto :goto_0

    .line 392
    :cond_2
    const-string v0, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ParseCloudDataVideo.getNextHitTopVideo  \u7206\u6b3e \u5185\u63a8\u89c6\u9891 \u4e0b\u8f7d\u5931\u8d25 pro_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   \u4e0b\u8f7d\u4e0b\u4e00\u4e2a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(J)V

    .line 394
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->c(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)I

    .line 395
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;J)V

    .line 396
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->b:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-virtual {v0, v6}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(Z)V

    goto/16 :goto_0

    .line 405
    :sswitch_0
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x7

    const-string v6, "0"

    iget-object v8, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 408
    :sswitch_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/16 v2, 0xc

    const-string v6, "1000"

    iget-object v8, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 412
    :sswitch_2
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "1"

    iget-object v8, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 415
    :sswitch_3
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "2"

    iget-object v8, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 418
    :sswitch_4
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "3"

    iget-object v8, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 421
    :sswitch_5
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "4"

    iget-object v8, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 424
    :sswitch_6
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "5"

    iget-object v8, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 427
    :sswitch_7
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "6"

    iget-object v8, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 431
    :sswitch_8
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "7"

    iget-object v8, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 435
    :sswitch_9
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "-1"

    iget-object v8, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 438
    :sswitch_a
    const-string v0, "zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65e0\u7f51\uff0c\u53bb\u7b5b\u9009\u7f13\u5b58\u7684-----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_9
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_a
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method
