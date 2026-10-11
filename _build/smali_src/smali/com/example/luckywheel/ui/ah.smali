.class Lcom/example/luckywheel/ui/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/LuckyWheelView;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/ah;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/ah;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->d(Lcom/example/luckywheel/ui/LuckyWheelView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
