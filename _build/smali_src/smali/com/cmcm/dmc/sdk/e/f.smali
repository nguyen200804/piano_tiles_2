.class public Lcom/cmcm/dmc/sdk/e/f;
.super Lcom/cmcm/dmc/sdk/e/b;


# instance fields
.field private a:Lcom/cmcm/dmc/sdk/a/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/f;)Lcom/cmcm/dmc/sdk/a/l;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/f;->a:Lcom/cmcm/dmc/sdk/a/l;

    return-object v0
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/e/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/f;->c()V

    return-void
.end method

.method static synthetic c(Lcom/cmcm/dmc/sdk/e/f;)I
    .locals 1

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/f;->j()I

    move-result v0

    return v0
.end method

.method private c()V
    .locals 1

    invoke-static {}, Lcom/cmcm/dmc/sdk/e/f;->i()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/e/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static i()Lorg/json/JSONArray;
    .locals 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "bssid"

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ssid"

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "rssid"

    iget v7, v0, Landroid/net/wifi/ScanResult;->level:I

    const/16 v8, 0x64

    invoke-static {v7, v8}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "\""

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "connect"

    const/4 v3, 0x1

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    :goto_2
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "ReceiverAvailableNetworks"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v0, "connect"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private j()I
    .locals 3

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/f;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interval"

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method protected b()V
    .locals 5

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    :try_start_0
    const-string v0, "appops"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const-string v2, "android:fine_location"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    const-string v3, "android:coarse_location"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ReceiverAvailableNetworks"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/cmcm/dmc/sdk/a/l;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/l;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/f;->a:Lcom/cmcm/dmc/sdk/a/l;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/f;->a:Lcom/cmcm/dmc/sdk/a/l;

    new-instance v1, Lcom/cmcm/dmc/sdk/e/f$1;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/e/f$1;-><init>(Lcom/cmcm/dmc/sdk/e/f;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcm/dmc/sdk/a/l;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "available_network_list"

    return-object v0
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/f;->a:Lcom/cmcm/dmc/sdk/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/f;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/l;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/f;->a:Lcom/cmcm/dmc/sdk/a/l;

    :cond_0
    return-void
.end method
