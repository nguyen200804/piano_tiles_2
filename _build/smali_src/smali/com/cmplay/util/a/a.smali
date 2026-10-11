.class public Lcom/cmplay/util/a/a;
.super Landroid/os/HandlerThread;
.source "BackgroundThread.java"


# static fields
.field private static a:Lcom/cmplay/util/a/a;

.field private static b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "BackgroundThread"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/cmplay/util/a/a;->a:Lcom/cmplay/util/a/a;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/cmplay/util/a/a;

    invoke-direct {v0}, Lcom/cmplay/util/a/a;-><init>()V

    sput-object v0, Lcom/cmplay/util/a/a;->a:Lcom/cmplay/util/a/a;

    .line 17
    sget-object v0, Lcom/cmplay/util/a/a;->a:Lcom/cmplay/util/a/a;

    invoke-virtual {v0}, Lcom/cmplay/util/a/a;->start()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/cmplay/util/a/a;->a:Lcom/cmplay/util/a/a;

    invoke-virtual {v1}, Lcom/cmplay/util/a/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmplay/util/a/a;->b:Landroid/os/Handler;

    .line 20
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;J)V

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 41
    const-class v1, Lcom/cmplay/util/a/a;

    monitor-enter v1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/cmplay/util/a/a;->a()V

    .line 43
    sget-object v0, Lcom/cmplay/util/a/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
