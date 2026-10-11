.class public final Lcom/mnt/impl/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static e:Lcom/mnt/impl/b/c;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/app/AlarmManager;

.field public d:Landroid/content/BroadcastReceiver;

.field public f:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/mnt/impl/e;->mi:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/b/c;->b:Landroid/content/Context;

    .line 39
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/mnt/impl/b/c;->c:Landroid/app/AlarmManager;

    .line 1047
    new-instance v0, Lcom/mnt/impl/b/d;

    invoke-direct {v0}, Lcom/mnt/impl/b/d;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/b/c;->d:Landroid/content/BroadcastReceiver;

    .line 1058
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1059
    sget-object v1, Lcom/mnt/impl/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/mnt/impl/b/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mnt/impl/b/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mnt/impl/b/c;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/mnt/impl/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mnt/impl/b/c;->e:Lcom/mnt/impl/b/c;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/mnt/impl/b/c;

    invoke-direct {v0, p0}, Lcom/mnt/impl/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mnt/impl/b/c;->e:Lcom/mnt/impl/b/c;

    .line 73
    :cond_0
    sget-object v0, Lcom/mnt/impl/b/c;->e:Lcom/mnt/impl/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
