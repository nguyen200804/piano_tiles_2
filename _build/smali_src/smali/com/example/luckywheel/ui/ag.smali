.class Lcom/example/luckywheel/ui/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/d/c;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/d/b;

.field final synthetic b:Lcom/example/luckywheel/ui/LuckyWheelView;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelView;Lcom/example/luckywheel/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/ag;->b:Lcom/example/luckywheel/ui/LuckyWheelView;

    iput-object p2, p0, Lcom/example/luckywheel/ui/ag;->a:Lcom/example/luckywheel/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/ag;->b:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->b(Lcom/example/luckywheel/ui/LuckyWheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/ag;->b:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->c(Lcom/example/luckywheel/ui/LuckyWheelView;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/ag;->a:Lcom/example/luckywheel/d/b;

    invoke-virtual {v0}, Lcom/example/luckywheel/d/b;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/ui/ag;->b:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->b(Lcom/example/luckywheel/ui/LuckyWheelView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/ag;->b:Lcom/example/luckywheel/ui/LuckyWheelView;

    const/16 v1, 0x2766

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Lcom/example/luckywheel/ui/LuckyWheelView;I)I

    iget-object v0, p0, Lcom/example/luckywheel/ui/ag;->b:Lcom/example/luckywheel/ui/LuckyWheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelView;->b(Lcom/example/luckywheel/ui/LuckyWheelView;I)I

    iget-object v0, p0, Lcom/example/luckywheel/ui/ag;->b:Lcom/example/luckywheel/ui/LuckyWheelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelView;->c(Lcom/example/luckywheel/ui/LuckyWheelView;I)I

    :cond_0
    return-void
.end method
