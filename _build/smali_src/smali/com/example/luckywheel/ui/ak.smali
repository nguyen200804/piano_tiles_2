.class Lcom/example/luckywheel/ui/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/b/e$a;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/LuckyWheelView;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/ak;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/example/luckywheel/ui/ak;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0, v3}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Lcom/example/luckywheel/ui/LuckyWheelView;Z)Z

    iget-object v0, p0, Lcom/example/luckywheel/ui/ak;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0, p1}, Lcom/example/luckywheel/ui/LuckyWheelView;->c(Lcom/example/luckywheel/ui/LuckyWheelView;I)I

    iget-object v0, p0, Lcom/example/luckywheel/ui/ak;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0, v2}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Lcom/example/luckywheel/ui/LuckyWheelView;I)I

    iget-object v0, p0, Lcom/example/luckywheel/ui/ak;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelView;->b(Lcom/example/luckywheel/ui/LuckyWheelView;I)I

    iget-object v0, p0, Lcom/example/luckywheel/ui/ak;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->h(Lcom/example/luckywheel/ui/LuckyWheelView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/example/luckywheel/d/d;->a(Landroid/content/Context;)Lcom/example/luckywheel/d/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/example/luckywheel/d/d;->a(I)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/ak;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->h(Lcom/example/luckywheel/ui/LuckyWheelView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/example/luckywheel/d/d;->a(Landroid/content/Context;)Lcom/example/luckywheel/d/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/example/luckywheel/d/d;->b(I)V

    return-void
.end method

.method public b(I)V
    .locals 3

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/example/luckywheel/ui/ak;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Lcom/example/luckywheel/ui/LuckyWheelView;Z)Z

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/ak;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0, v2}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Lcom/example/luckywheel/ui/LuckyWheelView;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/example/luckywheel/ui/ak;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Lcom/example/luckywheel/ui/LuckyWheelView;I)I

    goto :goto_0
.end method
