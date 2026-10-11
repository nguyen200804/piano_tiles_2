.class public Lcom/cmplay/gaid/a;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/gaid/a$a;
    }
.end annotation


# static fields
.field private static c:Lcom/cmplay/gaid/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/gaid/a;->c:Lcom/cmplay/gaid/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/cmplay/gaid/a;->a:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/gaid/a;->b:Z

    .line 168
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 89
    if-nez p0, :cond_1

    .line 90
    const/4 v0, 0x0

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/cmplay/gaid/AdvertisingIdInterface;

    if-nez v1, :cond_0

    .line 96
    :cond_2
    new-instance v0, Lcom/cmplay/gaid/a$a;

    invoke-direct {v0, p0}, Lcom/cmplay/gaid/a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static a()Lcom/cmplay/gaid/a;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/cmplay/gaid/a;->c:Lcom/cmplay/gaid/a;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/cmplay/gaid/a;

    invoke-direct {v0}, Lcom/cmplay/gaid/a;-><init>()V

    sput-object v0, Lcom/cmplay/gaid/a;->c:Lcom/cmplay/gaid/a;

    .line 163
    :cond_0
    sget-object v0, Lcom/cmplay/gaid/a;->c:Lcom/cmplay/gaid/a;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/cmplay/gaid/b;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 20
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    new-instance v0, Lcom/cmplay/gaid/b;

    invoke-direct {v0}, Lcom/cmplay/gaid/b;-><init>()V

    .line 26
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.STARS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 22
    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    :cond_0
    move-object v0, v1

    .line 36
    goto :goto_0
.end method

.method static synthetic a(Lcom/cmplay/gaid/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cmplay/gaid/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/gaid/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cmplay/gaid/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/cmplay/gaid/a;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/cmplay/gaid/a;->b:Z

    return p1
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cmplay/gaid/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmplay/gaid/a$1;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/gaid/a$1;-><init>(Lcom/cmplay/gaid/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
