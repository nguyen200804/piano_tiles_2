.class Lcom/example/luckywheel/ui/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/l;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/p;->a:Lcom/example/luckywheel/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/example/luckywheel/ui/p;->a:Lcom/example/luckywheel/ui/l;

    invoke-static {v1}, Lcom/example/luckywheel/ui/l;->a(Lcom/example/luckywheel/ui/l;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
