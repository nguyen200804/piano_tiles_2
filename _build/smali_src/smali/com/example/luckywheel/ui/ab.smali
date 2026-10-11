.class Lcom/example/luckywheel/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/LuckyWheelActivity;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/ab;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/example/luckywheel/ui/ab;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v1}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->g(Lcom/example/luckywheel/ui/LuckyWheelActivity;)Landroid/widget/TextView;

    move-result-object v1

    neg-float v2, v0

    iget-object v3, p0, Lcom/example/luckywheel/ui/ab;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-virtual {v3}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v3, v4}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/example/luckywheel/ui/ab;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v1}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->g(Lcom/example/luckywheel/ui/LuckyWheelActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
