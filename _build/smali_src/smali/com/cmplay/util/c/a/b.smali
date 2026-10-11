.class public Lcom/cmplay/util/c/a/b;
.super Lcom/cmplay/util/c/a;
.source "whitetile2_ad_request.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "whitetile2_ad_request"

    invoke-direct {p0, v0}, Lcom/cmplay/util/c/a;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 6

    .prologue
    .line 17
    :try_start_0
    const-string v0, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/cmplay/util/c/a/b;->a(Ljava/lang/String;J)V

    .line 18
    const-string v0, "network"

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/c/a/b;->b(Ljava/lang/String;I)V

    .line 19
    const-string v0, "action"

    invoke-virtual {p0, v0, p1}, Lcom/cmplay/util/c/a/b;->b(Ljava/lang/String;I)V

    .line 20
    const-string v0, "errorcode"

    invoke-virtual {p0, v0, p2}, Lcom/cmplay/util/c/a/b;->b(Ljava/lang/String;I)V

    .line 21
    const-string v0, "source"

    invoke-virtual {p0, v0, p3}, Lcom/cmplay/util/c/a/b;->b(Ljava/lang/String;I)V

    .line 22
    const-string v0, "ad_type"

    invoke-virtual {p0, v0, p4}, Lcom/cmplay/util/c/a/b;->b(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {p0}, Lcom/cmplay/util/c/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "reportAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tableName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cmplay/util/c/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/cmplay/util/c/a/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/cmplay/util/NativeUtil;->reportData(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
