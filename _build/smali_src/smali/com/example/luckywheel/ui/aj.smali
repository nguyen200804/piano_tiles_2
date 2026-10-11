.class Lcom/example/luckywheel/ui/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/example/luckywheel/ui/LuckyWheelView;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelView;I)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/aj;->b:Lcom/example/luckywheel/ui/LuckyWheelView;

    iput p2, p0, Lcom/example/luckywheel/ui/aj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/ui/aj;->b:Lcom/example/luckywheel/ui/LuckyWheelView;

    iget v1, p0, Lcom/example/luckywheel/ui/aj;->a:I

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelView;->e(Lcom/example/luckywheel/ui/LuckyWheelView;I)V

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
