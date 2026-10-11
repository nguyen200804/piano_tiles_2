.class public Lcom/cmplay/tile2/ui/SongMixShareActivity;
.super Landroid/app/Activity;
.source "SongMixShareActivity.java"

# interfaces
.implements Lcom/cmplay/util/z$a;


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/cmplay/tile2/ui/view/CircularImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/cmplay/util/z;

.field private j:Z

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->i:Lcom/cmplay/util/z;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->j:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->k:J

    .line 50
    iput-object v2, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->l:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->m:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v1, "extra_share_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->l:Ljava/lang/String;

    .line 86
    const-string v1, "extra_share_desc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 58
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    :cond_0
    const-string v1, "extra_share_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "extra_share_desc"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v0, "rotation"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 209
    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 210
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 211
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 212
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 208
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/SongMixShareActivity;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->j:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/view/CircularImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->b:Lcom/cmplay/tile2/ui/view/CircularImageView;

    .line 91
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->c:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->d:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->e:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->e:Landroid/widget/TextView;

    const-string v1, "shareh5_cm_button_valentine"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/cmplay/tile2/ui/SongMixShareActivity$1;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity$1;-><init>(Lcom/cmplay/tile2/ui/SongMixShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->f:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/cmplay/tile2/ui/SongMixShareActivity$2;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity$2;-><init>(Lcom/cmplay/tile2/ui/SongMixShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->g:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/cmplay/tile2/ui/SongMixShareActivity$3;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity$3;-><init>(Lcom/cmplay/tile2/ui/SongMixShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->h:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/cmplay/tile2/ui/SongMixShareActivity$4;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity$4;-><init>(Lcom/cmplay/tile2/ui/SongMixShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method static synthetic b(Lcom/cmplay/tile2/ui/SongMixShareActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->e()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->i:Lcom/cmplay/util/z;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/cmplay/util/z;

    invoke-direct {v0, p0}, Lcom/cmplay/util/z;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->i:Lcom/cmplay/util/z;

    .line 168
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->i:Lcom/cmplay/util/z;

    invoke-virtual {v0, p0}, Lcom/cmplay/util/z;->a(Lcom/cmplay/util/z$a;)V

    .line 170
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/cmplay/tile2/ui/SongMixShareActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->c()V

    return-void
.end method

.method static synthetic d(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Lcom/cmplay/util/z;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->i:Lcom/cmplay/util/z;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 180
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 181
    const/16 v1, 0x1707

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 218
    invoke-static {}, Lcom/cmplay/h/d;->a()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->j:Z

    .line 222
    const-string v0, "song_mix"

    new-instance v1, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;-><init>(Lcom/cmplay/tile2/ui/SongMixShareActivity;)V

    invoke-static {v0, v1}, Lcom/cmplay/util/j;->a(Ljava/lang/String;Lcom/cmplay/util/j$a;)V

    .line 259
    return-void
.end method

.method static synthetic f(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 194
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->b:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->a:Z

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->b:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->a(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/h/f;->a(IILandroid/content/Intent;)V

    .line 160
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->i:Lcom/cmplay/util/z;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->i:Lcom/cmplay/util/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/util/z;->a(IILandroid/content/Intent;)V

    .line 163
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->a()V

    .line 70
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->b()V

    .line 71
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->d()V

    .line 72
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    sget-object v1, Lcom/cmplay/h/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmplay/util/p;->a(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/p;->b()V

    .line 75
    const/16 v0, 0x8

    sput v0, Lcom/cmplay/h/d;->m:I

    .line 76
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    .line 77
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/cmplay/h/f;->a(IIII)V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 264
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->a:Z

    .line 265
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 151
    invoke-static {p0}, Lcom/b/a/a/a;->a(Landroid/content/Context;)V

    .line 152
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/p;->c()V

    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 143
    invoke-static {p0}, Lcom/b/a/a/a;->b(Landroid/content/Context;)V

    .line 144
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/p;->d()V

    .line 145
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity;->b:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->a(Landroid/view/View;)V

    .line 146
    return-void
.end method
