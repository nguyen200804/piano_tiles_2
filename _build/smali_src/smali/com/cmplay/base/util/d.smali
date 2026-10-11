.class public Lcom/cmplay/base/util/d;
.super Landroid/os/HandlerThread;
.source "BackgroundThread.java"


# static fields
.field private static a:Lcom/cmplay/base/util/d;

.field private static b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "cloud_thread"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/cmplay/base/util/d;->a:Lcom/cmplay/base/util/d;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/cmplay/base/util/d;

    invoke-direct {v0}, Lcom/cmplay/base/util/d;-><init>()V

    sput-object v0, Lcom/cmplay/base/util/d;->a:Lcom/cmplay/base/util/d;

    .line 20
    sget-object v0, Lcom/cmplay/base/util/d;->a:Lcom/cmplay/base/util/d;

    invoke-virtual {v0}, Lcom/cmplay/base/util/d;->start()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/cmplay/base/util/d;->a:Lcom/cmplay/base/util/d;

    invoke-virtual {v1}, Lcom/cmplay/base/util/d;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmplay/base/util/d;->b:Landroid/os/Handler;

    .line 23
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/cmplay/base/util/d;->a(Ljava/lang/Runnable;J)V

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 44
    const-class v1, Lcom/cmplay/base/util/d;

    monitor-enter v1

    .line 45
    :try_start_0
    invoke-static {}, Lcom/cmplay/base/util/d;->a()V

    .line 46
    sget-object v0, Lcom/cmplay/base/util/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
