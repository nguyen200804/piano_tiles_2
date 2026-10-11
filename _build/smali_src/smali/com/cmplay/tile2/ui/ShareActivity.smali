.class public Lcom/cmplay/tile2/ui/ShareActivity;
.super Landroid/app/Activity;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cmplay/h/f$a;
.implements Lcom/cmplay/util/z$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/tile2/ui/ShareActivity$a;
    }
.end annotation


# static fields
.field private static u:I


# instance fields
.field private a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/graphics/Typeface;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/cmplay/tile2/ui/view/CircularImageView;

.field private k:Lcom/cmplay/tile2/ui/view/ScoreRankView;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Lcom/cmplay/util/z;

.field private o:Landroid/widget/PopupWindow;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:J

.field private v:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x320

    sput v0, Lcom/cmplay/tile2/ui/ShareActivity;->u:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->a:I

    .line 66
    iput-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->d:Landroid/graphics/Typeface;

    .line 75
    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->l:Z

    .line 77
    iput-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->n:Lcom/cmplay/util/z;

    .line 78
    iput-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    .line 79
    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->p:Z

    .line 81
    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->q:Z

    .line 83
    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->r:Z

    .line 86
    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->s:Z

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->t:J

    .line 370
    new-instance v0, Lcom/cmplay/tile2/ui/ShareActivity$1;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/ShareActivity$1;-><init>(Lcom/cmplay/tile2/ui/ShareActivity;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->v:Landroid/os/Handler;

    .line 462
    return-void
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method private a()V
    .locals 6

    .prologue
    const v5, 0x7f020039

    const/4 v1, 0x1

    .line 125
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->c:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->b:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Landroid/widget/TextView;)V

    .line 129
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Landroid/widget/TextView;)V

    .line 131
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/cmplay/h/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    const-string v2, "share_title"

    invoke-static {v2}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->f:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->g:Landroid/widget/ImageView;

    .line 138
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->h:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/view/CircularImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->j:Lcom/cmplay/tile2/ui/view/CircularImageView;

    .line 140
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->i:Landroid/widget/ImageView;

    .line 142
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    iget-boolean v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->s:Z

    if-nez v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 145
    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    const/16 v2, 0x32

    invoke-static {v2}, Lcom/cmplay/util/e;->a(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 147
    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->a:I

    if-ne v1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->j:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :goto_0
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/view/ScoreRankView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->k:Lcom/cmplay/tile2/ui/view/ScoreRankView;

    .line 162
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->e()I

    move-result v3

    .line 163
    const/4 v0, 0x4

    if-ge v3, v0, :cond_2

    move v2, v1

    .line 164
    :goto_1
    if-eqz v2, :cond_3

    rem-int/lit8 v0, v3, 0x4

    move v1, v0

    .line 165
    :goto_2
    if-eqz v2, :cond_4

    const v0, 0x7f0200db

    .line 166
    :goto_3
    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->k:Lcom/cmplay/tile2/ui/view/ScoreRankView;

    invoke-virtual {v2, v0, v1}, Lcom/cmplay/tile2/ui/view/ScoreRankView;->a(II)V

    .line 168
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->j:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {v0, p0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->j:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/cmplay/util/e;->a(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 157
    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->j:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 163
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    .line 164
    :cond_3
    add-int/lit8 v0, v3, -0x3

    move v1, v0

    goto :goto_2

    .line 165
    :cond_4
    const v0, 0x7f0200d9

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 118
    const-string v0, "ShareActivity"

    const-string v1, "invokeActivity"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string v1, "show_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 577
    if-eqz p1, :cond_0

    .line 578
    const-string v0, "show_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->a:I

    .line 580
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 418
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 419
    const-string v1, "alpha"

    new-array v2, v7, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 420
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 421
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 422
    const-string v2, "scaleX"

    new-array v3, v7, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 423
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 424
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 425
    const-string v3, "scaleY"

    new-array v4, v7, [F

    fill-array-data v4, :array_2

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 426
    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 427
    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 428
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 429
    new-array v4, v7, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    aput-object v3, v4, v8

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 430
    new-instance v1, Lcom/cmplay/tile2/ui/ShareActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/tile2/ui/ShareActivity$a;-><init>(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 419
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 422
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 425
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 352
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 356
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    .line 358
    :cond_1
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    .line 360
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 361
    const v0, 0x7f080144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 362
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Landroid/widget/TextView;)V

    .line 364
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->d:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Futura condensed.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->d:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->d:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->d:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 192
    :cond_1
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v1, "ShareActivity"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmplay/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->d:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/ShareActivity;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 233
    const-string v0, "share_CD_bg.jpg"

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 237
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->j:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 445
    :goto_0
    return-void

    .line 439
    :cond_0
    const-string v0, "rotation"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 440
    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 441
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 442
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 443
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 444
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 439
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method static synthetic c(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->j:Lcom/cmplay/tile2/ui/view/CircularImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setVisibility(I)V

    .line 243
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_0
    const/16 v4, 0x1f4

    .line 457
    new-instance v0, Lcom/cmplay/util/l;

    const/16 v2, 0x5dc

    const/4 v3, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cmplay/util/l;-><init>(Landroid/view/View;IIIF)V

    .line 458
    invoke-virtual {v0}, Lcom/cmplay/util/l;->a()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->v:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->n:Lcom/cmplay/util/z;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lcom/cmplay/util/z;

    invoke-direct {v0, p0}, Lcom/cmplay/util/z;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->n:Lcom/cmplay/util/z;

    .line 298
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->n:Lcom/cmplay/util/z;

    invoke-virtual {v0, p0}, Lcom/cmplay/util/z;->a(Lcom/cmplay/util/z$a;)V

    .line 300
    :cond_0
    return-void
.end method

.method private e()I
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Lcom/cmplay/util/i;->e()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/cmplay/tile2/ui/ShareActivity;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->p:Z

    return v0
.end method

.method private f()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 512
    .line 516
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 518
    iget-boolean v1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->s:Z

    if-eqz v1, :cond_0

    .line 520
    const-string v1, "res/UI/UIPlist/bg_share_xmas.png"

    .line 521
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 522
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v2, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 523
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1f

    div-int/lit8 v4, v4, 0x28

    .line 524
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1f

    div-int/lit8 v5, v5, 0x28

    .line 525
    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 542
    :goto_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 546
    invoke-static {v2}, Lcom/cmplay/util/g;->a(Ljava/io/Closeable;)V

    .line 548
    :goto_1
    return-object v0

    .line 528
    :cond_0
    const/4 v1, 0x1

    :try_start_2
    iget v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->a:I

    if-ne v1, v2, :cond_1

    .line 529
    const-string v1, "res/UI/UIPlist/bg_share_star_special_music.png"

    .line 530
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 531
    const/4 v1, 0x0

    :try_start_3
    invoke-static {v2, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 532
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 546
    invoke-static {v2}, Lcom/cmplay/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 534
    :cond_1
    :try_start_5
    const-string v1, "res/UI/UIPlist/bg_share_star.png"

    .line 535
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    .line 536
    const/4 v1, 0x0

    :try_start_6
    invoke-static {v2, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 537
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v4, v3, 0x5

    .line 538
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v5, v3, 0x5

    .line 539
    new-instance v3, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcom/cmplay/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    .line 543
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method static synthetic f(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 558
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 559
    const/16 v1, 0x1707

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 568
    :cond_0
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 334
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 336
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 337
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->j:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->q:Z

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->v:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 342
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->j:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->b(Landroid/view/View;)V

    .line 345
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 310
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 311
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/h/f;->a(IILandroid/content/Intent;)V

    .line 313
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->n:Lcom/cmplay/util/z;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->n:Lcom/cmplay/util/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/util/z;->a(IILandroid/content/Intent;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 292
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onShareH5ViewClosed()V

    .line 293
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 247
    const/4 v0, -0x1

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 277
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 278
    if-lez v0, :cond_0

    iget-wide v4, p0, Lcom/cmplay/tile2/ui/ShareActivity;->t:J

    sub-long v4, v2, v4

    sget v1, Lcom/cmplay/tile2/ui/ShareActivity;->u:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 279
    iput-wide v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->t:J

    .line 280
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cmplay/h/f;->a(Lcom/cmplay/h/f$a;)V

    .line 281
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getScore()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/tile2/ui/ShareActivity;->m:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/cmplay/h/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "clk_share_btn_h5_pg"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 286
    :cond_0
    return-void

    .line 250
    :sswitch_0
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->d()V

    .line 251
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->n:Lcom/cmplay/util/z;

    invoke-virtual {v1}, Lcom/cmplay/util/z;->c()V

    .line 252
    iput-boolean v5, p0, Lcom/cmplay/tile2/ui/ShareActivity;->l:Z

    goto :goto_0

    .line 256
    :sswitch_1
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onShareH5ViewClosed()V

    .line 258
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "clk_quit_chg_cd_cover_pg"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/cmplay/h/d;->c()I

    move-result v1

    invoke-static {v1}, Lcom/cmplay/h/b;->b(I)I

    move-result v1

    .line 260
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v2

    const/16 v3, 0x18d3

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 261
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->finish()V

    goto :goto_0

    .line 264
    :sswitch_2
    iput-boolean v5, p0, Lcom/cmplay/tile2/ui/ShareActivity;->p:Z

    .line 265
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->d()V

    .line 266
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->n:Lcom/cmplay/util/z;

    invoke-virtual {v1}, Lcom/cmplay/util/z;->a()V

    goto :goto_0

    .line 269
    :sswitch_3
    iput-boolean v5, p0, Lcom/cmplay/tile2/ui/ShareActivity;->p:Z

    .line 270
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->d()V

    .line 271
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->n:Lcom/cmplay/util/z;

    invoke-virtual {v1}, Lcom/cmplay/util/z;->c()V

    goto :goto_0

    .line 274
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x7f080028 -> :sswitch_0
        0x7f08002b -> :sswitch_4
        0x7f08002c -> :sswitch_1
        0x7f080040 -> :sswitch_3
        0x7f080041 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 96
    invoke-virtual {p0, v2}, Lcom/cmplay/tile2/ui/ShareActivity;->setContentView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Landroid/content/Intent;)V

    .line 98
    iput-boolean v1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->s:Z

    .line 99
    sget-object v3, Lcom/cmplay/h/d;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/cmplay/tile2/ui/ShareActivity;->m:Ljava/lang/String;

    .line 100
    const-string v3, "key_is_first_shared"

    invoke-static {v3, v0}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmplay/h/f;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->l:Z

    .line 101
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->a()V

    .line 102
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/h/f;->a(Lcom/cmplay/h/f$a;)V

    .line 104
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/app/Activity;)V

    .line 105
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    sget-object v1, Lcom/cmplay/h/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmplay/util/p;->a(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/p;->b()V

    .line 108
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "active_share_activity"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->f()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    return-void

    :cond_0
    move v0, v1

    .line 100
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 322
    const-string v0, "ShareActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmplay/h/f;->a(Lcom/cmplay/h/f$a;)V

    .line 324
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/h/f;->c()V

    .line 325
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->l:Z

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "key_is_first_shared"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 328
    :cond_0
    iput-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity;->n:Lcom/cmplay/util/z;

    .line 329
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 573
    invoke-direct {p0, p1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Landroid/content/Intent;)V

    .line 574
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 216
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->g()V

    .line 217
    invoke-static {p0}, Lcom/b/a/a/a;->a(Landroid/content/Context;)V

    .line 218
    const-string v0, "ShareActivity onPause"

    invoke-static {v0, p0}, Lcom/cmplay/util/o;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 219
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->v:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 223
    :cond_0
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/p;->c()V

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 197
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->g()V

    .line 198
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->c()V

    .line 199
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ShareActivity;->b()V

    .line 200
    invoke-static {p0}, Lcom/b/a/a/a;->b(Landroid/content/Context;)V

    .line 201
    const-string v0, "ShareActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "ShareActivity onResume "

    invoke-static {v0, p0}, Lcom/cmplay/util/o;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 203
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->j:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->b(Landroid/view/View;)V

    .line 204
    const/4 v0, 0x1

    iget v1, p0, Lcom/cmplay/tile2/ui/ShareActivity;->a:I

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/ShareActivity;->c(Landroid/view/View;)V

    .line 211
    :goto_0
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/p;->d()V

    .line 212
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 229
    const-string v0, "ShareActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method
