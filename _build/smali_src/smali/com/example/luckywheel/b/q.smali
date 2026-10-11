.class Lcom/example/luckywheel/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/a/e$a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/example/luckywheel/b/l$a;

.field final synthetic c:Lcom/example/luckywheel/b/l;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/b/l;Landroid/content/Context;Lcom/example/luckywheel/b/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/b/q;->c:Lcom/example/luckywheel/b/l;

    iput-object p2, p0, Lcom/example/luckywheel/b/q;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/example/luckywheel/b/q;->b:Lcom/example/luckywheel/b/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/b/q;->b:Lcom/example/luckywheel/b/l$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/b/q;->b:Lcom/example/luckywheel/b/l$a;

    invoke-interface {v0}, Lcom/example/luckywheel/b/l$a;->b()V

    :cond_0
    const-string v0, "liufan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAuth fail, errorCode = "

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
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "liufan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAuth success : data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/luckywheel/b/q;->c:Lcom/example/luckywheel/b/l;

    const-string v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/example/luckywheel/b/l;->a(Lcom/example/luckywheel/b/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/example/luckywheel/b/q;->c:Lcom/example/luckywheel/b/l;

    const-string v1, "wuid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/example/luckywheel/b/l;->b(Lcom/example/luckywheel/b/l;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/example/luckywheel/b/e;->a()Lcom/example/luckywheel/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/example/luckywheel/b/e;->a(I)V

    iget-object v0, p0, Lcom/example/luckywheel/b/q;->c:Lcom/example/luckywheel/b/l;

    iget-object v1, p0, Lcom/example/luckywheel/b/q;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/example/luckywheel/b/q;->b:Lcom/example/luckywheel/b/l$a;

    invoke-static {v0, v1, v2}, Lcom/example/luckywheel/b/l;->a(Lcom/example/luckywheel/b/l;Landroid/content/Context;Lcom/example/luckywheel/b/l$a;)V

    iget-object v0, p0, Lcom/example/luckywheel/b/q;->c:Lcom/example/luckywheel/b/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/example/luckywheel/b/l;->a(Lcom/example/luckywheel/b/l;J)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/b/q;->b:Lcom/example/luckywheel/b/l$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/b/q;->b:Lcom/example/luckywheel/b/l$a;

    invoke-interface {v0}, Lcom/example/luckywheel/b/l$a;->b()V

    goto :goto_0
.end method
