.class public Lcom/cmcm/orion/utils/e;
.super Ljava/lang/Object;
.source "ThreadHelper.java"


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/Object;

.field private static c:Z

.field private static d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lcom/cmcm/orion/utils/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/cmcm/orion/utils/e;->a:Z

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmcm/orion/utils/e;->b:Ljava/lang/Object;

    .line 22
    sput-boolean v1, Lcom/cmcm/orion/utils/e;->c:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/utils/e;->d:Landroid/os/Handler;

    return-void

    :cond_0
    move v0, v1

    .line 18
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/cmcm/orion/utils/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/cmcm/orion/utils/e;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/cmcm/orion/utils/e;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 28
    sget-object v1, Lcom/cmcm/orion/utils/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/cmcm/orion/utils/e;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 30
    sget-boolean v0, Lcom/cmcm/orion/utils/e;->c:Z

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Did not yet override the UI thread"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 33
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmcm/orion/utils/e;->d:Landroid/os/Handler;

    .line 35
    :cond_1
    sget-object v0, Lcom/cmcm/orion/utils/e;->d:Landroid/os/Handler;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/cmcm/orion/utils/e;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 157
    invoke-static {}, Lcom/cmcm/orion/utils/e;->b()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    return-void
.end method
