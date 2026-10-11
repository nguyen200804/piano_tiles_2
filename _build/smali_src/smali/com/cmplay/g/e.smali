.class public Lcom/cmplay/g/e;
.super Lcom/cmplay/util/c/a;
.source "whitetile2_neitui_popup.java"


# instance fields
.field private c:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "whitetile2_neitui_popup"

    invoke-direct {p0, v0}, Lcom/cmplay/util/c/a;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/g/e;->c:Ljava/text/DateFormat;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/cmplay/g/e;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/cmplay/g/e;->b(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 77
    new-instance v0, Lcom/cmplay/g/e$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cmplay/g/e$1;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method private b(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 32
    :try_start_0
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v1

    .line 33
    packed-switch v1, :pswitch_data_0

    move v0, v1

    .line 53
    :goto_0
    :pswitch_0
    const-string v1, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/cmplay/g/e;->a(Ljava/lang/String;J)V

    .line 54
    const-string v1, "player_time"

    iget-object v2, p0, Lcom/cmplay/g/e;->c:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cmplay/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "network"

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/g/e;->b(Ljava/lang/String;I)V

    .line 56
    const-string v0, "popup"

    invoke-virtual {p0, v0, p1}, Lcom/cmplay/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "style"

    invoke-virtual {p0, v0, p3}, Lcom/cmplay/g/e;->b(Ljava/lang/String;I)V

    .line 58
    const-string v0, "action"

    invoke-virtual {p0, v0, p2}, Lcom/cmplay/g/e;->b(Ljava/lang/String;I)V

    .line 59
    const-string v0, "pkgname"

    invoke-virtual {p0, v0, p4}, Lcom/cmplay/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "ab"

    invoke-virtual {p0, v0, p5}, Lcom/cmplay/g/e;->b(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {p0}, Lcom/cmplay/g/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/g/e;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->reportData(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    return-void

    .line 35
    :pswitch_1
    const/4 v0, 0x5

    .line 36
    goto :goto_0

    .line 41
    :pswitch_2
    const/4 v0, 0x2

    .line 42
    goto :goto_0

    .line 44
    :pswitch_3
    const/4 v0, 0x4

    .line 45
    goto :goto_0

    .line 47
    :pswitch_4
    const/4 v0, 0x6

    .line 48
    goto :goto_0

    .line 50
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    goto :goto_1

    .line 62
    :catch_1
    move-exception v0

    goto :goto_1

    .line 33
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
