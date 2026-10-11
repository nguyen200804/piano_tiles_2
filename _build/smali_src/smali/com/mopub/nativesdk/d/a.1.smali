.class public Lcom/mopub/nativesdk/d/a;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mopub/nativesdk/d/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 51
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_0
    new-instance v1, Lcom/mopub/nativesdk/d/b;

    invoke-direct {v1, v3}, Lcom/mopub/nativesdk/d/b;-><init>(B)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.STARS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :try_start_1
    new-instance v2, Lcom/mopub/nativesdk/d/d;

    invoke-virtual {v1}, Lcom/mopub/nativesdk/d/b;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mopub/nativesdk/d/d;-><init>(Landroid/os/IBinder;)V

    .line 62
    new-instance v0, Lcom/mopub/nativesdk/d/c;

    invoke-virtual {v2}, Lcom/mopub/nativesdk/d/d;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/mopub/nativesdk/d/d;->a(Z)Z

    move-result v2

    invoke-direct {v0, v3, v2}, Lcom/mopub/nativesdk/d/c;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 71
    :goto_1
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
