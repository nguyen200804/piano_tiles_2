.class public Lcom/cmplay/cloud/CloudUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudUpdateReceiver.java"


# static fields
.field private static a:Lcom/cmplay/cloud/CloudUpdateReceiver;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 125
    new-instance v0, Lcom/cmplay/cloud/CloudUpdateReceiver$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cmplay/cloud/CloudUpdateReceiver$3;-><init>(Lcom/cmplay/cloud/CloudUpdateReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/cloud/CloudUpdateReceiver;->b:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cmplay.activesdk.cloud_cfg.update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/cloud/CloudUpdateReceiver;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/cmplay/cloud/CloudUpdateReceiver;->a:Lcom/cmplay/cloud/CloudUpdateReceiver;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/cmplay/cloud/CloudUpdateReceiver;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/cmplay/cloud/CloudUpdateReceiver;->a:Lcom/cmplay/cloud/CloudUpdateReceiver;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/cmplay/cloud/CloudUpdateReceiver;

    invoke-direct {v0, p0}, Lcom/cmplay/cloud/CloudUpdateReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/cloud/CloudUpdateReceiver;->a:Lcom/cmplay/cloud/CloudUpdateReceiver;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/cmplay/cloud/CloudUpdateReceiver;->a:Lcom/cmplay/cloud/CloudUpdateReceiver;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 55
    invoke-static {p1}, Lcom/cmplay/i/c;->a(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/cmplay/cloud/CloudUpdateReceiver;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "section_common"

    const-string v2, "cloud_android_sdk_later_load"

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    const-string v1, "key_android_sdk_later_load"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 67
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "section_ad_interception"

    invoke-virtual {v0, v5, v1}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v6, :cond_0

    .line 71
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    const-string v1, "ly"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AD_INTERCEPTION = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "key_ad_interception"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "section_ad_new"

    invoke-virtual {v0, v5, v1}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v6, :cond_1

    .line 81
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    const-string v1, "ly"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad_new = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "key_ad_new"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->notifyCloudDataChanged()V

    .line 90
    :cond_2
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "section_common"

    const-string v2, "cloud_key_unityads_force_cache_num"

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 95
    invoke-static {}, Lcom/cmplay/i/c;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    const-string v1, "key_unityads_force_cache_num"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    .line 99
    :cond_3
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    new-instance v0, Lcom/cmplay/cloud/CloudUpdateReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/cloud/CloudUpdateReceiver$1;-><init>(Lcom/cmplay/cloud/CloudUpdateReceiver;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 109
    :cond_4
    invoke-static {}, Lcom/cmplay/i/c;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/b/b;->b()V

    .line 113
    new-instance v0, Lcom/cmplay/cloud/CloudUpdateReceiver$2;

    invoke-direct {v0, p0}, Lcom/cmplay/cloud/CloudUpdateReceiver$2;-><init>(Lcom/cmplay/cloud/CloudUpdateReceiver;)V

    invoke-static {v0}, Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V

    .line 120
    :cond_5
    return-void
.end method
