.class public Lcom/example/luckywheel/ui/l;
.super Lcom/example/luckywheel/ui/b;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ui/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/ui/l;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/l;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/example/luckywheel/ui/l;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/l;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/example/luckywheel/ui/l;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/l;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/example/luckywheel/ui/p;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/p;-><init>(Lcom/example/luckywheel/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/example/luckywheel/ui/q;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/q;-><init>(Lcom/example/luckywheel/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/example/luckywheel/ui/b;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/whatscall/luckywheel/R$layout;->request_dialog:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/l;->setContentView(I)V

    sget v0, Lcom/whatscall/luckywheel/R$id;->request_title:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/l;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/example/luckywheel/ui/l;->d:Landroid/widget/TextView;

    sget v1, Lcom/whatscall/luckywheel/R$string;->redeem_request:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/whatscall/luckywheel/R$id;->request_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/example/luckywheel/ui/l;->a:Landroid/widget/ProgressBar;

    sget v0, Lcom/whatscall/luckywheel/R$id;->request_success_img:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/l;->c:Landroid/widget/ImageView;

    return-void
.end method
