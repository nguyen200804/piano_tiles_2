.class public Lcom/cmcm/dmc/sdk/g/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/dmc/sdk/g/a$a;
    }
.end annotation


# static fields
.field private static c:Lcom/cmcm/dmc/sdk/g/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/dmc/sdk/g/a;->c:Lcom/cmcm/dmc/sdk/g/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/a;->b:Z

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/cmcm/dmc/sdk/g/b;

    if-nez v1, :cond_0

    :cond_2
    new-instance v0, Lcom/cmcm/dmc/sdk/g/a$a;

    invoke-direct {v0, p0}, Lcom/cmcm/dmc/sdk/g/a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Lcom/cmcm/dmc/sdk/g/d;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/cmcm/dmc/sdk/g/d;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/g/d;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.STARS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/g/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/g/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/g/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcm/dmc/sdk/g/a;->b:Z

    return p1
.end method

.method public static b()Lcom/cmcm/dmc/sdk/g/a;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/g/a;->c:Lcom/cmcm/dmc/sdk/g/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmcm/dmc/sdk/g/a;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/g/a;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/g/a;->c:Lcom/cmcm/dmc/sdk/g/a;

    :cond_0
    sget-object v0, Lcom/cmcm/dmc/sdk/g/a;->c:Lcom/cmcm/dmc/sdk/g/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmcm/dmc/sdk/g/a$1;

    invoke-direct {v1, p0, p1}, Lcom/cmcm/dmc/sdk/g/a$1;-><init>(Lcom/cmcm/dmc/sdk/g/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
