.class public Lcom/cmplay/exitpopup/d;
.super Lcom/cmplay/util/c/a;
.source "whitetile2_desktoppopup.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "whitetile2_tabshow"

    invoke-direct {p0, v0}, Lcom/cmplay/util/c/a;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(IIIIILjava/lang/String;)V
    .locals 6

    .prologue
    .line 26
    :try_start_0
    const-string v0, "area1"

    int-to-short v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 27
    const-string v0, "area_type"

    int-to-byte v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->a(Ljava/lang/String;B)V

    .line 28
    const-string v0, "action"

    int-to-byte v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->a(Ljava/lang/String;B)V

    .line 29
    const-string v0, "click_num"

    int-to-short v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 30
    const-string v0, "gain_num"

    int-to-short v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 31
    const-string v0, "login_fail_reason"

    invoke-virtual {p0, v0, p6}, Lcom/cmplay/exitpopup/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/cmplay/exitpopup/d;->a(Ljava/lang/String;J)V

    .line 34
    const-string v0, "player_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/cmplay/exitpopup/d;->a(Ljava/lang/String;J)V

    .line 35
    const-string v0, "network"

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 36
    const-string v0, "source"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "tab"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 38
    const-string v0, "site"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 39
    const-string v0, "music_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 40
    const-string v0, "music_name"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "music_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 42
    const-string v0, "first_login"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 43
    const-string v0, "account_id"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "account_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 45
    const-string v0, "ab_test_maidian"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 46
    const-string v0, "login_crown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 47
    const-string v0, "login_star"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 48
    const-string v0, "album_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 49
    const-string v0, "music_id2"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->b(Ljava/lang/String;I)V

    .line 50
    const-string v0, "playlist_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/cmplay/exitpopup/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->reportData(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 54
    const-string v0, "pop_zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u57cb\u70b9\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
