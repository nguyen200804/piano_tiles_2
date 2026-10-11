.class public Lcom/example/luckywheel/b/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/b/j$c;,
        Lcom/example/luckywheel/b/j$d;,
        Lcom/example/luckywheel/b/j$a;,
        Lcom/example/luckywheel/b/j$b;
    }
.end annotation


# static fields
.field private static a:Lcom/example/luckywheel/b/j;


# instance fields
.field private b:Lcom/example/luckywheel/b/j$a;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/b/j;->c:Ljava/util/Map;

    new-instance v0, Lcom/example/luckywheel/b/j$a;

    const/4 v1, 0x1

    sget v2, Lcom/whatscall/luckywheel/R$drawable;->diamond:I

    invoke-direct {v0, v1, v2}, Lcom/example/luckywheel/b/j$a;-><init>(II)V

    iput-object v0, p0, Lcom/example/luckywheel/b/j;->b:Lcom/example/luckywheel/b/j$a;

    return-void
.end method

.method public static a()Lcom/example/luckywheel/b/j;
    .locals 2

    sget-object v0, Lcom/example/luckywheel/b/j;->a:Lcom/example/luckywheel/b/j;

    if-nez v0, :cond_1

    const-class v1, Lcom/example/luckywheel/b/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/luckywheel/b/j;->a:Lcom/example/luckywheel/b/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/luckywheel/b/j;

    invoke-direct {v0}, Lcom/example/luckywheel/b/j;-><init>()V

    sput-object v0, Lcom/example/luckywheel/b/j;->a:Lcom/example/luckywheel/b/j;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/example/luckywheel/b/j;->a:Lcom/example/luckywheel/b/j;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILcom/example/luckywheel/b/j$b;)V
    .locals 3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/example/luckywheel/b/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/example/luckywheel/b/j$c;

    invoke-direct {v1}, Lcom/example/luckywheel/b/j$c;-><init>()V

    iput p2, v1, Lcom/example/luckywheel/b/j$c;->c:I

    iget-object v0, p0, Lcom/example/luckywheel/b/j;->b:Lcom/example/luckywheel/b/j$a;

    iget v0, v0, Lcom/example/luckywheel/b/j$a;->a:I

    iput v0, v1, Lcom/example/luckywheel/b/j$c;->a:I

    iget-object v0, p0, Lcom/example/luckywheel/b/j;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/example/luckywheel/b/j;->b:Lcom/example/luckywheel/b/j$a;

    iget v2, v2, Lcom/example/luckywheel/b/j$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/example/luckywheel/b/j$c;->b:I

    new-instance v0, Lcom/example/luckywheel/b/k;

    new-instance v2, Lcom/example/luckywheel/b/p;

    invoke-direct {v2, p0, p3}, Lcom/example/luckywheel/b/p;-><init>(Lcom/example/luckywheel/b/j;Lcom/example/luckywheel/b/j$b;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/example/luckywheel/b/k;-><init>(Landroid/content/Context;Lcom/example/luckywheel/b/j$c;Lcom/example/luckywheel/a/e$a;)V

    invoke-interface {p3}, Lcom/example/luckywheel/b/j$b;->a()V

    invoke-virtual {v0}, Lcom/example/luckywheel/b/k;->f()V

    goto :goto_0
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v0, "liufan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redeemRateList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "rate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "liufan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/example/luckywheel/b/j;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "liufan"

    const-string v1, "syncRedeemInfo fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/j;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/b/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/example/luckywheel/b/j$d;
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/b/j;->b:Lcom/example/luckywheel/b/j$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/example/luckywheel/b/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/example/luckywheel/b/j$d;

    invoke-direct {v1}, Lcom/example/luckywheel/b/j$d;-><init>()V

    iget-object v0, p0, Lcom/example/luckywheel/b/j;->b:Lcom/example/luckywheel/b/j$a;

    iget v0, v0, Lcom/example/luckywheel/b/j$a;->b:I

    iput v0, v1, Lcom/example/luckywheel/b/j$d;->a:I

    iget-object v0, p0, Lcom/example/luckywheel/b/j;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/example/luckywheel/b/j;->b:Lcom/example/luckywheel/b/j$a;

    iget v2, v2, Lcom/example/luckywheel/b/j$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/example/luckywheel/b/j$d;->b:I

    move-object v0, v1

    goto :goto_0
.end method
