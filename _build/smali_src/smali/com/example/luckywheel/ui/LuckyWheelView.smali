.class public Lcom/example/luckywheel/ui/LuckyWheelView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Lcom/example/luckywheel/ui/LuckyPanelView;

.field private e:Z

.field private f:I

.field private g:Landroid/content/Context;

.field private h:Landroid/app/Activity;

.field private i:Lcom/example/luckywheel/ui/g;

.field private j:Lcom/example/luckywheel/ui/f;

.field private volatile k:Z

.field private volatile l:I

.field private volatile m:I

.field private volatile n:I

.field private volatile o:Z

.field private p:Lcom/example/luckywheel/c/a;

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->n:I

    iput-object p1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/whatscall/luckywheel/R$layout;->lucky_wheel_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/whatscall/luckywheel/R$id;->go_image_view:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->go_star_image_view:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->b:Landroid/widget/ImageView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->gray_image_view:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->c:Landroid/view/View;

    sget v0, Lcom/whatscall/luckywheel/R$id;->lucky_panel_view:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/ui/LuckyPanelView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->d:Lcom/example/luckywheel/ui/LuckyPanelView;

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/example/luckywheel/ui/ad;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/ad;-><init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->c:Landroid/view/View;

    new-instance v1, Lcom/example/luckywheel/ui/af;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/af;-><init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->q:Landroid/os/Handler;

    invoke-static {}, Lcom/example/luckywheel/b/g;->a()Lcom/example/luckywheel/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/b/g;->e()Lcom/example/luckywheel/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->p:Lcom/example/luckywheel/c/a;

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/ui/LuckyWheelView;I)I
    .locals 0

    iput p1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->n:I

    return p1
.end method

.method private a(I)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->o:Z

    iget-boolean v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/example/luckywheel/ui/LuckyWheelView;->b(I)V

    iput-boolean v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->e:Z

    goto :goto_0
.end method

.method private a(II)V
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p1, v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput p2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->l:I

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->m()V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->l:I

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    sget v3, Lcom/whatscall/luckywheel/R$string;->stars_tips:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->n()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/example/luckywheel/ui/LuckyWheelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/ui/LuckyWheelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/example/luckywheel/ui/LuckyWheelView;I)I
    .locals 0

    iput p1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->m:I

    return p1
.end method

.method private b(I)V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, p1

    const/high16 v2, 0x44e10000    # 1800.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/example/luckywheel/ui/ah;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/ah;-><init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->d:Lcom/example/luckywheel/ui/LuckyPanelView;

    invoke-virtual {v1, v0}, Lcom/example/luckywheel/ui/LuckyPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Lcom/example/luckywheel/ui/LuckyWheelView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/example/luckywheel/ui/LuckyWheelView;I)I
    .locals 0

    iput p1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->l:I

    return p1
.end method

.method private c(I)V
    .locals 7

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const v1, 0x45778000    # 3960.0f

    add-int/lit16 v2, p1, 0x1248

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v4, 0x9c4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/example/luckywheel/ui/aj;

    invoke-direct {v1, p0, p1}, Lcom/example/luckywheel/ui/aj;-><init>(Lcom/example/luckywheel/ui/LuckyWheelView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->d:Lcom/example/luckywheel/ui/LuckyPanelView;

    invoke-virtual {v1, v0}, Lcom/example/luckywheel/ui/LuckyPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic c(Lcom/example/luckywheel/ui/LuckyWheelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->k()V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/whatscall/luckywheel/R$string;->award_credits_reach_max:I

    invoke-direct {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->e(I)V

    return-void
.end method

.method private d(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->e:Z

    iput p1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->f:I

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->l()V

    iput-boolean v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->o:Z

    return-void
.end method

.method static synthetic d(Lcom/example/luckywheel/ui/LuckyWheelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->j()V

    return-void
.end method

.method static synthetic d(Lcom/example/luckywheel/ui/LuckyWheelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ui/LuckyWheelView;->c(I)V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/luckywheel/d/d;->a(Landroid/content/Context;)Lcom/example/luckywheel/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/d/d;->b()I

    move-result v1

    sget v0, Lcom/whatscall/luckywheel/R$drawable;->go_star_1:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->b:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->b:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    sget v0, Lcom/whatscall/luckywheel/R$drawable;->go_star_1:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/whatscall/luckywheel/R$drawable;->go_star_2:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/whatscall/luckywheel/R$drawable;->go_star_3:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/whatscall/luckywheel/R$drawable;->go_star_4:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/whatscall/luckywheel/R$drawable;->go_star_5:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private e(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic e(Lcom/example/luckywheel/ui/LuckyWheelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ui/LuckyWheelView;->d(I)V

    return-void
.end method

.method static synthetic e(Lcom/example/luckywheel/ui/LuckyWheelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/example/luckywheel/ui/LuckyWheelView;)I
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->l:I

    return v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->l:I

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/luckywheel/d/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->h()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->f:I

    invoke-direct {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(I)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->p:Lcom/example/luckywheel/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->p:Lcom/example/luckywheel/c/a;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/example/luckywheel/c/a;->a(B)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->k()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Z)V

    sget v0, Lcom/whatscall/luckywheel/R$string;->award_credits_reach_max:I

    invoke-direct {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->e(I)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->p:Lcom/example/luckywheel/c/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->p:Lcom/example/luckywheel/c/a;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/example/luckywheel/c/a;->a(B)V

    :cond_4
    iput-boolean v2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->o:Z

    goto :goto_1
.end method

.method static synthetic g(Lcom/example/luckywheel/ui/LuckyWheelView;)I
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->n:I

    return v0
.end method

.method private g()Z
    .locals 1

    invoke-static {}, Lcom/example/luckywheel/b/e;->a()Lcom/example/luckywheel/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/b/e;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/example/luckywheel/ui/LuckyWheelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    return-object v0
.end method

.method private h()V
    .locals 3

    invoke-static {}, Lcom/example/luckywheel/ad/e;->c()Lcom/example/luckywheel/ad/e;

    move-result-object v0

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/example/luckywheel/ad/e;->b(Landroid/content/Context;)V

    new-instance v0, Lcom/example/luckywheel/d/b;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/example/luckywheel/d/b;-><init>(II)V

    new-instance v1, Lcom/example/luckywheel/ui/ag;

    invoke-direct {v1, p0, v0}, Lcom/example/luckywheel/ui/ag;-><init>(Lcom/example/luckywheel/ui/LuckyWheelView;Lcom/example/luckywheel/d/b;)V

    invoke-virtual {v0, v1}, Lcom/example/luckywheel/d/b;->a(Lcom/example/luckywheel/d/c;)V

    invoke-virtual {v0}, Lcom/example/luckywheel/d/b;->a()V

    return-void
.end method

.method static synthetic i(Lcom/example/luckywheel/ui/LuckyWheelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->n()V

    return-void
.end method

.method private i()Z
    .locals 1

    invoke-static {}, Lcom/example/luckywheel/ad/e;->c()Lcom/example/luckywheel/ad/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/e;->b()Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x44e10000    # 1800.0f

    const v2, 0x45778000    # 3960.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/example/luckywheel/ui/ai;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/ai;-><init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->d:Lcom/example/luckywheel/ui/LuckyPanelView;

    invoke-virtual {v1, v0}, Lcom/example/luckywheel/ui/LuckyPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic j(Lcom/example/luckywheel/ui/LuckyWheelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->o()V

    return-void
.end method

.method private k()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->k:Z

    iput v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->l:I

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/luckywheel/d/d;->a(Landroid/content/Context;)Lcom/example/luckywheel/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/d/d;->a()I

    move-result v0

    invoke-static {v0}, Lcom/example/luckywheel/ui/d;->a(I)I

    move-result v0

    invoke-static {}, Lcom/example/luckywheel/b/e;->a()Lcom/example/luckywheel/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    new-instance v3, Lcom/example/luckywheel/ui/ak;

    invoke-direct {v3, p0}, Lcom/example/luckywheel/ui/ak;-><init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/example/luckywheel/b/e;->a(Landroid/content/Context;ILcom/example/luckywheel/b/e$a;)V

    return-void
.end method

.method private l()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->c()V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->i:Lcom/example/luckywheel/ui/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->i:Lcom/example/luckywheel/ui/g;

    invoke-interface {v0}, Lcom/example/luckywheel/ui/g;->a()V

    :cond_0
    iget v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->n:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->m:I

    iget v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->l:I

    invoke-direct {p0, v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(II)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->d:Lcom/example/luckywheel/ui/LuckyPanelView;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/LuckyPanelView;->a()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->p:Lcom/example/luckywheel/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->p:Lcom/example/luckywheel/c/a;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/example/luckywheel/c/a;->a(B)V

    :cond_1
    sget v0, Lcom/whatscall/luckywheel/R$string;->no_ad_tips:I

    invoke-direct {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->e(I)V

    goto :goto_0

    :sswitch_2
    iput v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->l:I

    sget v0, Lcom/whatscall/luckywheel/R$string;->request_exception:I

    invoke-direct {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->e(I)V

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/whatscall/luckywheel/R$string;->award_credits_reach_max:I

    invoke-direct {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->e(I)V

    invoke-virtual {p0, v1}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_0
        0x9 -> :sswitch_3
        0x2766 -> :sswitch_1
    .end sparse-switch
.end method

.method private m()V
    .locals 6

    new-instance v0, Lcom/example/luckywheel/ui/a;

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->h:Landroid/app/Activity;

    iget v2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->l:I

    new-instance v3, Lcom/example/luckywheel/ui/al;

    invoke-direct {v3, p0}, Lcom/example/luckywheel/ui/al;-><init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/example/luckywheel/ui/a;-><init>(Landroid/app/Activity;ILcom/example/luckywheel/ui/a$a;)V

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/a;->show()V

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->q:Landroid/os/Handler;

    new-instance v2, Lcom/example/luckywheel/ui/am;

    invoke-direct {v2, p0, v0}, Lcom/example/luckywheel/ui/am;-><init>(Lcom/example/luckywheel/ui/LuckyWheelView;Lcom/example/luckywheel/ui/a;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private n()V
    .locals 3

    new-instance v0, Lcom/example/luckywheel/ui/d;

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->h:Landroid/app/Activity;

    new-instance v2, Lcom/example/luckywheel/ui/ae;

    invoke-direct {v2, p0}, Lcom/example/luckywheel/ui/ae;-><init>(Lcom/example/luckywheel/ui/LuckyWheelView;)V

    invoke-direct {v0, v1, v2}, Lcom/example/luckywheel/ui/d;-><init>(Landroid/app/Activity;Lcom/example/luckywheel/ui/f;)V

    invoke-static {}, Lcom/example/luckywheel/ad/e;->c()Lcom/example/luckywheel/ad/e;

    move-result-object v1

    iget-object v2, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/example/luckywheel/ad/e;->a(Landroid/content/Context;Lcom/example/luckywheel/ad/h$b;)V

    return-void
.end method

.method private o()V
    .locals 1

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->b()V

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->c()V

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Z)V

    :goto_0
    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->j:Lcom/example/luckywheel/ui/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->j:Lcom/example/luckywheel/ui/f;

    invoke-interface {v0}, Lcom/example/luckywheel/ui/f;->a()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/LuckyWheelView;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/luckywheel/d/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->g:Landroid/content/Context;

    sget v2, Lcom/whatscall/luckywheel/R$string;->nonetwork:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->f()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->h:Landroid/app/Activity;

    return-void
.end method

.method public a(Lcom/example/luckywheel/ui/f;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->j:Lcom/example/luckywheel/ui/f;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/example/luckywheel/ui/LuckyWheelView;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/LuckyWheelView;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
