.class public Lcom/example/luckywheel/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/d/a$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;

.field private static c:I

.field private static d:I

.field private static e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/example/luckywheel/d/a;->c()I

    move-result v0

    sput v0, Lcom/example/luckywheel/d/a;->c:I

    sget v0, Lcom/example/luckywheel/d/a;->c:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/example/luckywheel/d/a;->d:I

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v0, Lcom/example/luckywheel/d/a;->c:I

    add-int/lit8 v2, v0, 0x1

    sget v3, Lcom/example/luckywheel/d/a;->d:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    sget v0, Lcom/example/luckywheel/d/a;->c:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/example/luckywheel/d/a$a;

    invoke-direct {v8}, Lcom/example/luckywheel/d/a$a;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/example/luckywheel/d/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/example/luckywheel/d/a;->b()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/example/luckywheel/d/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized b()Landroid/os/Handler;
    .locals 3

    const-class v1, Lcom/example/luckywheel/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/luckywheel/d/a;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CM_REJECTED_EXECUTE_THREAD"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/example/luckywheel/d/a;->a:Landroid/os/HandlerThread;

    sget-object v0, Lcom/example/luckywheel/d/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    sget-object v0, Lcom/example/luckywheel/d/a;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/example/luckywheel/d/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/example/luckywheel/d/a;->b:Landroid/os/Handler;

    :cond_1
    sget-object v0, Lcom/example/luckywheel/d/a;->b:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/example/luckywheel/d/g;

    invoke-direct {v1}, Lcom/example/luckywheel/d/g;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method
