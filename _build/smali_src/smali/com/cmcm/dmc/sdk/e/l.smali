.class public Lcom/cmcm/dmc/sdk/e/l;
.super Lcom/cmcm/dmc/sdk/e/b;

# interfaces
.implements Lcom/cmcm/dmc/sdk/a/e;


# instance fields
.field private a:Lcom/cmcm/dmc/sdk/a/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/l;)Lcom/cmcm/dmc/sdk/a/h;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/l;->a:Lcom/cmcm/dmc/sdk/a/h;

    return-object v0
.end method

.method private c()Lorg/json/JSONArray;
    .locals 8

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ssid"

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rssid"

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    const/16 v7, 0x64

    invoke-static {v6, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "bssid"

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "connect"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    :goto_1
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    return-object v2

    :cond_4
    const-string v0, "connect"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private i()I
    .locals 3

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/l;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interval"

    const/16 v2, 0x1e

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
.method public a(Landroid/location/Location;I)V
    .locals 8

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/dmc/sdk/e/l$2;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/e/l$2;-><init>(Lcom/cmcm/dmc/sdk/e/l;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/l;->h()Landroid/content/SharedPreferences;

    move-result-object v1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_2

    const-string v2, "location_location_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/l;->c()Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "provider"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "time"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "wifi"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_1
    const-string v2, "errorcode"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/e/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location_location_time"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/l;->a:Lcom/cmcm/dmc/sdk/a/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/dmc/sdk/e/l$3;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/e/l$3;-><init>(Lcom/cmcm/dmc/sdk/e/l;)V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/l;->i()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    const/4 p2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "ReceiverLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected b()V
    .locals 4

    new-instance v0, Lcom/cmcm/dmc/sdk/a/h;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/h;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/l;->a:Lcom/cmcm/dmc/sdk/a/h;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/l;->a:Lcom/cmcm/dmc/sdk/a/h;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/h;->a()V

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/dmc/sdk/e/l$1;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/e/l$1;-><init>(Lcom/cmcm/dmc/sdk/e/l;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "location"

    return-object v0
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/l;->a:Lcom/cmcm/dmc/sdk/a/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/l;->a:Lcom/cmcm/dmc/sdk/a/h;

    :cond_0
    return-void
.end method
