.class public final Lcom/mnt/impl/f/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/f/o$a;,
        Lcom/mnt/impl/f/o$b;,
        Lcom/mnt/impl/f/o$c;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/mnt/impl/f/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/mnt/impl/f/o$c;

.field private static c:Landroid/os/Handler;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/mnt/impl/e;->gs:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/mnt/impl/f/o;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mnt/impl/f/o;->c:Landroid/os/Handler;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mnt/impl/f/o;->d:Z

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/mnt/impl/f/o;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 39
    const-class v1, Lcom/mnt/impl/f/o;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/mnt/impl/f/o;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 43
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    sget-object v2, Lcom/mnt/impl/f/o;->b:Lcom/mnt/impl/f/o$c;

    if-nez v2, :cond_2

    .line 45
    new-instance v2, Lcom/mnt/impl/f/o$c;

    sget-object v3, Lcom/mnt/impl/f/o;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, v3, v0}, Lcom/mnt/impl/f/o$c;-><init>(Ljava/util/concurrent/BlockingQueue;Landroid/content/Context;)V

    .line 46
    sput-object v2, Lcom/mnt/impl/f/o;->b:Lcom/mnt/impl/f/o$c;

    .line 1081
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mnt/impl/f/o;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/mnt/impl/f/o$a;)V
    .locals 1

    .prologue
    .line 1303
    sget-boolean v0, Lcom/mnt/impl/f/o;->d:Z

    if-nez v0, :cond_0

    .line 1304
    invoke-static {p0}, Lcom/mnt/impl/f/o;->a(Landroid/content/Context;)V

    .line 54
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mnt/impl/f/o;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
