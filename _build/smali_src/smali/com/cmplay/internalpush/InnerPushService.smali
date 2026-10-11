.class public Lcom/cmplay/internalpush/InnerPushService;
.super Landroid/app/Service;
.source "InnerPushService.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/cmplay/internalpush/InnerPushService;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x1499700

    const/16 v4, 0x3e9

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cmplay/internalpush/InnerPushService;->a:J

    .line 48
    invoke-static {}, Lcom/cmplay/base/util/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InnerPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALARM_SERVICE_START_TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/cmplay/internalpush/InnerPushService;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/InnerPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 50
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cmplay/internalpush/InnerPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cmplay/internalpush/InnerPushService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string v2, "command_key"

    const-string v3, "pull_cloud_alarm_config"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Lcom/cmplay/internalpush/InnerPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/cmplay/internalpush/InnerPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3e9

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 57
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v8

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    invoke-static {}, Lcom/cmplay/base/util/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InnerPushService"

    const-string v1, "start alarm failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v1, "extra_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    invoke-static {}, Lcom/cmplay/base/util/g;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "InnerPushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command extra type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    invoke-static {}, Lcom/cmplay/base/util/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "InnerPushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    invoke-static {}, Lcom/cmplay/base/util/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InnerPushService"

    const-string v1, "service created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    const-string v0, "InnerPushService created"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/cmplay/internalpush/InnerPushService;->a()V

    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 105
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-static {}, Lcom/cmplay/base/util/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InnerPushService"

    const-string v1, "command received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    if-eqz p1, :cond_2

    .line 73
    const-string v0, "command_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "pull_cloud_config"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    const-string v0, "zzb_cloud"

    const-string v1, "InnerPushService.onStartCommand  CloudHeplerProxy.startServicePullCloudConfig"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lcom/cmplay/internalpush/f;->a(Landroid/content/Context;)V

    .line 84
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/cmplay/internalpush/InnerPushService;->a(Landroid/content/Intent;)V

    .line 86
    :cond_2
    return v2

    .line 78
    :cond_3
    const-string v1, "pull_cloud_alarm_config"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "zzb_cloud"

    const-string v1, "InnerPushService 6\u5c0f\u65f6\u5c1d\u8bd5\u62c9\u53d6\u4e0b"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, ""

    invoke-static {v2, v0}, Lcom/ijinshan/cloudconfig/a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
