.class public Lcom/cmplay/util/t;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field private static a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cmplay/util/t;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x4

    .line 184
    if-nez p0, :cond_0

    .line 216
    :goto_0
    return v3

    .line 189
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 190
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 192
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 193
    if-ne v4, v2, :cond_2

    .line 194
    invoke-static {p0}, Lcom/cmplay/util/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x3

    :goto_1
    move v3, v0

    .line 216
    goto :goto_0

    :cond_1
    move v0, v1

    .line 197
    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 201
    invoke-static {v0}, Lcom/cmplay/util/t;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 202
    goto :goto_1

    .line 203
    :cond_3
    invoke-static {v0}, Lcom/cmplay/util/t;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 204
    const/4 v0, 0x2

    goto :goto_1

    .line 205
    :cond_4
    invoke-static {v0}, Lcom/cmplay/util/t;->c(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    const/4 v0, 0x5

    goto :goto_1

    :cond_5
    move v0, v1

    .line 210
    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    move v0, v3

    .line 213
    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    :goto_0
    return-object v0

    .line 407
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v1

    .line 411
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 285
    .line 286
    packed-switch p0, :pswitch_data_0

    .line 295
    :pswitch_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    .line 292
    :pswitch_1
    const/4 v0, 0x1

    .line 293
    goto :goto_0

    .line 286
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

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/util/t;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v1

    .line 436
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 437
    :catch_1
    move-exception v1

    .line 438
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 307
    .line 308
    packed-switch p0, :pswitch_data_0

    .line 321
    :pswitch_0
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    .line 318
    :pswitch_1
    const/4 v0, 0x1

    .line 319
    goto :goto_0

    .line 308
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

    .line 228
    .line 230
    if-nez p0, :cond_0

    .line 246
    :goto_0
    return v2

    .line 233
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 234
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    .line 246
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v1, "NetUtil"

    invoke-static {v1, v0}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private static c(I)Z
    .locals 1

    .prologue
    .line 333
    .line 334
    packed-switch p0, :pswitch_data_0

    .line 339
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0

    .line 336
    :pswitch_0
    const/4 v0, 0x1

    .line 337
    goto :goto_0

    .line 334
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

    .line 257
    if-eqz p0, :cond_1

    .line 258
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 260
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "NetUtil"

    const-string v2, "isNetworkAvailable"

    invoke-static {v0, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    .line 268
    :cond_0
    const-string v0, "NetUtil"

    const-string v2, "isNetworkAvailable fail"

    invoke-static {v0, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 269
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string v2, "NetUtil"

    invoke-static {v2, v0}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    .line 276
    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 382
    if-nez p0, :cond_0

    move-object v0, v1

    .line 393
    :goto_0
    return-object v0

    .line 384
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 386
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 393
    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 452
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 453
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 454
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 455
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WIFI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 456
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    const/4 v0, 0x1

    .line 461
    :goto_1
    return v0

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 461
    goto :goto_1
.end method
