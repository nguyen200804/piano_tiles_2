.class public Lcom/cmplay/base/util/a;
.super Landroid/widget/LinearLayout;
.source "ADLoadingTipsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/a$a;
    }
.end annotation


# static fields
.field private static g:Lcom/cmplay/base/util/a;

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
    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/base/util/a;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/cmplay/base/util/a;->a:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/cmplay/base/util/a;->d()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/cmplay/base/util/a;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmplay/base/util/a;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 112
    if-eqz p0, :cond_0

    sget-object v0, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 117
    sget-object v1, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    .line 122
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/base/util/a;->h:Z

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;IZZ)V
    .locals 2

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 197
    new-instance v1, Lcom/cmplay/base/util/a$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cmplay/base/util/a$3;-><init>(Landroid/content/Context;IZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cmplay/base/util/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

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
    sput-boolean p0, Lcom/cmplay/base/util/a;->h:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 209
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 210
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 211
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 213
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 214
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 215
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 216
    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 218
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 219
    return-object v0
.end method

.method static synthetic b(Lcom/cmplay/base/util/a;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmplay/base/util/a;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b()Lcom/cmplay/base/util/a;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;IZZ)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0, p1, p2, p3}, Lcom/cmplay/base/util/a;->c(Landroid/content/Context;IZZ)V

    return-void
.end method

.method static synthetic c(Lcom/cmplay/base/util/a;)Lcom/cmplay/base/util/a;
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    return-object p0
.end method

.method private static c(Landroid/content/Context;IZZ)V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v1, 0x0

    .line 130
    sput-boolean p3, Lcom/cmplay/base/util/a;->h:Z

    .line 132
    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 134
    if-eqz v2, :cond_0

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 138
    :cond_0
    sget-object v2, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    if-eqz v2, :cond_1

    .line 192
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v2, Lcom/cmplay/base/util/a;

    invoke-direct {v2, p0}, Lcom/cmplay/base/util/a;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    .line 147
    if-eqz p2, :cond_2

    .line 148
    sget-object v2, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cmplay/base/util/R$string;->message_tag_luck_skip_ad:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cmplay/base/util/a;->a(Ljava/lang/String;)V

    .line 151
    :cond_2
    invoke-static {p0}, Lcom/cmplay/base/util/p;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v2, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 154
    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {v2, v5, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 159
    :goto_1
    sget-object v0, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v2, v5, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 162
    :cond_4
    sget-object v0, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    sget v1, Lcom/cmplay/base/util/R$drawable;->message_tag_tips_bg:I

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/a;->setBackgroundResource(I)V

    .line 164
    invoke-static {p0}, Lcom/cmplay/base/util/a;->b(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 166
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 169
    :try_start_0
    sget-object v2, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_2
    sget-object v1, Lcom/cmplay/base/util/a;->g:Lcom/cmplay/base/util/a;

    new-instance v2, Lcom/cmplay/base/util/a$2;

    invoke-direct {v2, v0, p0}, Lcom/cmplay/base/util/a$2;-><init>(Landroid/view/WindowManager;Landroid/content/Context;)V

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Lcom/cmplay/base/util/a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/cmplay/base/util/a;->h:Z

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cmplay/base/util/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cmplay/base/util/R$layout;->com_cmplay_message_tag_ad_loading_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget v0, Lcom/cmplay/base/util/R$id;->loading_layout:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmplay/base/util/a;->b:Landroid/widget/LinearLayout;

    .line 51
    sget v0, Lcom/cmplay/base/util/R$id;->loading_cicle:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/base/util/a;->c:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcom/cmplay/base/util/R$id;->loading_tv:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/base/util/a;->d:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/cmplay/base/util/R$id;->tips_layout:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmplay/base/util/a;->e:Landroid/widget/LinearLayout;

    .line 55
    sget v0, Lcom/cmplay/base/util/R$id;->msg_toast_text:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/base/util/a;->f:Landroid/widget/TextView;

    .line 56
    invoke-direct {p0}, Lcom/cmplay/base/util/a;->e()V

    .line 57
    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 64
    const-string v0, "translationX"

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 65
    const-string v1, "translationY"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 66
    const-string v2, "rotation"

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/cmplay/base/util/a;->c:Landroid/widget/ImageView;

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v7

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/cmplay/base/util/a$a;

    invoke-direct {v1, p0}, Lcom/cmplay/base/util/a$a;-><init>(Lcom/cmplay/base/util/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    sget-boolean v1, Lcom/cmplay/base/util/a;->h:Z

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 74
    :goto_0
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 75
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 77
    new-instance v1, Lcom/cmplay/base/util/a$1;

    invoke-direct {v1, p0}, Lcom/cmplay/base/util/a$1;-><init>(Lcom/cmplay/base/util/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_0

    .line 64
    nop

    :array_0
    .array-data 4
        -0x3db80000    # -50.0f
        0x42480000    # 50.0f
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x0
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    .line 66
    :array_2
    .array-data 4
        -0x3dcc0000    # -45.0f
        0x42340000    # 45.0f
    .end array-data
.end method
