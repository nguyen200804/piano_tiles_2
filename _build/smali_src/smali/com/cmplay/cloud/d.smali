.class public Lcom/cmplay/cloud/d;
.super Ljava/lang/Object;
.source "WifiStateReceiver.java"


# static fields
.field private static a:Lcom/cmplay/cloud/d;


# instance fields
.field private b:Z

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/cloud/d;->b:Z

    .line 36
    new-instance v0, Lcom/cmplay/cloud/d$1;

    invoke-direct {v0, p0}, Lcom/cmplay/cloud/d$1;-><init>(Lcom/cmplay/cloud/d;)V

    iput-object v0, p0, Lcom/cmplay/cloud/d;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Lcom/cmplay/cloud/d;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/cmplay/cloud/d;->a:Lcom/cmplay/cloud/d;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/cmplay/cloud/d;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/cmplay/cloud/d;->a:Lcom/cmplay/cloud/d;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/cmplay/cloud/d;

    invoke-direct {v0}, Lcom/cmplay/cloud/d;-><init>()V

    sput-object v0, Lcom/cmplay/cloud/d;->a:Lcom/cmplay/cloud/d;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/cmplay/cloud/d;->a:Lcom/cmplay/cloud/d;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/cloud/d;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/cmplay/cloud/d;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/cmplay/cloud/d;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/cmplay/cloud/d;->b:Z

    return p1
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmplay/cloud/d;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    return-void
.end method
