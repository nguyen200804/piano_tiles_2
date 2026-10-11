.class public Lcom/cmcm/dmc/sdk/e/p;
.super Lcom/cmcm/dmc/sdk/e/b;


# instance fields
.field private a:Lcom/cmcm/dmc/sdk/a/l;

.field private b:Lcom/cmcm/dmc/sdk/c/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/p;->i()V

    return-void
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/e/p;)I
    .locals 1

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/p;->c()I

    move-result v0

    return v0
.end method

.method private c()I
    .locals 3

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/p;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interval"

    const/16 v2, 0x2d0

    invoke-static {v0, v1, v2}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method static synthetic c(Lcom/cmcm/dmc/sdk/e/p;)Lcom/cmcm/dmc/sdk/a/l;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/p;->a:Lcom/cmcm/dmc/sdk/a/l;

    return-object v0
.end method

.method private i()V
    .locals 8

    const-string v0, "ReceiverPhotoStats"

    const-string v1, "report photo stats"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/p;->b:Lcom/cmcm/dmc/sdk/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmcm/dmc/sdk/c/d;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmcm/dmc/sdk/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/p;->b:Lcom/cmcm/dmc/sdk/c/d;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/p;->b:Lcom/cmcm/dmc/sdk/c/d;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/d;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "number"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/c/a/c;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "date_taken"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->c()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "title"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "height"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->f()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "width"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->e()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "type"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "size"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->b()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "filepath"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "bucket_name"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "description"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "latitude"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "longitude"

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReceiverPhotoStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    const-string v0, "list"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/e/p;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected b()V
    .locals 4

    new-instance v0, Lcom/cmcm/dmc/sdk/c/d;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmcm/dmc/sdk/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/p;->b:Lcom/cmcm/dmc/sdk/c/d;

    new-instance v0, Lcom/cmcm/dmc/sdk/a/l;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/l;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/p;->a:Lcom/cmcm/dmc/sdk/a/l;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/p;->a:Lcom/cmcm/dmc/sdk/a/l;

    new-instance v1, Lcom/cmcm/dmc/sdk/e/p$1;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/e/p$1;-><init>(Lcom/cmcm/dmc/sdk/e/p;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcm/dmc/sdk/a/l;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "photo_stats"

    return-object v0
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/p;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/l;->b()V

    return-void
.end method
