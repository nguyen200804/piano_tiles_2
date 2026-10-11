.class Lcom/example/luckywheel/ui/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/b/l$a;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/n;

.field final synthetic b:Lcom/example/luckywheel/ui/LuckyWheelActivity;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;Lcom/example/luckywheel/ui/n;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/u;->b:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    iput-object p2, p0, Lcom/example/luckywheel/ui/u;->a:Lcom/example/luckywheel/ui/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/ui/u;->b:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->b(Lcom/example/luckywheel/ui/LuckyWheelActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/example/luckywheel/ui/v;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/v;-><init>(Lcom/example/luckywheel/ui/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/ui/u;->b:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->b(Lcom/example/luckywheel/ui/LuckyWheelActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/example/luckywheel/ui/w;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/w;-><init>(Lcom/example/luckywheel/ui/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
