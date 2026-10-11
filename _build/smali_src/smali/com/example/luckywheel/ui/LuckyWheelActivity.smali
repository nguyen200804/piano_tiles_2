.class public Lcom/example/luckywheel/ui/LuckyWheelActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/example/luckywheel/b/c;
.implements Lcom/example/luckywheel/ui/f;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(I)V
    .locals 3

    invoke-static {}, Lcom/example/luckywheel/b/j;->a()Lcom/example/luckywheel/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/b/j;->c()Lcom/example/luckywheel/b/j$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/example/luckywheel/b/j$d;->b:I

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->i:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget v0, v0, Lcom/example/luckywheel/b/j$d;->b:I

    div-int v0, p1, v0

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/example/luckywheel/ui/LuckyWheelActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/ui/LuckyWheelActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a(I)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/example/luckywheel/b/l;->a()Lcom/example/luckywheel/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/b/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->c()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/example/luckywheel/ui/LuckyWheelActivity;I)I
    .locals 0

    iput p1, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->j:I

    return p1
.end method

.method static synthetic b(Lcom/example/luckywheel/ui/LuckyWheelActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 1

    sget v0, Lcom/whatscall/luckywheel/R$id;->balance:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->b:Landroid/widget/TextView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->price_tv:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->c:Landroid/widget/TextView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->redeem_number_tv:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e:Landroid/widget/TextView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->redeem_btn:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->i:Landroid/widget/TextView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->redeem_gift_img:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->d:Landroid/widget/ImageView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->minus_btn:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->h:Landroid/view/View;

    sget v0, Lcom/whatscall/luckywheel/R$id;->plus_btn:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->g:Landroid/view/View;

    sget v0, Lcom/whatscall/luckywheel/R$id;->award_credits_tips:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->expandViewTouchDelegate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->expandViewTouchDelegate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/whatscall/luckywheel/R$id;->back_arrow:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/example/luckywheel/ui/LuckyWheelActivity;I)I
    .locals 0

    iput p1, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->k:I

    return p1
.end method

.method private c()V
    .locals 4

    new-instance v0, Lcom/example/luckywheel/ui/n;

    invoke-direct {v0, p0}, Lcom/example/luckywheel/ui/n;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/n;->show()V

    invoke-static {}, Lcom/example/luckywheel/b/l;->a()Lcom/example/luckywheel/b/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/example/luckywheel/ui/u;

    invoke-direct {v3, p0, v0}, Lcom/example/luckywheel/ui/u;-><init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;Lcom/example/luckywheel/ui/n;)V

    invoke-virtual {v1, v2, v3}, Lcom/example/luckywheel/b/l;->a(Landroid/content/Context;Lcom/example/luckywheel/b/l$a;)V

    return-void
.end method

.method static synthetic c(Lcom/example/luckywheel/ui/LuckyWheelActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e()V

    return-void
.end method

.method private d()V
    .locals 6

    invoke-static {}, Lcom/example/luckywheel/b/e;->a()Lcom/example/luckywheel/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/b/e;->c()I

    move-result v0

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->b:Landroid/widget/TextView;

    sget v2, Lcom/whatscall/luckywheel/R$string;->balance:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/example/luckywheel/b/j;->a()Lcom/example/luckywheel/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/luckywheel/b/j;->c()Lcom/example/luckywheel/b/j$d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->c:Landroid/widget/TextView;

    iget v3, v1, Lcom/example/luckywheel/b/j$d;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->d:Landroid/widget/ImageView;

    iget v1, v1, Lcom/example/luckywheel/b/j$d;->a:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/example/luckywheel/ui/LuckyWheelActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/example/luckywheel/ui/LuckyWheelActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/example/luckywheel/ui/m;

    new-instance v1, Lcom/example/luckywheel/ui/x;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/x;-><init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/example/luckywheel/ui/m;-><init>(Landroid/app/Activity;Lcom/example/luckywheel/ui/m$a;)V

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/m;->show()V

    return-void
.end method

.method static synthetic f(Lcom/example/luckywheel/ui/LuckyWheelActivity;)I
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->j:I

    return v0
.end method

.method static synthetic g(Lcom/example/luckywheel/ui/LuckyWheelActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/example/luckywheel/ui/LuckyWheelActivity;)I
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->k:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->j:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/example/luckywheel/ui/ab;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/ab;-><init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/example/luckywheel/ui/ac;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/ac;-><init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(ZII)V
    .locals 4

    const-string v0, "liufan"

    const-string v1, "onChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/example/luckywheel/ui/y;

    invoke-direct {v1, p0, p3}, Lcom/example/luckywheel/ui/y;-><init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/example/luckywheel/ui/z;

    invoke-direct {v1, p0, p3, p2}, Lcom/example/luckywheel/ui/z;-><init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;II)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public expandViewTouchDelegate(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/example/luckywheel/ui/aa;

    invoke-direct {v1, p0, p1}, Lcom/example/luckywheel/ui/aa;-><init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/whatscall/luckywheel/R$id;->plus_btn:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/example/luckywheel/b/j;->a()Lcom/example/luckywheel/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/luckywheel/b/j;->c()Lcom/example/luckywheel/b/j$d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/example/luckywheel/b/j$d;->b:I

    invoke-static {}, Lcom/example/luckywheel/b/e;->a()Lcom/example/luckywheel/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/b/e;->c()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    const/16 v1, 0x3e7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e:Landroid/widget/TextView;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/whatscall/luckywheel/R$id;->minus_btn:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e:Landroid/widget/TextView;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/whatscall/luckywheel/R$id;->redeem_btn:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/example/luckywheel/d/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    sget v0, Lcom/whatscall/luckywheel/R$string;->nonetwork:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/example/luckywheel/ui/k;

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a:Landroid/os/Handler;

    invoke-direct {v1, p0, v0, v2}, Lcom/example/luckywheel/ui/k;-><init>(Landroid/app/Activity;ILandroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/example/luckywheel/ui/k;->show()V

    goto :goto_0

    :cond_5
    sget v1, Lcom/whatscall/luckywheel/R$id;->back_arrow:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->requestWindowFeature(I)Z

    sget v0, Lcom/whatscall/luckywheel/R$layout;->main_layout:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->setContentView(I)V

    sget v0, Lcom/whatscall/luckywheel/R$id;->lucky_wheel_view:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/ui/LuckyWheelView;

    invoke-virtual {v0, p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Landroid/app/Activity;)V

    invoke-virtual {v0, p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Lcom/example/luckywheel/ui/f;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->b()V

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user_changed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a(Z)V

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->d()V

    invoke-static {}, Lcom/example/luckywheel/b/e;->a()Lcom/example/luckywheel/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/example/luckywheel/b/e;->a(Lcom/example/luckywheel/b/c;)V

    invoke-static {}, Lcom/example/luckywheel/b/g;->a()Lcom/example/luckywheel/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/b/g;->e()Lcom/example/luckywheel/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Lcom/example/luckywheel/c/a;->a(B)V

    :cond_0
    return-void
.end method
