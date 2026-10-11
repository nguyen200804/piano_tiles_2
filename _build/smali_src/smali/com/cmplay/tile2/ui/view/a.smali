.class public Lcom/cmplay/tile2/ui/view/a;
.super Landroid/widget/LinearLayout;
.source "ADLoadingTipsView.java"


# static fields
.field private static g:Lcom/cmplay/tile2/ui/view/a;

.field private static h:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/tile2/ui/view/a;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/cmplay/tile2/ui/view/a;->a:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/a;->e()V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 195
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 196
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 197
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 199
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 200
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 201
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 202
    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 204
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 205
    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/view/a;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/a;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static a(IZZ)V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v1, 0x0

    .line 126
    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 128
    if-nez v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    sput-boolean p2, Lcom/cmplay/tile2/ui/view/a;->h:Z

    .line 131
    const/4 v0, 0x1

    .line 132
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_2

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 137
    :cond_2
    sget-object v3, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    if-nez v3, :cond_0

    .line 144
    new-instance v3, Lcom/cmplay/tile2/ui/view/a;

    invoke-direct {v3, v2}, Lcom/cmplay/tile2/ui/view/a;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    .line 146
    if-eqz p1, :cond_3

    .line 147
    sget-object v3, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cmplay/tile2/ui/view/a;->a(Ljava/lang/String;)V

    .line 150
    :cond_3
    invoke-static {v2}, Lcom/cmplay/util/y;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 151
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v3, p0}, Landroid/widget/Toast;->setDuration(I)V

    .line 153
    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {v3, v6, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 158
    :goto_1
    sget-object v0, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 159
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {v3, v6, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 161
    :cond_5
    sget-object v0, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/a;->setBackgroundResource(I)V

    .line 163
    invoke-static {v2}, Lcom/cmplay/tile2/ui/view/a;->a(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 165
    const-string v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 168
    :try_start_0
    sget-object v3, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    invoke-interface {v0, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_2
    sget-object v1, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    new-instance v3, Lcom/cmplay/tile2/ui/view/a$2;

    invoke-direct {v3, v0, v2}, Lcom/cmplay/tile2/ui/view/a$2;-><init>(Landroid/view/WindowManager;Landroid/content/Context;)V

    int-to-long v4, p0

    invoke-virtual {v1, v3, v4, v5}, Lcom/cmplay/tile2/ui/view/a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 25
    sput-boolean p0, Lcom/cmplay/tile2/ui/view/a;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/cmplay/tile2/ui/view/a;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/a;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 108
    if-eqz v0, :cond_0

    sget-object v1, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    :try_start_0
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 113
    sget-object v1, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/tile2/ui/view/a;->h:Z

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c()Lcom/cmplay/tile2/ui/view/a;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    return-object v0
.end method

.method static synthetic c(Lcom/cmplay/tile2/ui/view/a;)Lcom/cmplay/tile2/ui/view/a;
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/cmplay/tile2/ui/view/a;->g:Lcom/cmplay/tile2/ui/view/a;

    return-object p0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/cmplay/tile2/ui/view/a;->h:Z

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030050

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/a;->b:Landroid/widget/LinearLayout;

    .line 51
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/a;->c:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/a;->d:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/a;->e:Landroid/widget/LinearLayout;

    .line 55
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/a;->f:Landroid/widget/TextView;

    .line 56
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/a;->f()V

    .line 57
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 64
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const v1, 0x43b38000    # 359.0f

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 65
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 66
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 68
    sget-boolean v1, Lcom/cmplay/tile2/ui/view/a;->h:Z

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 73
    :goto_0
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 74
    iget-object v1, p0, Lcom/cmplay/tile2/ui/view/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 75
    iget-object v1, p0, Lcom/cmplay/tile2/ui/view/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 77
    new-instance v1, Lcom/cmplay/tile2/ui/view/a$1;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/view/a$1;-><init>(Lcom/cmplay/tile2/ui/view/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 94
    return-void

    .line 71
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    goto :goto_0
.end method
