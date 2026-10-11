.class public final Lcom/mopub/dg/e/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Timer;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/dg/e/a/a/a;->a:Ljava/util/Timer;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/dg/e/a/a/a;->b:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v3, p0, :cond_2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/dg/e/a/a/l;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/mopub/dg/e/a/a/a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/dg/e/a/a/a;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/mopub/dg/e/a/a/a;->a:Ljava/util/Timer;

    new-instance v1, Lcom/mopub/dg/e/a/a/c;

    invoke-direct {v1, p0}, Lcom/mopub/dg/e/a/a/c;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/dg/e/a/a/l;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/dg/e/a/a/l;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mopub/dg/e/a/a/a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mopub/dg/e/a/a/a;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/dg/e/a/a/a;->b:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/mopub/dg/e/a/a/a;->a:Ljava/util/Timer;

    new-instance v1, Lcom/mopub/dg/e/a/a/b;

    invoke-direct {v1, p0, p1}, Lcom/mopub/dg/e/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/mopub/dg/e/a/a/a;->b:Z

    return v0
.end method

.method private static b()V
    .locals 1

    sget-object v0, Lcom/mopub/dg/e/a/a/a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/dg/e/a/a/a;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/dg/e/a/a/a;->a:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 5

    const-class v1, Lcom/mopub/dg/e/a/a/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/dg/e/a/a/l;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mopub/dg/e/a/a/a;->b()V

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, v0}, Lcom/mopub/dg/e/a/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mopub/dg/e/a/a/l;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/dg/e/a/a/l;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mopub/dg/e/a/a/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "http://adbsc.krmobi.com/dzzb"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mopub/dg/e/a/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "type"

    const-string v4, "9"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "refer"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0, v5, v1}, Lcom/mopub/dg/e/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V

    sput-boolean v5, Lcom/mopub/dg/e/a/a/a;->b:Z

    invoke-static {p0}, Lcom/mopub/dg/adapi/DGAdApi;->getInstance(Landroid/content/Context;)Lcom/mopub/dg/adapi/DGAdApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    const-string v1, "App_Refer_Install"

    invoke-virtual {v0, v1, p1}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "App_Refer_Install"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/dg/e/a/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.INSTALL_REFERRER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, p0}, Lcom/mopub/dg/e/a/a/a;->a(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v2, "referrer"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "http://adbsc.krmobi.com/dzzb"

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mopub/dg/e/a/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "pkg"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "type"

    const-string v4, "10"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "refer"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/dg/e/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V

    invoke-static {p0}, Lcom/mopub/dg/adapi/DGAdApi;->getInstance(Landroid/content/Context;)Lcom/mopub/dg/adapi/DGAdApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    const-string v1, "App_Refer_Send"

    invoke-virtual {v0, v1, p1}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "App_Refer_Send"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
