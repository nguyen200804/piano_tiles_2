.class public Lcom/cmcm/dmc/sdk/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmcm/dmc/sdk/a/n;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/cmcm/dmc/sdk/a/n;

.field private e:Landroid/app/usage/UsageStatsManager;

.field private f:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/a/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/cmcm/dmc/sdk/a/o;->a:Z

    iput-boolean v2, p0, Lcom/cmcm/dmc/sdk/a/o;->b:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/cmcm/dmc/sdk/a/o;->a:Z

    iput-boolean v1, p0, Lcom/cmcm/dmc/sdk/a/o;->b:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/a/o;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o;->f:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/a/o;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/o;->f:Landroid/app/ActivityManager;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/a/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/o;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/a/o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcm/dmc/sdk/a/o;)Lcom/cmcm/dmc/sdk/a/n;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o;->d:Lcom/cmcm/dmc/sdk/a/n;

    return-object v0
.end method

.method private c()Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/a/q;->k(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "appops"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const-string v3, "android:get_usage_stats"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "TopActivityMonitor"

    const-string v1, "android 5.0+ topActivity permission is not allowed: "

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "TopActivityMonitor"

    const-string v1, "android 5.0+ topActivity has no  permission: "

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TopActivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topActivity not start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private d()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o;->e:Landroid/app/usage/UsageStatsManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "usagestats"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/o;->e:Landroid/app/usage/UsageStatsManager;

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o;->e:Landroid/app/usage/UsageStatsManager;

    if-nez v0, :cond_1

    const-string v0, "TopActivityMonitor"

    const-string v2, "fail to get  UsageStatsManager"

    invoke-static {v0, v2}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/a/o;->a()V

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    sub-long v4, v2, v4

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o;->e:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "TopActivityMonitor"

    const-string v2, "fail to get  UsageEvents"

    invoke-static {v0, v2}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    move-object v0, v1

    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/cmcm/dmc/sdk/a/o;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/a/o;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/c;->a(Lcom/cmcm/dmc/sdk/a/n;)V

    return-void
.end method

.method public a(Lcom/cmcm/dmc/sdk/a/n;)V
    .locals 8

    const-wide/16 v2, 0x7d0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/o;->d:Lcom/cmcm/dmc/sdk/a/n;

    invoke-static {p0}, Lcom/cmcm/dmc/sdk/a/c;->a(Lcom/cmcm/dmc/sdk/a/n;)V

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/a/o;->b:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/m;->a()Lcom/cmcm/dmc/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/cmcm/dmc/sdk/a/o$1;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/a/o$1;-><init>(Lcom/cmcm/dmc/sdk/a/o;)V

    move-wide v4, v2

    move-wide v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/cmcm/dmc/sdk/a/m;->a(Ljava/lang/Runnable;JJJ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o;->d:Lcom/cmcm/dmc/sdk/a/n;

    invoke-interface {v0, p1, p2}, Lcom/cmcm/dmc/sdk/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/a/o;->a:Z

    return v0
.end method
