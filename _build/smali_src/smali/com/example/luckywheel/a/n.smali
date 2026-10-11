.class Lcom/example/luckywheel/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/a/j;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/a/e;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0, v2}, Lcom/example/luckywheel/a/e;->a(Lcom/example/luckywheel/a/e;Z)Z

    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0}, Lcom/example/luckywheel/a/e;->b(Lcom/example/luckywheel/a/e;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0}, Lcom/example/luckywheel/a/e;->b(Lcom/example/luckywheel/a/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez p1, :cond_2

    check-cast p2, Lcom/example/luckywheel/a/i;

    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0}, Lcom/example/luckywheel/a/e;->c(Lcom/example/luckywheel/a/e;)Lcom/example/luckywheel/a/e$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0}, Lcom/example/luckywheel/a/e;->c(Lcom/example/luckywheel/a/e;)Lcom/example/luckywheel/a/e$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/example/luckywheel/a/i;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/example/luckywheel/a/e$a;->a(Lorg/json/JSONObject;)V

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0, v2}, Lcom/example/luckywheel/a/e;->a(Lcom/example/luckywheel/a/e;I)I

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0}, Lcom/example/luckywheel/a/e;->d(Lcom/example/luckywheel/a/e;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-virtual {v0}, Lcom/example/luckywheel/a/e;->f()V

    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0}, Lcom/example/luckywheel/a/e;->e(Lcom/example/luckywheel/a/e;)I

    const-string v0, "EasyBaseRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", request retry!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0}, Lcom/example/luckywheel/a/e;->c(Lcom/example/luckywheel/a/e;)Lcom/example/luckywheel/a/e$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0}, Lcom/example/luckywheel/a/e;->c(Lcom/example/luckywheel/a/e;)Lcom/example/luckywheel/a/e$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/example/luckywheel/a/e$a;->a(ILjava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/example/luckywheel/a/n;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v0, v2}, Lcom/example/luckywheel/a/e;->a(Lcom/example/luckywheel/a/e;I)I

    goto :goto_0
.end method
