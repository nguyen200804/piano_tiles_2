.class public final Lcom/cmcm/orion/utils/internal/a/a;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"


# static fields
.field private static e:Lcom/cmcm/orion/utils/internal/a/a;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/utils/internal/a/a;->e:Lcom/cmcm/orion/utils/internal/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/cmcm/orion/utils/internal/a/a;->a:Z

    .line 22
    iput-boolean v1, p0, Lcom/cmcm/orion/utils/internal/a/a;->b:Z

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/a/a;->c:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/cmcm/orion/utils/internal/a/a;->d:Z

    .line 238
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 105
    if-nez p0, :cond_1

    .line 106
    const/4 v0, 0x0

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/cmcm/orion/utils/internal/a/b;

    if-nez v1, :cond_0

    .line 112
    :cond_2
    new-instance v0, Lcom/cmcm/orion/utils/internal/a/b;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/utils/internal/a/b;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;)Lcom/cmcm/orion/utils/internal/a/c;
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/cmcm/orion/utils/internal/a/a;->c(Landroid/content/Context;)Lcom/cmcm/orion/utils/internal/a/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a/a;)V
    .locals 2

    .prologue
    .line 18
    .line 2173
    :try_start_0
    const-string v1, "AdvertisingIdHelper"

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2174
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/cmcm/orion/utils/internal/a/a;->a:Z

    .line 2175
    const-string v0, "AdvertisingIdHelper"

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2176
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a/a;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/cmcm/orion/utils/internal/a/a;->d:Z

    return p1
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 29
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c()Lcom/cmcm/orion/utils/internal/a/a;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/cmcm/orion/utils/internal/a/a;->e:Lcom/cmcm/orion/utils/internal/a/a;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/cmcm/orion/utils/internal/a/a;

    invoke-direct {v0}, Lcom/cmcm/orion/utils/internal/a/a;-><init>()V

    sput-object v0, Lcom/cmcm/orion/utils/internal/a/a;->e:Lcom/cmcm/orion/utils/internal/a/a;

    .line 233
    :cond_0
    sget-object v0, Lcom/cmcm/orion/utils/internal/a/a;->e:Lcom/cmcm/orion/utils/internal/a/a;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/cmcm/orion/utils/internal/a/c;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-static {p0}, Lcom/cmcm/orion/utils/internal/a/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 42
    :cond_1
    :try_start_0
    new-instance v1, Lcom/cmcm/orion/utils/internal/a/c;

    invoke-direct {v1}, Lcom/cmcm/orion/utils/internal/a/c;-><init>()V

    .line 43
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.STARS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 47
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/cmcm/orion/utils/internal/a/a;->a:Z

    if-nez v0, :cond_2

    .line 138
    const-string v1, "AdvertisingIdHelper"

    monitor-enter v1

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/cmcm/orion/utils/internal/a/a;->a:Z

    if-nez v0, :cond_1

    .line 140
    iget-boolean v0, p0, Lcom/cmcm/orion/utils/internal/a/a;->b:Z

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/utils/internal/a/a;->b:Z

    .line 1189
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/cmcm/orion/utils/internal/a/a$2;

    invoke-direct {v2, p0}, Lcom/cmcm/orion/utils/internal/a/a$2;-><init>(Lcom/cmcm/orion/utils/internal/a/a;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2163
    new-instance v0, Lcom/cmcm/orion/utils/internal/a/a$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/utils/internal/a/a$1;-><init>(Lcom/cmcm/orion/utils/internal/a/a;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->c(Ljava/lang/Runnable;)V

    .line 145
    :cond_0
    invoke-static {}, Lcom/cmcm/orion/utils/e;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :try_start_1
    const-string v0, "AdvertisingIdHelper"

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/a/a;->c:Ljava/lang/String;

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a/a;->c:Ljava/lang/String;

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/cmcm/orion/utils/internal/a/a;->d:Z

    return v0
.end method
