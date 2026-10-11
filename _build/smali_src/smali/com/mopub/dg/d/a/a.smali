.class public Lcom/mopub/dg/d/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field private static e:Lcom/mopub/dg/d/a/a;


# instance fields
.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/mopub/dg/d/a/a;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    const-wide/16 v4, 0x3c

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lcom/mopub/dg/d/a/c;

    invoke-direct {v8}, Lcom/mopub/dg/d/a/c;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v0, Lcom/mopub/dg/d/a/a;->a:I

    mul-int/lit8 v2, v0, 0x2

    sget v0, Lcom/mopub/dg/d/a/a;->a:I

    mul-int/lit8 v3, v0, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/mopub/dg/d/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v0, Lcom/mopub/dg/d/a/a;->a:I

    mul-int/lit8 v2, v0, 0x2

    sget v0, Lcom/mopub/dg/d/a/a;->a:I

    mul-int/lit8 v3, v0, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/mopub/dg/d/a/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/mopub/dg/d/a/b;

    invoke-direct {v0}, Lcom/mopub/dg/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/mopub/dg/d/a/a;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a()Lcom/mopub/dg/d/a/a;
    .locals 2

    sget-object v0, Lcom/mopub/dg/d/a/a;->e:Lcom/mopub/dg/d/a/a;

    if-nez v0, :cond_0

    const-class v1, Lcom/mopub/dg/d/a/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/mopub/dg/d/a/a;

    invoke-direct {v0}, Lcom/mopub/dg/d/a/a;-><init>()V

    sput-object v0, Lcom/mopub/dg/d/a/a;->e:Lcom/mopub/dg/d/a/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/mopub/dg/d/a/a;->e:Lcom/mopub/dg/d/a/a;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/d/a/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
