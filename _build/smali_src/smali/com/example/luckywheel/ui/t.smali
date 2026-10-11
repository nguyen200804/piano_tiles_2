.class Lcom/example/luckywheel/ui/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/h;

.field final synthetic b:Lcom/example/luckywheel/ui/d;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/d;Lcom/example/luckywheel/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/t;->b:Lcom/example/luckywheel/ui/d;

    iput-object p2, p0, Lcom/example/luckywheel/ui/t;->a:Lcom/example/luckywheel/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/t;->a:Lcom/example/luckywheel/ui/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/t;->a:Lcom/example/luckywheel/ui/h;

    invoke-interface {v0}, Lcom/example/luckywheel/ui/h;->a()V

    :cond_0
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
