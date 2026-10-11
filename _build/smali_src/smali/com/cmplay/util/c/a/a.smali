.class public Lcom/cmplay/util/c/a/a;
.super Lcom/cmplay/util/c/a;
.source "whitetile2_ad.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "whitetile2_adddata"

    invoke-direct {p0, v0}, Lcom/cmplay/util/c/a;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(BBSB)V
    .locals 6

    .prologue
    .line 19
    :try_start_0
    const-string v0, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/cmplay/util/c/a/a;->a(Ljava/lang/String;J)V

    .line 20
    const-string v0, "network"

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/c/a/a;->b(Ljava/lang/String;I)V

    .line 21
    const-string v0, "scene"

    invoke-virtual {p0, v0, p1}, Lcom/cmplay/util/c/a/a;->a(Ljava/lang/String;B)V

    .line 22
    const-string v0, "action"

    invoke-virtual {p0, v0, p2}, Lcom/cmplay/util/c/a/a;->a(Ljava/lang/String;B)V

    .line 24
    const-string v0, "gain_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/c/a/a;->b(Ljava/lang/String;I)V

    .line 25
    const-string v0, "gain_num"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/c/a/a;->b(Ljava/lang/String;I)V

    .line 26
    const-string v0, "ad_type"

    invoke-virtual {p0, v0, p3}, Lcom/cmplay/util/c/a/a;->b(Ljava/lang/String;I)V

    .line 27
    const-string v0, "askwindow_num"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/c/a/a;->b(Ljava/lang/String;I)V

    .line 28
    const-string v0, "askwindow"

    invoke-virtual {p0, v0, p4}, Lcom/cmplay/util/c/a/a;->a(Ljava/lang/String;B)V

    .line 29
    const-string v0, "ab_test"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/c/a/a;->b(Ljava/lang/String;I)V

    .line 30
    const-string v0, "music_id2"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/c/a/a;->b(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {p0}, Lcom/cmplay/util/c/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/util/c/a/a;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->reportData(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
