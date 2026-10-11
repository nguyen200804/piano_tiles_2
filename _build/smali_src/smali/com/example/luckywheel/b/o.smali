.class Lcom/example/luckywheel/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/a/e$a;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/b/e$a;

.field final synthetic b:Lcom/example/luckywheel/b/e;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/b/e;Lcom/example/luckywheel/b/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/b/o;->b:Lcom/example/luckywheel/b/e;

    iput-object p2, p0, Lcom/example/luckywheel/b/o;->a:Lcom/example/luckywheel/b/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/example/luckywheel/b/o;->b:Lcom/example/luckywheel/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/luckywheel/b/e;->b(Lcom/example/luckywheel/b/e;I)I

    :goto_0
    iget-object v0, p0, Lcom/example/luckywheel/b/o;->a:Lcom/example/luckywheel/b/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/b/o;->a:Lcom/example/luckywheel/b/e$a;

    invoke-interface {v0, p1}, Lcom/example/luckywheel/b/e$a;->b(I)V

    :cond_0
    return-void

    :cond_1
    const/16 p1, 0x63

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "points"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/example/luckywheel/b/o;->b:Lcom/example/luckywheel/b/e;

    const-string v2, "total"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/example/luckywheel/b/e;->a(Lcom/example/luckywheel/b/e;I)I

    iget-object v1, p0, Lcom/example/luckywheel/b/o;->b:Lcom/example/luckywheel/b/e;

    const-string v2, "remain_quota"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/example/luckywheel/b/e;->b(Lcom/example/luckywheel/b/e;I)I

    iget-object v1, p0, Lcom/example/luckywheel/b/o;->b:Lcom/example/luckywheel/b/e;

    invoke-static {v1}, Lcom/example/luckywheel/b/e;->a(Lcom/example/luckywheel/b/e;)I

    move-result v1

    iget-object v2, p0, Lcom/example/luckywheel/b/o;->b:Lcom/example/luckywheel/b/e;

    iget-object v3, p0, Lcom/example/luckywheel/b/o;->b:Lcom/example/luckywheel/b/e;

    invoke-static {v3}, Lcom/example/luckywheel/b/e;->a(Lcom/example/luckywheel/b/e;)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/example/luckywheel/b/e;->a(Lcom/example/luckywheel/b/e;I)I

    iget-object v2, p0, Lcom/example/luckywheel/b/o;->b:Lcom/example/luckywheel/b/e;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/example/luckywheel/b/o;->b:Lcom/example/luckywheel/b/e;

    invoke-static {v4}, Lcom/example/luckywheel/b/e;->a(Lcom/example/luckywheel/b/e;)I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Lcom/example/luckywheel/b/e;->a(Lcom/example/luckywheel/b/e;ZII)V

    iget-object v1, p0, Lcom/example/luckywheel/b/o;->a:Lcom/example/luckywheel/b/e$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/example/luckywheel/b/o;->a:Lcom/example/luckywheel/b/e$a;

    invoke-interface {v1, v0}, Lcom/example/luckywheel/b/e$a;->a(I)V

    :cond_0
    return-void
.end method
