.class public Lcom/cmplay/internalpush/video/CloudVideoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudVideoReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cmplay.activesdk.cloud_cfg.update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-static {}, Lcom/cmplay/base/util/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/cmplay/internalpush/video/e;->b()V

    goto :goto_0
.end method
