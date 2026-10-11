.class public Lcom/cmplay/cloud/b;
.super Ljava/lang/Object;
.source "CloudConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/cloud/b$a;
    }
.end annotation


# static fields
.field private static e:Lcom/cmplay/cloud/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/AlarmManager;

.field private c:Lcom/cmplay/cloud/b$a;

.field private d:Landroid/app/PendingIntent;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/cmplay/cloud/b;->a:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/cmplay/cloud/b;->e()V

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cmplay/cloud/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmplay/cloud/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/cloud/b;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/cmplay/cloud/b;->e:Lcom/cmplay/cloud/b;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/cmplay/cloud/b;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/cmplay/cloud/b;->e:Lcom/cmplay/cloud/b;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/cmplay/cloud/b;

    invoke-direct {v0, p0}, Lcom/cmplay/cloud/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/cloud/b;->e:Lcom/cmplay/cloud/b;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/cmplay/cloud/b;->e:Lcom/cmplay/cloud/b;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/cloud/b;Z)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/cmplay/cloud/b;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/cmplay/cloud/b;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/cmplay/cloud/b;->d()V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    .line 156
    if-nez p1, :cond_1

    .line 157
    const-string v0, "last_pull_cloud_cfg_time_at_service"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 161
    const-string v0, "cfg"

    const-string v1, "service update cloud config interval is too short"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v0, "last_pull_cloud_cfg_time_at_service"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;J)V

    .line 167
    :cond_1
    new-instance v0, Lcom/cmplay/cloud/b$2;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/cloud/b$2;-><init>(Lcom/cmplay/cloud/b;Z)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private d()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x1499700

    const/4 v4, 0x0

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    const-string v1, "tiles2_cloudconfig_delay_task_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/cmplay/cloud/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/cmplay/cloud/b;->a:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/cloud/b;->d:Landroid/app/PendingIntent;

    .line 95
    iget-object v0, p0, Lcom/cmplay/cloud/b;->b:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/cmplay/cloud/b;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/cmplay/cloud/b;->b:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-object v1, p0, Lcom/cmplay/cloud/b;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/cmplay/cloud/b;->b:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-object v1, p0, Lcom/cmplay/cloud/b;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/cmplay/cloud/b;->b:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-object v1, p0, Lcom/cmplay/cloud/b;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmplay/cloud/b;->c:Lcom/cmplay/cloud/b$a;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/cmplay/cloud/b$a;

    invoke-direct {v0, p0}, Lcom/cmplay/cloud/b$a;-><init>(Lcom/cmplay/cloud/b;)V

    iput-object v0, p0, Lcom/cmplay/cloud/b;->c:Lcom/cmplay/cloud/b$a;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    const-string v1, "tiles2_cloudconfig_delay_task_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/cmplay/cloud/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmplay/cloud/b;->c:Lcom/cmplay/cloud/b$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/cmplay/cloud/b;->b:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/cmplay/cloud/b;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/cmplay/cloud/b;->b:Landroid/app/AlarmManager;

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/cmplay/cloud/b$1;

    invoke-direct {v0, p0}, Lcom/cmplay/cloud/b$1;-><init>(Lcom/cmplay/cloud/b;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/cloud/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmplay/cloud/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/cmplay/cloud/b;->b(Z)V

    .line 59
    invoke-direct {p0}, Lcom/cmplay/cloud/b;->d()V

    .line 61
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cmplay/cloud/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const-string v1, "key_cloud_update_app_version"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 181
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v1, "local_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/cmplay/cloud/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/util/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 183
    const-string v2, "key_cloud_update_app_version"

    invoke-static {v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    const-string v3, "cfg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before cloud version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    const-string v0, "cfg"

    const-string v1, "pullCloudConfig without version"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(Z)V

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_1
    const-string v1, "cfg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullCloudConfig with version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
