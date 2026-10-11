.class public final Lcom/mopub/nativesdk/d/l;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "unknown"

    invoke-static {p0}, Lcom/mopub/nativesdk/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    if-nez v0, :cond_0

    .line 65
    const-string v0, "unknown"

    .line 1095
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    const-string v0, "wifi"

    goto :goto_1

    .line 70
    :cond_1
    const-string v0, "phone"

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 72
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1077
    packed-switch v0, :pswitch_data_0

    .line 1097
    const-string v0, "unknown"

    goto :goto_1

    .line 1083
    :pswitch_0
    const-string v0, "2G"

    goto :goto_1

    .line 1093
    :pswitch_1
    const-string v0, "3G"

    goto :goto_1

    .line 1095
    :pswitch_2
    const-string v0, "4G"

    goto :goto_1

    .line 1077
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
