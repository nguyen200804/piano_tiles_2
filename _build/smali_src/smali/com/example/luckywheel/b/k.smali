.class public Lcom/example/luckywheel/b/k;
.super Lcom/example/luckywheel/a/e;


# instance fields
.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/example/luckywheel/b/j$c;Lcom/example/luckywheel/a/e$a;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/example/luckywheel/a/e;-><init>(Landroid/content/Context;Lcom/example/luckywheel/a/e$a;)V

    iget v0, p2, Lcom/example/luckywheel/b/j$c;->a:I

    iput v0, p0, Lcom/example/luckywheel/b/k;->c:I

    iget v0, p2, Lcom/example/luckywheel/b/j$c;->b:I

    iput v0, p0, Lcom/example/luckywheel/b/k;->d:I

    iget v0, p2, Lcom/example/luckywheel/b/j$c;->c:I

    iput v0, p0, Lcom/example/luckywheel/b/k;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "/mission/confirm/sdk/conversion"

    return-object v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/b/k;->b:Ljava/util/Map;

    const-string v1, "appkey"

    invoke-static {}, Lcom/example/luckywheel/b/g;->a()Lcom/example/luckywheel/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/b/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/b/k;->b:Ljava/util/Map;

    const-string v1, "appid"

    invoke-static {}, Lcom/example/luckywheel/b/g;->a()Lcom/example/luckywheel/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/b/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/b/k;->b:Ljava/util/Map;

    const-string v1, "token"

    invoke-static {}, Lcom/example/luckywheel/b/l;->a()Lcom/example/luckywheel/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/b/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/b/k;->b:Ljava/util/Map;

    const-string v1, "wuid"

    invoke-static {}, Lcom/example/luckywheel/b/l;->a()Lcom/example/luckywheel/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/b/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/b/k;->b:Ljava/util/Map;

    const-string v1, "typeid"

    iget v2, p0, Lcom/example/luckywheel/b/k;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/b/k;->b:Ljava/util/Map;

    const-string v1, "num"

    iget v2, p0, Lcom/example/luckywheel/b/k;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/b/k;->b:Ljava/util/Map;

    const-string v1, "rate"

    iget v2, p0, Lcom/example/luckywheel/b/k;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
