.class public final Lcom/mnt/impl/j/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/j/f$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static e:Lcom/mnt/impl/j/f;


# instance fields
.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mnt/impl/j/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mnt/impl/e;->jo:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/mnt/impl/e;->jp:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/j/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/j/f;->c:Landroid/content/Context;

    .line 34
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/mnt/impl/j/f;->d:Landroid/app/AlarmManager;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/j/f;->b:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1069
    new-instance v0, Lcom/mnt/impl/j/g;

    invoke-direct {v0, p0}, Lcom/mnt/impl/j/g;-><init>(Lcom/mnt/impl/j/f;)V

    .line 1082
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1083
    sget-object v2, Lcom/mnt/impl/j/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1084
    iget-object v2, p0, Lcom/mnt/impl/j/f;->c:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mnt/impl/j/f;
    .locals 10

    .prologue
    const-wide v8, 0x4184997000000000L    # 4.32E7

    .line 2041
    const-class v7, Lcom/mnt/impl/j/f;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/mnt/impl/j/f;->e:Lcom/mnt/impl/j/f;

    if-nez v0, :cond_0

    .line 2042
    new-instance v0, Lcom/mnt/impl/j/f;

    invoke-direct {v0, p0}, Lcom/mnt/impl/j/f;-><init>(Landroid/content/Context;)V

    .line 2043
    sput-object v0, Lcom/mnt/impl/j/f;->e:Lcom/mnt/impl/j/f;

    .line 2053
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2054
    sget-object v2, Lcom/mnt/impl/j/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2057
    :try_start_1
    iget-object v2, v0, Lcom/mnt/impl/j/f;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2058
    iget-object v0, v0, Lcom/mnt/impl/j/f;->d:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2065
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v8

    double-to-long v4, v4

    .line 2058
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/mnt/impl/j/f;->e:Lcom/mnt/impl/j/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return-object v0

    .line 2041
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mnt/impl/j/f;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mnt/impl/j/f;->b:Ljava/util/Set;

    return-object v0
.end method
