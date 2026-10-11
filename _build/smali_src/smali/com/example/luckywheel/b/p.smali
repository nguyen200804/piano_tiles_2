.class Lcom/example/luckywheel/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/a/e$a;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/b/j$b;

.field final synthetic b:Lcom/example/luckywheel/b/j;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/b/j;Lcom/example/luckywheel/b/j$b;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/b/p;->b:Lcom/example/luckywheel/b/j;

    iput-object p2, p0, Lcom/example/luckywheel/b/p;->a:Lcom/example/luckywheel/b/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/p;->a:Lcom/example/luckywheel/b/j$b;

    invoke-interface {v0, p1}, Lcom/example/luckywheel/b/j$b;->a(I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/example/luckywheel/b/p;->a:Lcom/example/luckywheel/b/j$b;

    invoke-interface {v1}, Lcom/example/luckywheel/b/j$b;->b()V

    invoke-static {}, Lcom/example/luckywheel/b/e;->a()Lcom/example/luckywheel/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/example/luckywheel/b/e;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/example/luckywheel/b/p;->a:Lcom/example/luckywheel/b/j$b;

    const/16 v1, 0x6f

    invoke-interface {v0, v1}, Lcom/example/luckywheel/b/j$b;->a(I)V

    goto :goto_0
.end method
