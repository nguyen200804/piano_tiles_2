.class Lcom/example/luckywheel/ui/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/a;

.field final synthetic b:Lcom/example/luckywheel/ui/LuckyWheelView;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelView;Lcom/example/luckywheel/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/am;->b:Lcom/example/luckywheel/ui/LuckyWheelView;

    iput-object p2, p0, Lcom/example/luckywheel/ui/am;->a:Lcom/example/luckywheel/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/am;->a:Lcom/example/luckywheel/ui/a;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/am;->a:Lcom/example/luckywheel/ui/a;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/a;->dismiss()V

    :cond_0
    return-void
.end method
