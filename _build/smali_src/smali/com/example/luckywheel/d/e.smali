.class public Lcom/example/luckywheel/d/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v4, v3

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_0
.end method
