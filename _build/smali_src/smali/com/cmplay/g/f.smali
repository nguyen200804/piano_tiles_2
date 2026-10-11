.class public Lcom/cmplay/g/f;
.super Lcom/cmplay/util/c/a;
.source "whitetile2_reportchannel.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "whitetile2_reportchannel"

    invoke-direct {p0, v0}, Lcom/cmplay/util/c/a;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 20
    :try_start_0
    const-string v0, "channelid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/g/f;->b(Ljava/lang/String;I)V

    .line 21
    const-string v0, "channelid2"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/g/f;->b(Ljava/lang/String;I)V

    .line 22
    const-string v0, "action"

    invoke-virtual {p0, v0, p2}, Lcom/cmplay/g/f;->b(Ljava/lang/String;I)V

    .line 23
    const-string v0, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/cmplay/g/f;->a(Ljava/lang/String;J)V

    .line 24
    const-string v0, "network"

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/g/f;->b(Ljava/lang/String;I)V

    .line 25
    invoke-virtual {p0}, Lcom/cmplay/g/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/g/f;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->reportData(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method
