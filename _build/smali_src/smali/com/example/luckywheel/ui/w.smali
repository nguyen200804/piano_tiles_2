.class Lcom/example/luckywheel/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/u;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/u;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/w;->a:Lcom/example/luckywheel/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/w;->a:Lcom/example/luckywheel/ui/u;

    iget-object v0, v0, Lcom/example/luckywheel/ui/u;->a:Lcom/example/luckywheel/ui/n;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/n;->dismiss()V

    iget-object v0, p0, Lcom/example/luckywheel/ui/w;->a:Lcom/example/luckywheel/ui/u;

    iget-object v0, v0, Lcom/example/luckywheel/ui/u;->b:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->c(Lcom/example/luckywheel/ui/LuckyWheelActivity;)V

    return-void
.end method
