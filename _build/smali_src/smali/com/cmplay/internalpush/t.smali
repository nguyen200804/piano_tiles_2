.class public Lcom/cmplay/internalpush/t;
.super Ljava/lang/Object;
.source "WifiStateReceiver.java"


# static fields
.field private static c:Lcom/cmplay/internalpush/t;


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/internalpush/t;->a:Z

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/t;->b:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/cmplay/internalpush/t$1;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/t$1;-><init>(Lcom/cmplay/internalpush/t;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/t;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Lcom/cmplay/internalpush/t;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/cmplay/internalpush/t;->c:Lcom/cmplay/internalpush/t;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/cmplay/internalpush/t;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/cmplay/internalpush/t;->c:Lcom/cmplay/internalpush/t;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/cmplay/internalpush/t;

    invoke-direct {v0}, Lcom/cmplay/internalpush/t;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/t;->c:Lcom/cmplay/internalpush/t;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/cmplay/internalpush/t;->c:Lcom/cmplay/internalpush/t;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/internalpush/t;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/cmplay/internalpush/t;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/cmplay/internalpush/t;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/cmplay/internalpush/t;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/cmplay/internalpush/t;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cmplay/internalpush/t;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/cmplay/internalpush/t;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    return-void
.end method
