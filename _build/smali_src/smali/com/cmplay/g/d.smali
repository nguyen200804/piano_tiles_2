.class public Lcom/cmplay/g/d;
.super Lcom/cmplay/util/c/a;
.source "whitetile2_neitui_mofang.java"


# instance fields
.field private c:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "whitetile2_neitui_mofang"

    invoke-direct {p0, v0}, Lcom/cmplay/util/c/a;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/g/d;->c:Ljava/text/DateFormat;

    .line 24
    return-void
.end method

.method private a(BILjava/lang/String;BLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 28
    :try_start_0
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v1

    .line 29
    packed-switch v1, :pswitch_data_0

    move v0, v1

    .line 49
    :goto_0
    :pswitch_0
    const-string v1, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/cmplay/g/d;->a(Ljava/lang/String;J)V

    .line 50
    const-string v1, "player_time"

    iget-object v2, p0, Lcom/cmplay/g/d;->c:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cmplay/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "network"

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/g/d;->b(Ljava/lang/String;I)V

    .line 52
    const-string v0, "section"

    invoke-virtual {p0, v0, p1}, Lcom/cmplay/g/d;->a(Ljava/lang/String;B)V

    .line 53
    const-string v0, "card_id"

    invoke-virtual {p0, v0, p2}, Lcom/cmplay/g/d;->b(Ljava/lang/String;I)V

    .line 54
    const-string v0, "pkgname"

    invoke-virtual {p0, v0, p3}, Lcom/cmplay/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "err_code"

    invoke-virtual {p0, v0, p4}, Lcom/cmplay/g/d;->a(Ljava/lang/String;B)V

    .line 56
    const-string v0, "err_info"

    invoke-virtual {p0, v0, p5}, Lcom/cmplay/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/cmplay/g/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/g/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->reportData(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    return-void

    .line 31
    :pswitch_1
    const/4 v0, 0x5

    .line 32
    goto :goto_0

    .line 37
    :pswitch_2
    const/4 v0, 0x2

    .line 38
    goto :goto_0

    .line 40
    :pswitch_3
    const/4 v0, 0x4

    .line 41
    goto :goto_0

    .line 43
    :pswitch_4
    const/4 v0, 0x6

    .line 44
    goto :goto_0

    .line 46
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    goto :goto_1

    .line 58
    :catch_1
    move-exception v0

    goto :goto_1

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(IILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    invoke-static {p0, p1, p2, p3, v0}, Lcom/cmplay/g/d;->a(IILjava/lang/String;ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public static a(IILjava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 66
    new-instance v0, Lcom/cmplay/g/d$1;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cmplay/g/d$1;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/cmplay/g/d;BILjava/lang/String;BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/cmplay/g/d;->a(BILjava/lang/String;BLjava/lang/String;)V

    return-void
.end method
