.class public Lcom/example/luckywheel/b/d;
.super Lcom/example/luckywheel/a/e;


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/example/luckywheel/a/e$a;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/example/luckywheel/a/e;-><init>(Landroid/content/Context;Lcom/example/luckywheel/a/e$a;)V

    iput p2, p0, Lcom/example/luckywheel/b/d;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "/mission/confirm/sdk/ad_points"

    return-object v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/b/d;->b:Ljava/util/Map;

    const-string v1, "appkey"

    invoke-static {}, Lcom/example/luckywheel/b/g;->a()Lcom/example/luckywheel/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/b/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/b/d;->b:Ljava/util/Map;

    const-string v1, "token"

    invoke-static {}, Lcom/example/luckywheel/b/l;->a()Lcom/example/luckywheel/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/b/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/b/d;->b:Ljava/util/Map;

    const-string v1, "wuid"

    invoke-static {}, Lcom/example/luckywheel/b/l;->a()Lcom/example/luckywheel/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/b/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/b/d;->b:Ljava/util/Map;

    const-string v1, "star_num"

    iget v2, p0, Lcom/example/luckywheel/b/d;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
