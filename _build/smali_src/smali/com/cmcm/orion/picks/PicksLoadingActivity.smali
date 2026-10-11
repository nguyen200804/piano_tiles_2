.class public Lcom/cmcm/orion/picks/PicksLoadingActivity;
.super Landroid/app/Activity;
.source "PicksLoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/PicksLoadingActivity$a;
    }
.end annotation


# static fields
.field public static a:Z

.field static b:Landroid/os/Handler;

.field private static final c:Ljava/lang/String;

.field private static d:Landroid/widget/ProgressBar;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-class v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->c:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a:Z

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->e:I

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 176
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->e:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->e:I

    add-int/2addr v0, p0

    sput v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->e:I

    return v0
.end method

.method private static a(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const-string v0, "[null]"

    .line 81
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 47
    const-string v2, ""

    .line 48
    const-string v1, ""

    move-object v3, v1

    move v1, v0

    .line 49
    :goto_0
    if-ge v1, p2, :cond_0

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    if-nez p1, :cond_2

    .line 73
    :cond_1
    return-object v2

    .line 57
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v1

    move v1, v0

    .line 61
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 64
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    add-int/lit8 v4, p2, 0x1

    invoke-direct {p0, v0, v4}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a(Landroid/view/ViewGroup;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 68
    :cond_4
    if-eqz v0, :cond_3

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private a(IIZ)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 202
    if-eqz p3, :cond_1

    .line 203
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 205
    :cond_1
    new-instance v1, Lcom/cmcm/orion/picks/PicksLoadingActivity$2;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/PicksLoadingActivity$2;-><init>(Lcom/cmcm/orion/picks/PicksLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 215
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a(Landroid/content/Context;I)V

    .line 86
    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcm/orion/picks/PicksLoadingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    if-nez p1, :cond_0

    .line 100
    sput-boolean v2, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a:Z

    .line 104
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void

    .line 102
    :cond_0
    const-string v1, "tag_close_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/PicksLoadingActivity;)V
    .locals 4

    .prologue
    const/16 v3, 0x5e

    .line 26
    .line 1168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1169
    sget v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->e:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a(IIZ)V

    :goto_0
    return-void

    .line 1172
    :cond_0
    sget-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cmcm/orion/picks/PicksLoadingActivity$a;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v2}, Lcom/cmcm/orion/picks/PicksLoadingActivity$a;-><init>(II)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic b(I)I
    .locals 0

    .prologue
    .line 26
    sput p0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->e:I

    return p0
.end method

.method static synthetic b()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 91
    const/16 v0, 0x64

    sput v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->e:I

    .line 92
    sget-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    sget v1, Lcom/cmcm/orion/picks/PicksLoadingActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 94
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a(Landroid/content/Context;I)V

    .line 95
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tag_close_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->finish()V

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->requestWindowFeature(I)Z

    .line 120
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->requestWindowFeature(I)Z

    .line 121
    sget v0, Lcom/cmcm/orion/adsdk/R$layout;->cm_picks_loading:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->setContentView(I)V

    .line 122
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a(Landroid/view/ViewGroup;I)Ljava/lang/String;

    .line 1130
    :try_start_0
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->wait_progressbar:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1131
    sput-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1133
    sget-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1153
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a(IIZ)V

    .line 1158
    :goto_2
    sget-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cmcm/orion/picks/PicksLoadingActivity$1;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/PicksLoadingActivity$1;-><init>(Lcom/cmcm/orion/picks/PicksLoadingActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1136
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->finish()V

    goto :goto_1

    .line 1156
    :cond_1
    sget-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cmcm/orion/picks/PicksLoadingActivity$a;

    const/16 v2, 0x8

    invoke-direct {v1, v3, v2}, Lcom/cmcm/orion/picks/PicksLoadingActivity$a;-><init>(II)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 224
    const/4 v0, 0x0

    sput v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->e:I

    .line 225
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    .line 226
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 144
    const-string v0, "tag_close_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->finish()V

    .line 147
    :cond_0
    return-void
.end method
