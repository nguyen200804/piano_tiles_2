.class public Lcom/cmplay/g/c;
.super Lcom/cmplay/util/c/a;
.source "whitetile2_neitui_installs.java"


# instance fields
.field private c:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "whitetile2_neitui_installs"

    invoke-direct {p0, v0}, Lcom/cmplay/util/c/a;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/g/c;->c:Ljava/text/DateFormat;

    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/cmplay/g/c;

    invoke-direct {v0}, Lcom/cmplay/g/c;-><init>()V

    invoke-direct {v0, p0}, Lcom/cmplay/g/c;->b(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/cmplay/util/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v0

    .line 34
    :goto_0
    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v2

    .line 35
    packed-switch v2, :pswitch_data_0

    move v0, v2

    .line 55
    :goto_1
    :pswitch_0
    const-string v1, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p0, v1, v4, v5}, Lcom/cmplay/g/c;->a(Ljava/lang/String;J)V

    .line 56
    const-string v1, "player_time"

    iget-object v2, p0, Lcom/cmplay/g/c;->c:Ljava/text/DateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cmplay/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "network"

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/g/c;->b(Ljava/lang/String;I)V

    .line 58
    const-string v0, "install_states"

    invoke-virtual {p0, v0, v3}, Lcom/cmplay/g/c;->a(Ljava/lang/String;B)V

    .line 59
    const-string v0, "pkgname"

    invoke-virtual {p0, v0, p1}, Lcom/cmplay/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/cmplay/g/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/g/c;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->reportData(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_2
    return-void

    :cond_0
    move v3, v1

    .line 32
    goto :goto_0

    .line 37
    :pswitch_1
    const/4 v0, 0x5

    .line 38
    goto :goto_1

    :pswitch_2
    move v0, v1

    .line 44
    goto :goto_1

    .line 46
    :pswitch_3
    const/4 v0, 0x4

    .line 47
    goto :goto_1

    .line 49
    :pswitch_4
    const/4 v0, 0x6

    .line 50
    goto :goto_1

    .line 52
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    goto :goto_2

    .line 35
    nop

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
