.class public Lcom/cmplay/internalpush/CloudUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudUpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cmplay.activesdk.cloud_cfg.update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p1}, Lcom/cmplay/internalpush/f;->c(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    const-string v0, "zzb_cloud"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudUpdateReceiver \u8fdb\u7a0b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/cmplay/base/util/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\u901a\u77e5\u5230\u4e86\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-static {}, Lcom/cmplay/base/util/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "zzb_cloud"

    const-string v1, "CloudUpdateReceiver UI\u8fdb\u7a0b\u901a\u77e5\u5230\u4e86\uff0c\u53bb\u52a0\u8f7d\u6570\u636e"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/a/a/b;->b()V

    goto :goto_0
.end method
