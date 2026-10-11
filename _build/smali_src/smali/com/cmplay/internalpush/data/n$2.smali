.class Lcom/cmplay/internalpush/data/n$2;
.super Ljava/lang/Object;
.source "OpenScreenParseCloudData.java"

# interfaces
.implements Lcom/cmplay/internalpush/video/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/data/n;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/data/c;

.field final synthetic b:Lcom/cmplay/internalpush/data/n;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/data/n;Lcom/cmplay/internalpush/data/c;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    iput-object p2, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 11

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info id ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v0, v8}, Lcom/cmplay/internalpush/data/c;->e(Z)V

    .line 407
    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    iget-object v3, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, p2}, Lcom/cmplay/internalpush/data/n;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const-string v0, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenScreenParseCloudData.getNextVideo()  \u5f00\u5c4f\u89c6\u9891 \u4e0b\u8f7d\u6210\u529f pro_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  resetDownloadFailTag()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/n;->l()V

    .line 412
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/n;->f()V

    .line 413
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    invoke-static {v0, v8}, Lcom/cmplay/internalpush/data/n;->a(Lcom/cmplay/internalpush/data/n;I)I

    .line 427
    :goto_0
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v3

    .line 428
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    .line 431
    sparse-switch p1, :sswitch_data_0

    .line 469
    :goto_1
    return-void

    .line 415
    :cond_1
    const-string v0, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenScreenParseCloudData.getNextVideo()  \u5f00\u5c4f\u89c6\u9891 \u4e0b\u8f7d\u5931\u8d25 pro_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

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

    .line 416
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    iget-object v3, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/cmplay/internalpush/data/n;->a(J)V

    .line 417
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/n;->a(Lcom/cmplay/internalpush/data/n;)I

    .line 418
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/n;->f()V

    goto :goto_0

    .line 421
    :cond_2
    const-string v0, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenScreenParseCloudData.getNextVideo()  \u5f00\u5c4f\u89c6\u9891 \u4e0b\u8f7d\u5931\u8d25 pro_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

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

    .line 422
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    iget-object v3, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/cmplay/internalpush/data/n;->a(J)V

    .line 423
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/n;->a(Lcom/cmplay/internalpush/data/n;)I

    .line 424
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n$2;->b:Lcom/cmplay/internalpush/data/n;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/n;->f()V

    goto/16 :goto_0

    .line 433
    :sswitch_0
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x7

    const-string v6, "0"

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 436
    :sswitch_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/16 v2, 0xc

    const-string v6, "1000"

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 440
    :sswitch_2
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "1"

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 443
    :sswitch_3
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "2"

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 446
    :sswitch_4
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "3"

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 449
    :sswitch_5
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "4"

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 452
    :sswitch_6
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "5"

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 455
    :sswitch_7
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "6"

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 459
    :sswitch_8
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "7"

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 463
    :sswitch_9
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v6, "-1"

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto/16 :goto_1

    .line 466
    :sswitch_a
    const-string v0, "zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmplay/internalpush/data/n$2;->a:Lcom/cmplay/internalpush/data/c;

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

    .line 431
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
