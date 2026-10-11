.class public Lcom/cmcm/orion/utils/a;
.super Ljava/lang/Object;
.source "BackgroundThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/utils/a$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/utils/a;->a:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 23
    :try_start_0
    sget-object v0, Lcom/cmcm/orion/utils/a;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmcm/orion/utils/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IOThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    sput-object v0, Lcom/cmcm/orion/utils/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/cmcm/orion/utils/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmcm/orion/utils/a;->a:Landroid/os/Handler;

    .line 28
    :cond_1
    sget-object v0, Lcom/cmcm/orion/utils/a;->a:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 29
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/cmcm/orion/utils/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmcm/orion/utils/a;->a:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_2
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const/4 v1, 0x0

    sput-object v1, Lcom/cmcm/orion/utils/a;->a:Landroid/os/Handler;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ensureIOThread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/cmcm/orion/utils/a$1;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/orion/utils/a$1;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    const-class v1, Lcom/cmcm/orion/utils/a;

    monitor-enter v1

    .line 66
    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/utils/a;->a()V

    .line 67
    sget-object v0, Lcom/cmcm/orion/utils/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/cmcm/orion/utils/a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/cmcm/orion/utils/a$a;

    invoke-direct {v2, p0}, Lcom/cmcm/orion/utils/a$a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 78
    const-class v1, Lcom/cmcm/orion/utils/a;

    monitor-enter v1

    .line 79
    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/utils/a;->a()V

    .line 80
    sget-object v0, Lcom/cmcm/orion/utils/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/cmcm/orion/utils/a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/cmcm/orion/utils/a$a;

    invoke-direct {v2, p0}, Lcom/cmcm/orion/utils/a$a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 105
    const-class v1, Lcom/cmcm/orion/utils/a;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/utils/a;->a()V

    .line 108
    new-instance v0, Lcom/cmcm/orion/utils/a$a;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/utils/a$a;-><init>(Ljava/lang/Runnable;)V

    .line 112
    sget-object v2, Lcom/cmcm/orion/utils/a;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
