.class public final Lcom/duapps/ad/base/f;
.super Ljava/lang/Object;
.source "GoogleAdvertisingIdHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get advertising info on main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/base/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-static {p0}, Lcom/duapps/ad/base/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_1
    const-string v1, "GMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdvertisingId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 76
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v2, "getAdvertisingIdInfo"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 82
    if-nez v1, :cond_0

    .line 83
    const-string v1, "GMS"

    const-string v2, "getAdvertisingIdInfo =  null"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object v0

    .line 87
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    if-nez v1, :cond_1

    .line 93
    const-string v1, "GMS"

    const-string v2, "advertisingInfo =  null"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getId"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isLimitAdTrackingEnabled"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 101
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 102
    :cond_2
    const-string v1, "GMS"

    const-string v2, "getId =  null or isLimitAdTrackingEnabled = null"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_3
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/duapps/ad/base/e;->a(Landroid/content/Context;)Lcom/duapps/ad/base/e$a;

    move-result-object v1

    .line 112
    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-virtual {v1}, Lcom/duapps/ad/base/e$a;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0

    .line 115
    :catch_1
    move-exception v1

    goto :goto_0

    .line 114
    :catch_2
    move-exception v1

    goto :goto_0
.end method
