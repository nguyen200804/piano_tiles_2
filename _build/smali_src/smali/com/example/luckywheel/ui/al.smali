.class Lcom/example/luckywheel/ui/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/ui/a$a;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/LuckyWheelView;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/al;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "liufan"

    const-string v1, "onDismiss showAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/luckywheel/ui/al;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->i(Lcom/example/luckywheel/ui/LuckyWheelView;)V

    return-void
.end method
