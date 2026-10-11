.class Lcom/example/luckywheel/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/a/e$a;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/b/a;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/b/n;->a:Lcom/example/luckywheel/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "liufan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Id Config Request : data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/example/luckywheel/b/n;->a:Lcom/example/luckywheel/b/a;

    invoke-static {v1}, Lcom/example/luckywheel/b/a;->a(Lcom/example/luckywheel/b/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/example/luckywheel/b/n;->a:Lcom/example/luckywheel/b/a;

    invoke-static {v1}, Lcom/example/luckywheel/b/a;->b(Lcom/example/luckywheel/b/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/example/luckywheel/b/n;->a:Lcom/example/luckywheel/b/a;

    invoke-static {v1, v0}, Lcom/example/luckywheel/b/a;->a(Lcom/example/luckywheel/b/a;Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/example/luckywheel/b/n;->a:Lcom/example/luckywheel/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/example/luckywheel/b/a;->a(Lcom/example/luckywheel/b/a;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
