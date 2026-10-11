.class public Lcom/example/luckywheel/b/b;
.super Lcom/example/luckywheel/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/example/luckywheel/a/e$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/example/luckywheel/a/e;-><init>(Landroid/content/Context;Lcom/example/luckywheel/a/e$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "/mission/confirm/sdk/getadid"

    return-object v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/b/b;->b:Ljava/util/Map;

    const-string v1, "appkey"

    invoke-static {}, Lcom/example/luckywheel/b/g;->a()Lcom/example/luckywheel/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/b/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
