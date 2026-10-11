.class public Lcom/example/luckywheel/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/b/f;


# static fields
.field private static a:Lcom/example/luckywheel/b/a;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/example/luckywheel/b/b;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/b/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/b/a;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/example/luckywheel/b/a;->b()V

    return-void
.end method

.method public static a()Lcom/example/luckywheel/b/a;
    .locals 2

    sget-object v0, Lcom/example/luckywheel/b/a;->a:Lcom/example/luckywheel/b/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/example/luckywheel/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/luckywheel/b/a;->a:Lcom/example/luckywheel/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/luckywheel/b/a;

    invoke-direct {v0}, Lcom/example/luckywheel/b/a;-><init>()V

    sput-object v0, Lcom/example/luckywheel/b/a;->a:Lcom/example/luckywheel/b/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/example/luckywheel/b/a;->a:Lcom/example/luckywheel/b/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/example/luckywheel/b/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/example/luckywheel/b/a;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/b/a;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "liufan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConfigMapFromJson: jsonArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "priority"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/example/luckywheel/b/a;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/example/luckywheel/b/a;->c:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "liufan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "liufan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "liufan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "priority = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/b/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/example/luckywheel/b/a;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/example/luckywheel/b/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .locals 2

    :try_start_0
    const-string v0, "liufan"

    const-string v1, "default id Config = [{\"type\": \"admob_interstitial\",\"id\": \"ca-app-pub-7551687826419156/8364214339\",\"priority\":4},{\"type\": \"adx_interstitial\",\"id\": \"ca-mb-app-pub-6281674756316900/8148833598/1238818601\",\"priority\":3},{\"type\": \"facebook_interstitial\",\"id\": \"XXX\",\"priority\":2 },{\"type\": \"admob_native\",\"id\": \"ca-app-pub-7551687826419156/3023423592\",\"priority\":1}]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "[{\"type\": \"admob_interstitial\",\"id\": \"ca-app-pub-7551687826419156/8364214339\",\"priority\":4},{\"type\": \"adx_interstitial\",\"id\": \"ca-mb-app-pub-6281674756316900/8148833598/1238818601\",\"priority\":3},{\"type\": \"facebook_interstitial\",\"id\": \"XXX\",\"priority\":2 },{\"type\": \"admob_native\",\"id\": \"ca-app-pub-7551687826419156/3023423592\",\"priority\":1}]"

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/example/luckywheel/b/a;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/example/luckywheel/b/a;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/example/luckywheel/b/a;->d:Lcom/example/luckywheel/b/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/example/luckywheel/b/b;

    new-instance v1, Lcom/example/luckywheel/b/n;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/b/n;-><init>(Lcom/example/luckywheel/b/a;)V

    invoke-direct {v0, p1, v1}, Lcom/example/luckywheel/b/b;-><init>(Landroid/content/Context;Lcom/example/luckywheel/a/e$a;)V

    iput-object v0, p0, Lcom/example/luckywheel/b/a;->d:Lcom/example/luckywheel/b/b;

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/b/a;->d:Lcom/example/luckywheel/b/b;

    invoke-virtual {v0}, Lcom/example/luckywheel/b/b;->f()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/b/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/example/luckywheel/b/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/example/luckywheel/ad/e;->c()Lcom/example/luckywheel/ad/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/example/luckywheel/ad/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
