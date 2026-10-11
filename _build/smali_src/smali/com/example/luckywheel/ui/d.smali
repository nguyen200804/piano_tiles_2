.class public Lcom/example/luckywheel/ui/d;
.super Lcom/example/luckywheel/ui/c;

# interfaces
.implements Lcom/example/luckywheel/ad/h$b;


# static fields
.field private static a:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I


# instance fields
.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/TextView;

.field private r:I

.field private s:J

.field private t:Landroid/app/Activity;

.field private u:Lcom/example/luckywheel/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x14

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v0, Lcom/example/luckywheel/ui/d;->a:I

    sput v1, Lcom/example/luckywheel/ui/d;->c:I

    sput v1, Lcom/example/luckywheel/ui/d;->d:I

    sput v2, Lcom/example/luckywheel/ui/d;->e:I

    sput v2, Lcom/example/luckywheel/ui/d;->f:I

    sput v3, Lcom/example/luckywheel/ui/d;->g:I

    sput v3, Lcom/example/luckywheel/ui/d;->h:I

    sput v4, Lcom/example/luckywheel/ui/d;->i:I

    sput v4, Lcom/example/luckywheel/ui/d;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/example/luckywheel/ui/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ui/c;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/example/luckywheel/ui/d;->t:Landroid/app/Activity;

    iput-object p2, p0, Lcom/example/luckywheel/ui/d;->u:Lcom/example/luckywheel/ui/f;

    return-void
.end method

.method public static a(I)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/example/luckywheel/ui/d;->g()V

    sget v1, Lcom/example/luckywheel/ui/d;->j:I

    if-gt v1, p0, :cond_1

    const/4 v0, 0x5

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/example/luckywheel/ui/d;->h:I

    if-gt v1, p0, :cond_2

    sget v1, Lcom/example/luckywheel/ui/d;->i:I

    if-ge p0, v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    sget v1, Lcom/example/luckywheel/ui/d;->f:I

    if-gt v1, p0, :cond_3

    sget v1, Lcom/example/luckywheel/ui/d;->g:I

    if-ge p0, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    sget v1, Lcom/example/luckywheel/ui/d;->d:I

    if-gt v1, p0, :cond_4

    sget v1, Lcom/example/luckywheel/ui/d;->e:I

    if-ge p0, v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    sget v1, Lcom/example/luckywheel/ui/d;->a:I

    if-gt v1, p0, :cond_0

    sget v1, Lcom/example/luckywheel/ui/d;->c:I

    if-ge p0, v1, :cond_0

    goto :goto_0
.end method

.method private a(IILcom/example/luckywheel/ui/h;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/example/luckywheel/ui/h;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ltz p2, :cond_3

    const/4 v0, 0x4

    if-le p2, v0, :cond_4

    :cond_3
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/example/luckywheel/ui/h;->a()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_1
    if-eqz v0, :cond_1

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Lcom/example/luckywheel/ui/s;

    invoke-direct {v3, p0, v1, v2, p3}, Lcom/example/luckywheel/ui/s;-><init>(Lcom/example/luckywheel/ui/d;IILcom/example/luckywheel/ui/h;)V

    invoke-direct {p0, v0, v3}, Lcom/example/luckywheel/ui/d;->a(Landroid/widget/ImageView;Lcom/example/luckywheel/ui/h;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/example/luckywheel/ui/d;->k:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/example/luckywheel/ui/d;->l:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/example/luckywheel/ui/d;->m:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/example/luckywheel/ui/d;->n:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/example/luckywheel/ui/d;->o:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/widget/ImageView;Lcom/example/luckywheel/ui/h;)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/example/luckywheel/ui/h;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/whatscall/luckywheel/R$drawable;->star_filled:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/d;->t:Landroid/app/Activity;

    sget v1, Lcom/whatscall/luckywheel/R$anim;->star_twinkle:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/example/luckywheel/ui/t;

    invoke-direct {v1, p0, p2}, Lcom/example/luckywheel/ui/t;-><init>(Lcom/example/luckywheel/ui/d;Lcom/example/luckywheel/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/example/luckywheel/ui/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ui/d;->f()V

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/ui/d;IILcom/example/luckywheel/ui/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/example/luckywheel/ui/d;->a(IILcom/example/luckywheel/ui/h;)V

    return-void
.end method

.method private b(I)V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/example/luckywheel/ui/o;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ui/o;-><init>(Lcom/example/luckywheel/ui/d;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/example/luckywheel/ui/d;->a(IILcom/example/luckywheel/ui/h;)V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/whatscall/luckywheel/R$id;->score_star_1:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/d;->k:Landroid/widget/ImageView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->score_star_2:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/d;->l:Landroid/widget/ImageView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->score_star_3:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/d;->m:Landroid/widget/ImageView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->score_star_4:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/d;->n:Landroid/widget/ImageView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->score_star_5:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/d;->o:Landroid/widget/ImageView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->scale_star_text_view:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/luckywheel/ui/d;->q:Landroid/widget/TextView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->score_star_layout:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/example/luckywheel/ui/d;->p:Landroid/widget/LinearLayout;

    return-void
.end method

.method private e()V
    .locals 2

    iget v0, p0, Lcom/example/luckywheel/ui/d;->r:I

    invoke-static {v0}, Lcom/example/luckywheel/ui/d;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/example/luckywheel/ui/d;->t:Landroid/app/Activity;

    invoke-static {v1}, Lcom/example/luckywheel/d/d;->a(Landroid/content/Context;)Lcom/example/luckywheel/d/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/example/luckywheel/d/d;->b(I)V

    invoke-direct {p0, v0}, Lcom/example/luckywheel/ui/d;->b(I)V

    return-void
.end method

.method private f()V
    .locals 12

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/example/luckywheel/ui/d;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    const/4 v2, 0x2

    new-array v3, v2, [I

    iget-object v2, p0, Lcom/example/luckywheel/ui/d;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    const v2, 0x3e4ccccd    # 0.2f

    aget v4, v3, v6

    aget v6, v0, v6

    sub-int/2addr v4, v6

    aget v3, v3, v10

    aget v0, v0, v10

    sub-int v0, v3, v0

    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v4

    div-float/2addr v4, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-direct {v3, v11, v4, v11, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/example/luckywheel/ui/r;

    invoke-direct {v0, p0}, Lcom/example/luckywheel/ui/r;-><init>(Lcom/example/luckywheel/ui/d;)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/d;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static g()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v0, 0x0

    const-string v1, "0,1|1,3|3,9|9,20|20"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ne v2, v7, :cond_0

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    if-eq v0, v6, :cond_3

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    sput v3, Lcom/example/luckywheel/ui/d;->a:I

    sput v2, Lcom/example/luckywheel/ui/d;->c:I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    sput v3, Lcom/example/luckywheel/ui/d;->d:I

    sput v2, Lcom/example/luckywheel/ui/d;->e:I

    goto :goto_2

    :pswitch_2
    sput v3, Lcom/example/luckywheel/ui/d;->f:I

    sput v2, Lcom/example/luckywheel/ui/d;->g:I

    goto :goto_2

    :pswitch_3
    sput v3, Lcom/example/luckywheel/ui/d;->h:I

    sput v2, Lcom/example/luckywheel/ui/d;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    array-length v3, v2

    if-ne v3, v5, :cond_2

    if-ne v0, v6, :cond_2

    const/4 v3, 0x0

    :try_start_1
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/example/luckywheel/ui/d;->j:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/example/luckywheel/ui/d;->s:J

    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/example/luckywheel/ui/d;->s:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/example/luckywheel/ui/d;->r:I

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/example/luckywheel/d/d;->a(Landroid/content/Context;)Lcom/example/luckywheel/d/d;

    move-result-object v0

    iget v1, p0, Lcom/example/luckywheel/ui/d;->r:I

    invoke-virtual {v0, v1}, Lcom/example/luckywheel/d/d;->a(I)V

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/d;->show()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/example/luckywheel/ui/c;->dismiss()V

    iget-object v0, p0, Lcom/example/luckywheel/ui/d;->u:Lcom/example/luckywheel/ui/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/d;->u:Lcom/example/luckywheel/ui/f;

    invoke-interface {v0}, Lcom/example/luckywheel/ui/f;->a()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/example/luckywheel/ui/c;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/whatscall/luckywheel/R$layout;->dialog_five_star:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/d;->setContentView(I)V

    invoke-direct {p0}, Lcom/example/luckywheel/ui/d;->d()V

    invoke-direct {p0}, Lcom/example/luckywheel/ui/d;->e()V

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
