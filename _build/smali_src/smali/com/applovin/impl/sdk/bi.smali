.class Lcom/applovin/impl/sdk/bi;
.super Lcom/applovin/impl/sdk/au;

# interfaces
.implements Lcom/applovin/impl/sdk/dg;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAdSize;

.field private final b:Lcom/applovin/sdk/AppLovinAdType;

.field private final c:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    const-string v0, "FetchNextAd"

    invoke-direct {p0, v0, p4}, Lcom/applovin/impl/sdk/au;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/bi;->d:Z

    iput-object p1, p0, Lcom/applovin/impl/sdk/bi;->a:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p2, p0, Lcom/applovin/impl/sdk/bi;->b:Lcom/applovin/sdk/AppLovinAdType;

    iput-object p3, p0, Lcom/applovin/impl/sdk/bi;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/bc;)V
    .locals 6

    const-string v0, "ad_session_start"

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/bc;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/av;->x:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const-string v0, "ad_session_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/applovin/impl/sdk/bc;->b(Ljava/lang/String;J)V

    const-string v0, "ad_imp_session"

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/bc;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/bi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bi;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/bi;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bi;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/bi;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ad: server returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/bi;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/cx;->b(ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/bi;->e:Ljava/lang/String;

    const-string v3, "Unable process a failure to recieve an ad"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/bi;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/au;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/bo;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bp;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/bo;->a(Lcom/applovin/impl/sdk/au;Lcom/applovin/impl/sdk/bp;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/cx;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method private d(Ljava/util/Map;)V
    .locals 4

    const-string v0, "api_did"

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/av;->c:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_key"

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSdkKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_version"

    const-string v1, "6.1.4"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/av;->F:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "plugin_version"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "accept"

    invoke-direct {p0}, Lcom/applovin/impl/sdk/bi;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v1"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/applovin/impl/sdk/bi;->h:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v2"

    const-class v1, Lcom/applovin/adview/AppLovinInterstitialActivity;

    iget-object v2, p0, Lcom/applovin/impl/sdk/bi;->h:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "preloading"

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/bi;->d:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "size"

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "format"

    const-string v1, "json"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getDataCollector()Lcom/applovin/impl/sdk/cy;

    move-result-object v0

    const-string v1, "ia"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cy;->b()Lcom/applovin/impl/sdk/da;

    move-result-object v0

    iget-wide v2, v0, Lcom/applovin/impl/sdk/da;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/av;->N:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/bc;

    move-result-object v0

    const-string v1, "li"

    const-string v2, "ad_imp"

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/bc;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "si"

    const-string v2, "ad_imp_session"

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/bc;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private f(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/av;->N:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/cu;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cu;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    const-string v0, "custom_size,launch_app"

    invoke-static {}, Lcom/applovin/impl/sdk/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/applovin/adview/AppLovinInterstitialActivity;

    iget-object v2, p0, Lcom/applovin/impl/sdk/bi;->h:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private g(Ljava/util/Map;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/bi;->h(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/a;->a(Ljava/util/Map;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "network"

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cx;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bi;->j(Ljava/util/Map;)V

    const-string v0, "vz"

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/dh;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/bi;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v3, p0, Lcom/applovin/impl/sdk/bi;->e:Ljava/lang/String;

    const-string v4, "Unable to populate device information"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private h(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getDataCollector()Lcom/applovin/impl/sdk/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cy;->a()Lcom/applovin/impl/sdk/dc;

    move-result-object v0

    const-string v1, "brand"

    iget-object v2, v0, Lcom/applovin/impl/sdk/dc;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/dh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "carrier"

    iget-object v2, v0, Lcom/applovin/impl/sdk/dc;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/dh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "locale"

    iget-object v2, v0, Lcom/applovin/impl/sdk/dc;->h:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    iget-object v2, v0, Lcom/applovin/impl/sdk/dc;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/dh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os"

    iget-object v2, v0, Lcom/applovin/impl/sdk/dc;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/dh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "revision"

    iget-object v0, v0, Lcom/applovin/impl/sdk/dc;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/dh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bi;->i(Ljava/util/Map;)V

    return-void
.end method

.method private i(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/n;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    const-string v1, "dx"

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dy"

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private j(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getDataCollector()Lcom/applovin/impl/sdk/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cy;->c()Lcom/applovin/impl/sdk/cz;

    move-result-object v0

    iget-object v1, v0, Lcom/applovin/impl/sdk/cz;->b:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/applovin/impl/sdk/cz;->a:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/az;

    move-result-object v0

    sget-object v3, Lcom/applovin/impl/sdk/av;->be:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "idfa"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "dnt"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/au;
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/bu;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/impl/sdk/bu;-><init>(Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-object v0
.end method

.method protected a(I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    instance-of v0, v0, Lcom/applovin/impl/sdk/de;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast v0, Lcom/applovin/impl/sdk/de;

    new-instance v1, Lcom/applovin/impl/sdk/c;

    iget-object v2, p0, Lcom/applovin/impl/sdk/bi;->a:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p0, Lcom/applovin/impl/sdk/bi;->b:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-interface {v0, v1, p1}, Lcom/applovin/impl/sdk/de;->a(Lcom/applovin/impl/sdk/c;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bi;->f(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bi;->g(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bi;->e(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bi;->d(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/bi;->b(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/bi;->c(Ljava/util/Map;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/bi;->d:Z

    return-void
.end method

.method b()V
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/au;->b()V

    const/16 v0, -0x19a

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/bi;->b(I)V

    return-void
.end method

.method protected b(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->b:Lcom/applovin/sdk/AppLovinAdType;

    if-eqz v0, :cond_0

    const-string v0, "require"

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->b:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/bi;->a(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/bi;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/applovin/impl/sdk/dh;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/util/Map;)V
    .locals 4

    invoke-static {}, Lcom/applovin/impl/sdk/db;->a()Lcom/applovin/impl/sdk/db;

    move-result-object v0

    const-string v1, "tFNA"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/db;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/cg;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "etf"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cg;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ntf"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/db;->a()Lcom/applovin/impl/sdk/db;

    move-result-object v0

    const-string v1, "tRA"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/db;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/cg;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "etr"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cg;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ntr"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fvr"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cg;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    const-string v0, "2.0/ad"

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/cx;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "tFNA"

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/bi;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->e:Ljava/lang/String;

    const-string v2, "Preloading next ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/bc;

    move-result-object v0

    const-string v1, "ad_req"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/bi;->a(Lcom/applovin/impl/sdk/bc;)V

    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/bj;

    const-string v1, "RepeatFetchNextAd"

    sget-object v2, Lcom/applovin/impl/sdk/av;->i:Lcom/applovin/impl/sdk/by;

    iget-object v3, p0, Lcom/applovin/impl/sdk/bi;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/applovin/impl/sdk/bj;-><init>(Lcom/applovin/impl/sdk/bi;Ljava/lang/String;Lcom/applovin/impl/sdk/by;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    sget-object v1, Lcom/applovin/impl/sdk/av;->l:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bw;->a(Lcom/applovin/impl/sdk/by;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bw;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bi;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->e:Ljava/lang/String;

    const-string v2, "Fetching next ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bi;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/bi;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fetch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/bi;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/bi;->b(I)V

    goto :goto_1
.end method
