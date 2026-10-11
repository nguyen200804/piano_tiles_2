.class public Lcom/cmplay/base/util/m;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field private static a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://telephony/carriers/preferapn"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/m;->a:Landroid/net/Uri;

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x4

    .line 57
    if-nez p0, :cond_0

    .line 89
    :goto_0
    return v3

    .line 62
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 63
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 65
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 66
    if-ne v4, v2, :cond_2

    .line 67
    invoke-static {p0}, Lcom/cmplay/base/util/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x3

    :goto_1
    move v3, v0

    .line 89
    goto :goto_0

    :cond_1
    move v0, v1

    .line 70
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 74
    invoke-static {v0}, Lcom/cmplay/base/util/m;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-static {v0}, Lcom/cmplay/base/util/m;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    const/4 v0, 0x2

    goto :goto_1

    .line 78
    :cond_4
    invoke-static {v0}, Lcom/cmplay/base/util/m;->c(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    const/4 v0, 0x5

    goto :goto_1

    :cond_5
    move v0, v1

    .line 83
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    move v0, v3

    .line 86
    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 158
    .line 159
    packed-switch p0, :pswitch_data_0

    .line 168
    :pswitch_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 165
    :pswitch_1
    const/4 v0, 0x1

    .line 166
    goto :goto_0

    .line 159
    nop

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
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 180
    .line 181
    packed-switch p0, :pswitch_data_0

    .line 194
    :pswitch_0
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    .line 191
    :pswitch_1
    const/4 v0, 0x1

    .line 192
    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x3
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
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    .line 103
    if-nez p0, :cond_0

    .line 119
    :goto_0
    return v2

    .line 106
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 107
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    .line 119
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "NetUtil"

    invoke-static {v1, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private static c(I)Z
    .locals 1

    .prologue
    .line 206
    .line 207
    packed-switch p0, :pswitch_data_0

    .line 212
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 209
    :pswitch_0
    const/4 v0, 0x1

    .line 210
    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 130
    if-eqz p0, :cond_1

    .line 131
    :try_start_0
    const-string v0, "connectivity"

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 133
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "NetUtil"

    const-string v2, "isNetworkAvailable"

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 141
    :cond_0
    const-string v0, "NetUtil"

    const-string v2, "isNetworkAvailable fail"

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 142
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v2, "NetUtil"

    invoke-static {v2, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 231
    if-nez p0, :cond_0

    move-object v0, v1

    .line 242
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const-string v0, "phone"

    .line 234
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 235
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 242
    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 301
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 302
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 303
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 304
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WIFI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 305
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    const/4 v0, 0x1

    .line 310
    :goto_1
    return v0

    .line 303
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 310
    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 321
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 322
    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 323
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIFI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 324
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 333
    :goto_1
    return v0

    .line 327
    :cond_0
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MOBILE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 328
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 329
    goto :goto_1

    .line 322
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 333
    goto :goto_1
.end method
