.class Lcom/example/luckywheel/ui/q;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/l;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/q;->a:Lcom/example/luckywheel/ui/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/q;->a:Lcom/example/luckywheel/ui/l;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/l;->dismiss()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/ui/q;->a:Lcom/example/luckywheel/ui/l;

    invoke-static {v0}, Lcom/example/luckywheel/ui/l;->b(Lcom/example/luckywheel/ui/l;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/q;->a:Lcom/example/luckywheel/ui/l;

    invoke-static {v0}, Lcom/example/luckywheel/ui/l;->a(Lcom/example/luckywheel/ui/l;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/q;->a:Lcom/example/luckywheel/ui/l;

    invoke-static {v0}, Lcom/example/luckywheel/ui/l;->c(Lcom/example/luckywheel/ui/l;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/whatscall/luckywheel/R$string;->redeem_success:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
