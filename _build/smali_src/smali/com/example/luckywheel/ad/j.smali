.class Lcom/example/luckywheel/ad/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/ui/e;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ad/h$b;

.field final synthetic b:Lcom/example/luckywheel/ad/d;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ad/d;Lcom/example/luckywheel/ad/h$b;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ad/j;->b:Lcom/example/luckywheel/ad/d;

    iput-object p2, p0, Lcom/example/luckywheel/ad/j;->a:Lcom/example/luckywheel/ad/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ad/j;->a:Lcom/example/luckywheel/ad/h$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/j;->a:Lcom/example/luckywheel/ad/h$b;

    invoke-interface {v0}, Lcom/example/luckywheel/ad/h$b;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ad/j;->a:Lcom/example/luckywheel/ad/h$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/j;->a:Lcom/example/luckywheel/ad/h$b;

    invoke-interface {v0}, Lcom/example/luckywheel/ad/h$b;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ad/j;->a:Lcom/example/luckywheel/ad/h$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/j;->a:Lcom/example/luckywheel/ad/h$b;

    invoke-interface {v0}, Lcom/example/luckywheel/ad/h$b;->b()V

    :cond_0
    return-void
.end method
