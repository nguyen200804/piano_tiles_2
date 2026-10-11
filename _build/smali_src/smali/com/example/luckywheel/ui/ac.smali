.class Lcom/example/luckywheel/ui/ac;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/LuckyWheelActivity;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/ac;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v0, p0, Lcom/example/luckywheel/ui/ac;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->g(Lcom/example/luckywheel/ui/LuckyWheelActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "liufan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentFrameBalance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/luckywheel/ui/ac;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v2}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->h(Lcom/example/luckywheel/ui/LuckyWheelActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/luckywheel/ui/ac;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e(Lcom/example/luckywheel/ui/LuckyWheelActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/example/luckywheel/ui/ac;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    sget v2, Lcom/whatscall/luckywheel/R$string;->balance:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/example/luckywheel/ui/ac;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v5}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->h(Lcom/example/luckywheel/ui/LuckyWheelActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/ac;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    iget-object v1, p0, Lcom/example/luckywheel/ui/ac;->a:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v1}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->h(Lcom/example/luckywheel/ui/LuckyWheelActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a(Lcom/example/luckywheel/ui/LuckyWheelActivity;I)V

    return-void
.end method
