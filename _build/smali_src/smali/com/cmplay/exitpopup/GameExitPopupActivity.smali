.class public Lcom/cmplay/exitpopup/GameExitPopupActivity;
.super Landroid/app/Activity;
.source "GameExitPopupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Z

.field private o:I

.field private p:Lcom/cmplay/exitpopup/c;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->n:Z

    .line 53
    iput v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->o:I

    .line 56
    iput-boolean v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->q:Z

    .line 57
    const-string v0, "3"

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->r:Ljava/lang/String;

    .line 208
    new-instance v0, Lcom/cmplay/exitpopup/GameExitPopupActivity$3;

    invoke-direct {v0, p0}, Lcom/cmplay/exitpopup/GameExitPopupActivity$3;-><init>(Lcom/cmplay/exitpopup/GameExitPopupActivity;)V

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->s:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/cmplay/exitpopup/GameExitPopupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/cmplay/exitpopup/GameExitPopupActivity;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/cmplay/exitpopup/GameExitPopupActivity;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->n:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 202
    const/16 v1, 0x140

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 203
    invoke-virtual {p0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 205
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a:Landroid/widget/RelativeLayout;

    .line 87
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->b:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->d:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->c:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->e:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->h:Landroid/widget/RelativeLayout;

    .line 93
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->i:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->j:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->k:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->l:Landroid/widget/Button;

    .line 97
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->m:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public a(Landroid/content/Intent;Lcom/cmplay/exitpopup/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    const-string v0, "game_exit_songs_num"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->o:I

    .line 132
    const-string v0, "game_exit_playedsongs_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    iget v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->o:I

    if-gt v1, v3, :cond_3

    .line 134
    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->c:Landroid/widget/TextView;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->e:Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/widget/TextView;)V

    .line 142
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/widget/TextView;)V

    .line 145
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p2, Lcom/cmplay/exitpopup/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->f:Landroid/graphics/Bitmap;

    .line 148
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    :cond_2
    return-void

    .line 137
    :cond_3
    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->c:Landroid/widget/TextView;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_4
    aget-object v1, v0, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->e:Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;FF)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 271
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v2, p2

    move v3, v1

    move v4, p3

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 272
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 273
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 274
    new-instance v1, Lcom/cmplay/exitpopup/GameExitPopupActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/exitpopup/GameExitPopupActivity$4;-><init>(Lcom/cmplay/exitpopup/GameExitPopupActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 293
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    const-string v0, "zzb_pop_exit"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;-><init>(Lcom/cmplay/exitpopup/GameExitPopupActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public a(Lcom/cmplay/exitpopup/c;)V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->i:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/cmplay/exitpopup/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Try our other games"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    iget-object v0, v0, Lcom/cmplay/exitpopup/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->g:Landroid/graphics/Bitmap;

    .line 157
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    iget-object v0, v0, Lcom/cmplay/exitpopup/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/widget/TextView;)V

    .line 164
    iget-object v0, p1, Lcom/cmplay/exitpopup/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->l:Landroid/widget/Button;

    iget-object v0, p1, Lcom/cmplay/exitpopup/c;->e:Ljava/lang/String;

    const-string v2, "||"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/cmplay/exitpopup/c;->e:Ljava/lang/String;

    const-string v2, "\\|\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->m:Landroid/widget/Button;

    iget-object v0, p1, Lcom/cmplay/exitpopup/c;->e:Ljava/lang/String;

    const-string v2, "||"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/cmplay/exitpopup/c;->e:Ljava/lang/String;

    const-string v2, "\\|\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->l:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/widget/TextView;)V

    .line 168
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->m:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/widget/TextView;)V

    .line 170
    :cond_1
    return-void

    .line 154
    :cond_2
    iget-object v0, p1, Lcom/cmplay/exitpopup/c;->c:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    iget-object v0, v0, Lcom/cmplay/exitpopup/c;->d:Ljava/lang/String;

    goto :goto_1

    .line 165
    :cond_4
    iget-object v0, p1, Lcom/cmplay/exitpopup/c;->e:Ljava/lang/String;

    goto :goto_2

    .line 166
    :cond_5
    iget-object v0, p1, Lcom/cmplay/exitpopup/c;->e:Ljava/lang/String;

    goto :goto_3
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->finish()V

    .line 123
    :goto_0
    return-void

    .line 112
    :cond_0
    iput-boolean v3, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->n:Z

    .line 113
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    new-instance v1, Lcom/cmplay/exitpopup/c;

    const-string v2, "game_exit_data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cmplay/exitpopup/c;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    .line 117
    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/content/Intent;Lcom/cmplay/exitpopup/c;)V

    .line 118
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Lcom/cmplay/exitpopup/c;)V

    .line 120
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/view/View;FF)V

    .line 122
    new-instance v0, Lcom/cmplay/exitpopup/d;

    invoke-direct {v0}, Lcom/cmplay/exitpopup/d;-><init>()V

    const/16 v1, 0x40f

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    invoke-virtual {v4}, Lcom/cmplay/exitpopup/c;->d()J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->o:I

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/cmplay/exitpopup/d;->a(IIIIILjava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 250
    const-string v0, "1"

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->r:Ljava/lang/String;

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 252
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x40f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 229
    :sswitch_0
    iput-boolean v3, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->q:Z

    .line 230
    new-instance v0, Lcom/cmplay/exitpopup/d;

    invoke-direct {v0}, Lcom/cmplay/exitpopup/d;-><init>()V

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    invoke-virtual {v4}, Lcom/cmplay/exitpopup/c;->d()J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->o:I

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/cmplay/exitpopup/d;->a(IIIIILjava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/cmplay/exitpopup/a;->a()Lcom/cmplay/exitpopup/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    invoke-virtual {v0, p0, v1}, Lcom/cmplay/exitpopup/a;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 232
    invoke-virtual {p0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->finish()V

    goto :goto_0

    .line 235
    :sswitch_1
    const-string v0, "2"

    iput-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->r:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/cmplay/exitpopup/a;->a()Lcom/cmplay/exitpopup/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    invoke-virtual {v0, p0, v1}, Lcom/cmplay/exitpopup/a;->b(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 237
    invoke-virtual {p0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->finish()V

    goto :goto_0

    .line 240
    :sswitch_2
    iput-boolean v3, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->q:Z

    .line 241
    new-instance v0, Lcom/cmplay/exitpopup/d;

    invoke-direct {v0}, Lcom/cmplay/exitpopup/d;-><init>()V

    const/16 v3, 0x16

    iget-object v4, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    invoke-virtual {v4}, Lcom/cmplay/exitpopup/c;->d()J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->o:I

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/cmplay/exitpopup/d;->a(IIIIILjava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/cmplay/exitpopup/a;->a()Lcom/cmplay/exitpopup/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    invoke-virtual {v0, p0, v1}, Lcom/cmplay/exitpopup/a;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 243
    invoke-virtual {p0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->finish()V

    goto :goto_0

    .line 227
    :sswitch_data_0
    .sparse-switch
        0x7f0800ab -> :sswitch_1
        0x7f0800b1 -> :sswitch_0
        0x7f0800fb -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a()V

    .line 82
    invoke-virtual {p0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->b()V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-boolean v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->q:Z

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/cmplay/exitpopup/d;

    invoke-direct {v0}, Lcom/cmplay/exitpopup/d;-><init>()V

    const/16 v1, 0x40f

    const/16 v3, 0x13

    iget-object v4, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->p:Lcom/cmplay/exitpopup/c;

    invoke-virtual {v4}, Lcom/cmplay/exitpopup/c;->d()J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->o:I

    iget-object v6, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->r:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/cmplay/exitpopup/d;->a(IIIIILjava/lang/String;)V

    .line 258
    :cond_0
    iput-boolean v2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->n:Z

    .line 259
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 261
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 268
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 128
    return-void
.end method
