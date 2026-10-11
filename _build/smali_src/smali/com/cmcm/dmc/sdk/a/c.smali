.class public Lcom/cmcm/dmc/sdk/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/dmc/sdk/a/c$b;,
        Lcom/cmcm/dmc/sdk/a/c$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static volatile b:I

.field private static c:Landroid/content/Context;

.field private static d:Landroid/os/Handler;

.field private static e:Ljava/io/File;

.field private static f:Lcom/cmcm/dmc/sdk/a/b;

.field private static volatile g:Lcom/cmcm/dmc/sdk/e/m;

.field private static h:Lcom/cmcm/dmc/sdk/a/n;

.field private static i:Lcom/cmcm/dmc/sdk/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cmcm/dmc/sdk/a/g",
            "<",
            "Lcom/cmcm/dmc/sdk/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Landroid/content/BroadcastReceiver;

.field private static k:Lcom/cmcm/dmc/sdk/a/c$b;

.field private static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/cmcm/dmc/sdk/a/c;->a:I

    sput v0, Lcom/cmcm/dmc/sdk/a/c;->b:I

    return-void
.end method

.method public static declared-synchronized a()I
    .locals 2

    const-class v0, Lcom/cmcm/dmc/sdk/a/c;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/cmcm/dmc/sdk/a/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->f:Lcom/cmcm/dmc/sdk/a/b;

    sget v1, Lcom/cmcm/dmc/sdk/a/c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/cmcm/dmc/sdk/a/b;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dmc_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/m;)Lcom/cmcm/dmc/sdk/e/m;
    .locals 0

    sput-object p0, Lcom/cmcm/dmc/sdk/a/c;->g:Lcom/cmcm/dmc/sdk/e/m;

    return-object p0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/cmcm/dmc/sdk/a/c;->a:I

    return-void
.end method

.method public static a(Landroid/content/BroadcastReceiver;)V
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->c:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/cmcm/dmc/sdk/a/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ContextUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;Lcom/cmcm/dmc/sdk/a/b;)V
    .locals 0

    sput-object p0, Lcom/cmcm/dmc/sdk/a/c;->c:Landroid/content/Context;

    sput-object p1, Lcom/cmcm/dmc/sdk/a/c;->d:Landroid/os/Handler;

    sput-object p2, Lcom/cmcm/dmc/sdk/a/c;->e:Ljava/io/File;

    sput-object p3, Lcom/cmcm/dmc/sdk/a/c;->f:Lcom/cmcm/dmc/sdk/a/b;

    return-void
.end method

.method public static a(Lcom/cmcm/dmc/sdk/a/n;)V
    .locals 0

    sput-object p0, Lcom/cmcm/dmc/sdk/a/c;->h:Lcom/cmcm/dmc/sdk/a/n;

    return-void
.end method

.method public static a(Lcom/cmcm/dmc/sdk/a/p;)V
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->i:Lcom/cmcm/dmc/sdk/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmcm/dmc/sdk/a/g;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/g;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/a/c;->i:Lcom/cmcm/dmc/sdk/a/g;

    :cond_0
    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->i:Lcom/cmcm/dmc/sdk/a/g;

    invoke-virtual {v0, p0}, Lcom/cmcm/dmc/sdk/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/cmcm/dmc/sdk/a/c;->d:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    sput-object p0, Lcom/cmcm/dmc/sdk/a/c;->j:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static b()V
    .locals 4

    const-string v0, "ContextUtils"

    const-string v1, "startup"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cmcm/dmc/sdk/a/c$1;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/c$1;-><init>()V

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->k:Lcom/cmcm/dmc/sdk/a/c$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmcm/dmc/sdk/a/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cmcm/dmc/sdk/a/c$b;-><init>(Lcom/cmcm/dmc/sdk/a/c$1;)V

    sput-object v0, Lcom/cmcm/dmc/sdk/a/c;->k:Lcom/cmcm/dmc/sdk/a/c$b;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->d:Landroid/os/Handler;

    sget-object v1, Lcom/cmcm/dmc/sdk/a/c;->k:Lcom/cmcm/dmc/sdk/a/c$b;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic b(I)V
    .locals 0

    invoke-static {p0}, Lcom/cmcm/dmc/sdk/a/c;->c(I)V

    return-void
.end method

.method public static c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static declared-synchronized c(I)V
    .locals 2

    const-class v0, Lcom/cmcm/dmc/sdk/a/c;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/cmcm/dmc/sdk/a/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static e()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->e:Ljava/io/File;

    return-object v0
.end method

.method public static f()V
    .locals 2

    const-string v0, "ContextUtils"

    const-string v1, "\u9b54\u65b9\u6570\u636e\u66f4\u65b0......."

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->k:Lcom/cmcm/dmc/sdk/a/c$b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->d:Landroid/os/Handler;

    sget-object v1, Lcom/cmcm/dmc/sdk/a/c;->k:Lcom/cmcm/dmc/sdk/a/c$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/dmc/sdk/a/c;->k:Lcom/cmcm/dmc/sdk/a/c$b;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->m()V

    :cond_1
    new-instance v0, Lcom/cmcm/dmc/sdk/a/c$3;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/c$3;-><init>()V

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic g()V
    .locals 0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->l()V

    return-void
.end method

.method static synthetic h()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->j:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic i()Lcom/cmcm/dmc/sdk/a/b;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->f:Lcom/cmcm/dmc/sdk/a/b;

    return-object v0
.end method

.method static synthetic j()Lcom/cmcm/dmc/sdk/a/g;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->i:Lcom/cmcm/dmc/sdk/a/g;

    return-object v0
.end method

.method static synthetic k()V
    .locals 0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->m()V

    return-void
.end method

.method private static l()V
    .locals 2

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmcm/dmc/sdk/a/c$2;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/c$2;-><init>()V

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static m()V
    .locals 2

    sget-boolean v0, Lcom/cmcm/dmc/sdk/a/c;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->g:Lcom/cmcm/dmc/sdk/e/m;

    if-eqz v0, :cond_0

    const-string v0, "ContextUtils"

    const-string v1, "WORKING"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cmcm/dmc/sdk/a/c;->g:Lcom/cmcm/dmc/sdk/e/m;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/e/m;->b()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmcm/dmc/sdk/a/c;->l:Z

    goto :goto_0
.end method
