.class Lcom/example/luckywheel/ui/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/b/j$b;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/l;

.field final synthetic b:Lcom/example/luckywheel/ui/k;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/k;Lcom/example/luckywheel/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    iput-object p2, p0, Lcom/example/luckywheel/ui/an;->a:Lcom/example/luckywheel/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/k;->dismiss()V

    iget-object v0, p0, Lcom/example/luckywheel/ui/an;->a:Lcom/example/luckywheel/ui/l;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/l;->show()V

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    invoke-static {v0}, Lcom/example/luckywheel/ui/k;->a(Lcom/example/luckywheel/ui/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/example/luckywheel/ui/ap;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/ap;-><init>(Lcom/example/luckywheel/ui/an;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    invoke-static {v0}, Lcom/example/luckywheel/ui/k;->b(Lcom/example/luckywheel/ui/k;)Lcom/example/luckywheel/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    invoke-static {v0}, Lcom/example/luckywheel/ui/k;->b(Lcom/example/luckywheel/ui/k;)Lcom/example/luckywheel/c/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    invoke-static {v2}, Lcom/example/luckywheel/ui/k;->c(Lcom/example/luckywheel/ui/k;)I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/example/luckywheel/c/a;->a(BII)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    invoke-static {v0}, Lcom/example/luckywheel/ui/k;->a(Lcom/example/luckywheel/ui/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/example/luckywheel/ui/ao;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/ao;-><init>(Lcom/example/luckywheel/ui/an;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    invoke-static {v0}, Lcom/example/luckywheel/ui/k;->b(Lcom/example/luckywheel/ui/k;)Lcom/example/luckywheel/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    invoke-static {v0}, Lcom/example/luckywheel/ui/k;->b(Lcom/example/luckywheel/ui/k;)Lcom/example/luckywheel/c/a;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    invoke-static {v2}, Lcom/example/luckywheel/ui/k;->c(Lcom/example/luckywheel/ui/k;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/example/luckywheel/c/a;->a(BII)V

    :cond_0
    return-void
.end method
