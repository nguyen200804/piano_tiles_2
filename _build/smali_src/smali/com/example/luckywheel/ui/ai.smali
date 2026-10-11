.class Lcom/example/luckywheel/ui/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/LuckyWheelView;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/ai;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/example/luckywheel/ui/ai;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->e(Lcom/example/luckywheel/ui/LuckyWheelView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/luckywheel/ui/ai;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->f(Lcom/example/luckywheel/ui/LuckyWheelView;)I

    move-result v0

    :goto_0
    const-string v2, "liufan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LuckyWheelView credits = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsRequestSuccess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/luckywheel/ui/ai;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v4}, Lcom/example/luckywheel/ui/LuckyWheelView;->e(Lcom/example/luckywheel/ui/LuckyWheelView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRequestErrorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/luckywheel/ui/ai;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v4}, Lcom/example/luckywheel/ui/LuckyWheelView;->g(Lcom/example/luckywheel/ui/LuckyWheelView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/example/luckywheel/ui/ai;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v2}, Lcom/example/luckywheel/ui/LuckyWheelView;->h(Lcom/example/luckywheel/ui/LuckyWheelView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/example/luckywheel/ui/j;->a(Landroid/content/Context;)Lcom/example/luckywheel/ui/j;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/example/luckywheel/ui/j;->b(I)Lcom/example/luckywheel/ui/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/i;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/i;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/example/luckywheel/ui/ai;->a:Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelView;->d(Lcom/example/luckywheel/ui/LuckyWheelView;I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
