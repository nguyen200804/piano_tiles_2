.class public Lcom/cmplay/crashreport/c;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/cmplay/crashreport/c;

.field private static g:J

.field private static h:J


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Handler;

.field private f:Lcom/cmplay/crashreport/f;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/crashreport/c;->a:Lcom/cmplay/crashreport/c;

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/cmplay/crashreport/c;->g:J

    sget-wide v0, Lcom/cmplay/crashreport/c;->g:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    sput-wide v0, Lcom/cmplay/crashreport/c;->h:J

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/cmplay/crashreport/c;->b:Ljava/lang/Thread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "anr_checker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/crashreport/c;->c:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/cmplay/crashreport/c;->d:Landroid/os/Handler;

    iput-object v2, p0, Lcom/cmplay/crashreport/c;->e:Landroid/os/Handler;

    iput-object v2, p0, Lcom/cmplay/crashreport/c;->f:Lcom/cmplay/crashreport/f;

    new-instance v0, Lcom/cmplay/crashreport/d;

    invoke-direct {v0, p0}, Lcom/cmplay/crashreport/d;-><init>(Lcom/cmplay/crashreport/c;)V

    iput-object v0, p0, Lcom/cmplay/crashreport/c;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/cmplay/crashreport/e;

    invoke-direct {v0, p0}, Lcom/cmplay/crashreport/e;-><init>(Lcom/cmplay/crashreport/c;)V

    iput-object v0, p0, Lcom/cmplay/crashreport/c;->j:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/cmplay/crashreport/c;[Ljava/lang/StackTraceElement;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/cmplay/crashreport/c;->a([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a([Ljava/lang/StackTraceElement;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method static synthetic a(Lcom/cmplay/crashreport/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/cmplay/crashreport/c;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/cmplay/crashreport/c;
    .locals 2

    const-class v1, Lcom/cmplay/crashreport/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/crashreport/c;->a:Lcom/cmplay/crashreport/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmplay/crashreport/c;

    invoke-direct {v0}, Lcom/cmplay/crashreport/c;-><init>()V

    sput-object v0, Lcom/cmplay/crashreport/c;->a:Lcom/cmplay/crashreport/c;

    :cond_0
    sget-object v0, Lcom/cmplay/crashreport/c;->a:Lcom/cmplay/crashreport/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/crashreport/c;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cmplay/crashreport/c;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)V
    .locals 4

    const-string v0, "\t"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    const-string v3, "\t\t"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b()J
    .locals 2

    sget-wide v0, Lcom/cmplay/crashreport/c;->g:J

    return-wide v0
.end method

.method static synthetic b(Lcom/cmplay/crashreport/c;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/cmplay/crashreport/c;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c()J
    .locals 2

    sget-wide v0, Lcom/cmplay/crashreport/c;->h:J

    return-wide v0
.end method

.method static synthetic c(Lcom/cmplay/crashreport/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/cmplay/crashreport/c;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/cmplay/crashreport/c;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/cmplay/crashreport/c;->b:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic e(Lcom/cmplay/crashreport/c;)Lcom/cmplay/crashreport/f;
    .locals 1

    iget-object v0, p0, Lcom/cmplay/crashreport/c;->f:Lcom/cmplay/crashreport/f;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/cmplay/crashreport/f;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cmplay/crashreport/c;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/crashreport/c;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/cmplay/crashreport/c;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Anr checker Start Must run on Main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cmplay/crashreport/c;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/crashreport/c;->e:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/crashreport/c;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/crashreport/c;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/cmplay/crashreport/c;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/crashreport/c;->i:Ljava/lang/Runnable;

    sget-wide v2, Lcom/cmplay/crashreport/c;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/cmplay/crashreport/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/crashreport/c;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cmplay/crashreport/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/crashreport/c;->j:Ljava/lang/Runnable;

    sget-wide v2, Lcom/cmplay/crashreport/c;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p1, p0, Lcom/cmplay/crashreport/c;->f:Lcom/cmplay/crashreport/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method
