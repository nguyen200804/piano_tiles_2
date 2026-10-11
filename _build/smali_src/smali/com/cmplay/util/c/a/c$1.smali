.class Lcom/cmplay/util/c/a/c$1;
.super Ljava/lang/Object;
.source "whitetile2_cloud.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/c/a/c;->a(BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmplay/util/c/a/c;


# direct methods
.method constructor <init>(Lcom/cmplay/util/c/a/c;BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cmplay/util/c/a/c$1;->c:Lcom/cmplay/util/c/a/c;

    iput-byte p2, p0, Lcom/cmplay/util/c/a/c$1;->a:B

    iput-object p3, p0, Lcom/cmplay/util/c/a/c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/util/c/a/c$1;->c:Lcom/cmplay/util/c/a/c;

    const-string v1, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/cmplay/util/c/a/c;->a(Lcom/cmplay/util/c/a/c;Ljava/lang/String;J)V

    .line 35
    iget-object v0, p0, Lcom/cmplay/util/c/a/c$1;->c:Lcom/cmplay/util/c/a/c;

    const-string v1, "action"

    iget-byte v2, p0, Lcom/cmplay/util/c/a/c$1;->a:B

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/c/a/c;->a(Lcom/cmplay/util/c/a/c;Ljava/lang/String;B)V

    .line 36
    iget-object v0, p0, Lcom/cmplay/util/c/a/c$1;->c:Lcom/cmplay/util/c/a/c;

    const-string v1, "deploy_version"

    iget-object v2, p0, Lcom/cmplay/util/c/a/c$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/c/a/c;->a(Lcom/cmplay/util/c/a/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/cmplay/util/c/a/c$1;->c:Lcom/cmplay/util/c/a/c;

    const-string v1, "resource_version"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/c/a/c;->b(Lcom/cmplay/util/c/a/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/cmplay/util/c/a/c$1;->c:Lcom/cmplay/util/c/a/c;

    const-string v1, "network"

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/c/a/c;->a(Lcom/cmplay/util/c/a/c;Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lcom/cmplay/util/c/a/c$1;->c:Lcom/cmplay/util/c/a/c;

    invoke-virtual {v0}, Lcom/cmplay/util/c/a/c;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/util/c/a/c$1;->c:Lcom/cmplay/util/c/a/c;

    invoke-virtual {v1}, Lcom/cmplay/util/c/a/c;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->reportData(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    goto :goto_0
.end method
