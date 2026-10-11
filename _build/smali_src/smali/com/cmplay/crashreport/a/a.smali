.class public Lcom/cmplay/crashreport/a/a;
.super Landroid/os/HandlerThread;


# static fields
.field private static a:Lcom/cmplay/crashreport/a/a;

.field private static b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "BackgroundThread"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 2

    const-class v1, Lcom/cmplay/crashreport/a/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/cmplay/crashreport/a/a;->b()V

    sget-object v0, Lcom/cmplay/crashreport/a/a;->b:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b()V
    .locals 2

    sget-object v0, Lcom/cmplay/crashreport/a/a;->a:Lcom/cmplay/crashreport/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmplay/crashreport/a/a;

    invoke-direct {v0}, Lcom/cmplay/crashreport/a/a;-><init>()V

    sput-object v0, Lcom/cmplay/crashreport/a/a;->a:Lcom/cmplay/crashreport/a/a;

    sget-object v0, Lcom/cmplay/crashreport/a/a;->a:Lcom/cmplay/crashreport/a/a;

    invoke-virtual {v0}, Lcom/cmplay/crashreport/a/a;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/cmplay/crashreport/a/a;->a:Lcom/cmplay/crashreport/a/a;

    invoke-virtual {v1}, Lcom/cmplay/crashreport/a/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmplay/crashreport/a/a;->b:Landroid/os/Handler;

    :cond_0
    return-void
.end method
