.class public final Lcom/cmcm/orion/utils/c;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x400

    sput v0, Lcom/cmcm/orion/utils/c;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 29
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 30
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 31
    if-nez v2, :cond_0

    move v2, v1

    .line 32
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 33
    const/4 v0, 0x1

    .line 38
    :goto_1
    return v0

    .line 31
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 38
    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    if-nez p0, :cond_0

    .line 80
    :goto_0
    return v3

    .line 53
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 57
    if-ne v4, v2, :cond_2

    .line 58
    invoke-static {p0}, Lcom/cmcm/orion/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const/4 v1, 0x3

    :cond_1
    :goto_1
    move v3, v1

    .line 80
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 1099
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 65
    :goto_2
    if-eqz v0, :cond_3

    move v1, v2

    .line 66
    goto :goto_1

    :pswitch_1
    move v0, v2

    .line 1106
    goto :goto_2

    .line 1119
    :cond_3
    packed-switch v4, :pswitch_data_1

    :pswitch_2
    move v0, v3

    .line 67
    :goto_3
    if-eqz v0, :cond_4

    .line 68
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_3
    move v0, v2

    .line 1130
    goto :goto_3

    .line 2087
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0xb

    if-lt v0, v5, :cond_5

    .line 2088
    const/16 v0, 0xd

    if-ne v4, v0, :cond_5

    move v3, v2

    .line 69
    :cond_5
    if-eqz v3, :cond_6

    .line 70
    const/4 v0, 0x5

    :goto_4
    move v1, v0

    .line 73
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    move v1, v3

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_4

    .line 1099
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1119
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 153
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
