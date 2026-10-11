.class Lcom/example/luckywheel/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/a/e$a;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/b/l$a;

.field final synthetic b:Lcom/example/luckywheel/b/l;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/b/l;Lcom/example/luckywheel/b/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/b/r;->b:Lcom/example/luckywheel/b/l;

    iput-object p2, p0, Lcom/example/luckywheel/b/r;->a:Lcom/example/luckywheel/b/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/b/r;->a:Lcom/example/luckywheel/b/l$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/b/r;->a:Lcom/example/luckywheel/b/l$a;

    invoke-interface {v0}, Lcom/example/luckywheel/b/l$a;->b()V

    :cond_0
    const-string v0, "liufan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RedeemInfoRequest fail, errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/b/r;->a:Lcom/example/luckywheel/b/l$a;

    invoke-interface {v0}, Lcom/example/luckywheel/b/l$a;->a()V

    const-string v0, "liufan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RedeemInfoRequest success : data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/example/luckywheel/b/j;->a()Lcom/example/luckywheel/b/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/example/luckywheel/b/j;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/example/luckywheel/b/r;->a:Lcom/example/luckywheel/b/l$a;

    invoke-interface {v0}, Lcom/example/luckywheel/b/l$a;->b()V

    goto :goto_0
.end method
