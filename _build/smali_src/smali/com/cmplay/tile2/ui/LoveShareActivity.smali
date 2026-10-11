.class public Lcom/cmplay/tile2/ui/LoveShareActivity;
.super Landroid/app/Activity;
.source "LoveShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cmplay/h/f$a;
.implements Lcom/cmplay/util/z$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/tile2/ui/LoveShareActivity$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:[Ljava/lang/String;

.field private static w:I


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/cmplay/tile2/ui/view/CircularImageView;

.field private m:Landroid/support/v4/view/ViewPager;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/graphics/Bitmap;

.field private r:Lcom/cmplay/util/z;

.field private s:Lcom/cmplay/tile2/ui/LoveShareActivity$a;

.field private t:[Ljava/lang/String;

.field private u:[Ljava/lang/String;

.field private v:J

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/cmplay/tile2/ui/LoveShareActivity;->a:I

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/cmplay/tile2/ui/LoveShareActivity;->b:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x320

    sput v0, Lcom/cmplay/tile2/ui/LoveShareActivity;->w:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    .line 67
    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->s:Lcom/cmplay/tile2/ui/LoveShareActivity$a;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->v:J

    .line 494
    return-void
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/LoveShareActivity;I)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/cmplay/tile2/ui/LoveShareActivity;->d(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/LoveShareActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    const-string v1, "key_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    const-string v0, "key_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    .line 202
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 467
    :cond_0
    const-string v0, "rotation"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 468
    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 469
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 470
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 471
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 472
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 467
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private a(I)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 557
    packed-switch p1, :pswitch_data_0

    .line 590
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "share_valentine_word11"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "share_valentine_word12"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "share_valentine_word13"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "shareh5_cm_words_5"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 596
    :goto_0
    return-object v0

    .line 560
    :pswitch_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "share_valentine_word11"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "share_valentine_word12"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "share_valentine_word13"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "shareh5_cm_words_5"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 570
    :pswitch_1
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "share_valentine_word21"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "share_valentine_word22"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "share_valentine_word23"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "shareh5_cm_words_5"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 580
    :pswitch_2
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "share_valentine_word31"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "share_valentine_word32"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "share_valentine_word33"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "shareh5_cm_words_5"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(I)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 602
    packed-switch p1, :pswitch_data_0

    .line 635
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "share_valentine_word11"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "share_valentine_word12"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "share_valentine_word13"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "shareh5_cm_words_5"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 641
    :goto_0
    return-object v0

    .line 605
    :pswitch_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "share_valentine_word11"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "share_valentine_word12"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "share_valentine_word13"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "shareh5_cm_words_5"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 615
    :pswitch_1
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "share_valentine_word21"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "share_valentine_word22"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "share_valentine_word23"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "shareh5_cm_words_5"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 625
    :pswitch_2
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "share_valentine_word31"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "share_valentine_word32"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "share_valentine_word33"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "shareh5_cm_words_5"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 602
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/cmplay/tile2/ui/LoveShareActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->t:[Ljava/lang/String;

    return-object v0
.end method

.method private c(I)I
    .locals 1

    .prologue
    const v0, 0x7f070045

    .line 647
    packed-switch p1, :pswitch_data_0

    .line 655
    :goto_0
    :pswitch_0
    return v0

    .line 651
    :pswitch_1
    const v0, 0x7f070046

    goto :goto_0

    .line 653
    :pswitch_2
    const v0, 0x7f070047

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/cmplay/tile2/ui/LoveShareActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 271
    const-string v0, "share_CD_bg.jpg"

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 275
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->l:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_0
    return-void
.end method

.method private d(I)I
    .locals 1

    .prologue
    const v0, 0x7f070042

    .line 660
    packed-switch p1, :pswitch_data_0

    .line 668
    :goto_0
    :pswitch_0
    return v0

    .line 664
    :pswitch_1
    const v0, 0x7f070043

    goto :goto_0

    .line 666
    :pswitch_2
    const v0, 0x7f070044

    goto :goto_0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/cmplay/tile2/ui/LoveShareActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 384
    if-lez v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->m:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 387
    :cond_0
    return-void
.end method

.method private e(I)I
    .locals 1

    .prologue
    const v0, 0x7f0200fa

    .line 673
    packed-switch p1, :pswitch_data_0

    .line 681
    :goto_0
    :pswitch_0
    return v0

    .line 677
    :pswitch_1
    const v0, 0x7f0200fb

    goto :goto_0

    .line 679
    :pswitch_2
    const v0, 0x7f0200fc

    goto :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Lcom/cmplay/tile2/ui/LoveShareActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->m:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 391
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->t:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->m:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 394
    :cond_0
    return-void
.end method

.method private f(I)I
    .locals 1

    .prologue
    const v0, 0x7f0200ee

    .line 686
    packed-switch p1, :pswitch_data_0

    .line 694
    :goto_0
    :pswitch_0
    return v0

    .line 690
    :pswitch_1
    const v0, 0x7f0200ef

    goto :goto_0

    .line 692
    :pswitch_2
    const v0, 0x7f0200f0

    goto :goto_0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/cmplay/util/z;

    invoke-direct {v0, p0}, Lcom/cmplay/util/z;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    .line 399
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    invoke-virtual {v0, p0}, Lcom/cmplay/util/z;->a(Lcom/cmplay/util/z$a;)V

    .line 401
    :cond_0
    return-void
.end method

.method private g(I)I
    .locals 1

    .prologue
    const v0, 0x7f020102

    .line 699
    packed-switch p1, :pswitch_data_0

    .line 707
    :goto_0
    :pswitch_0
    return v0

    .line 703
    :pswitch_1
    const v0, 0x7f020103

    goto :goto_0

    .line 705
    :pswitch_2
    const v0, 0x7f020104

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private g()V
    .locals 2

    .prologue
    .line 480
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 482
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 483
    const/16 v1, 0x1707

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 492
    :cond_0
    return-void
.end method

.method private h(I)I
    .locals 1

    .prologue
    const v0, 0x7f0200f1

    .line 712
    packed-switch p1, :pswitch_data_0

    .line 720
    :goto_0
    :pswitch_0
    return v0

    .line 716
    :pswitch_1
    const v0, 0x7f0200f2

    goto :goto_0

    .line 718
    :pswitch_2
    const v0, 0x7f0200f3

    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private i(I)I
    .locals 1

    .prologue
    const v0, 0x7f0200f4

    .line 725
    packed-switch p1, :pswitch_data_0

    .line 733
    :goto_0
    :pswitch_0
    return v0

    .line 729
    :pswitch_1
    const v0, 0x7f0200f5

    goto :goto_0

    .line 731
    :pswitch_2
    const v0, 0x7f0200f6

    goto :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private j(I)I
    .locals 1

    .prologue
    const v0, 0x7f0200f7

    .line 738
    packed-switch p1, :pswitch_data_0

    .line 746
    :goto_0
    :pswitch_0
    return v0

    .line 742
    :pswitch_1
    const v0, 0x7f0200f8

    goto :goto_0

    .line 744
    :pswitch_2
    const v0, 0x7f0200f9

    goto :goto_0

    .line 738
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 104
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->d:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v2}, Lcom/cmplay/tile2/ui/LoveShareActivity;->i(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->e:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v2}, Lcom/cmplay/tile2/ui/LoveShareActivity;->j(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->c:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->f:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->g:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->h:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v2}, Lcom/cmplay/tile2/ui/LoveShareActivity;->g(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->i:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->j:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v2}, Lcom/cmplay/tile2/ui/LoveShareActivity;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->k:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v2}, Lcom/cmplay/tile2/ui/LoveShareActivity;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->o:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->o:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v2}, Lcom/cmplay/tile2/ui/LoveShareActivity;->e(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->p:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->p:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v2}, Lcom/cmplay/tile2/ui/LoveShareActivity;->h(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/view/CircularImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->l:Lcom/cmplay/tile2/ui/view/CircularImageView;

    .line 126
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v1}, Lcom/cmplay/tile2/ui/LoveShareActivity;->f(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 127
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->l:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->m:Landroid/support/v4/view/ViewPager;

    .line 129
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->n:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->n:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v2}, Lcom/cmplay/tile2/ui/LoveShareActivity;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->l:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {v0, p0}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 445
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 447
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 448
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->l:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->l:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->a(Landroid/view/View;)V

    .line 453
    :cond_1
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 142
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "active_share_activity"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/app/Activity;)V

    .line 145
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    sget-object v1, Lcom/cmplay/h/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmplay/util/p;->a(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/p;->b()V

    .line 148
    const-string v0, "shareh5_cm_dear_valentine"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const-string v0, "shareh5_cm_button_valentine"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const-string v0, "share_valentine_tit"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    sput v3, Lcom/cmplay/tile2/ui/LoveShareActivity;->a:I

    .line 158
    iget v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->a(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->t:[Ljava/lang/String;

    .line 159
    iget v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->x:I

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->b(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->u:[Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/LoveShareActivity$a;-><init>(Lcom/cmplay/tile2/ui/LoveShareActivity;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->s:Lcom/cmplay/tile2/ui/LoveShareActivity$a;

    .line 162
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->m:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->s:Lcom/cmplay/tile2/ui/LoveShareActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 163
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 164
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->m:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/cmplay/tile2/ui/LoveShareActivity$1;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/LoveShareActivity$1;-><init>(Lcom/cmplay/tile2/ui/LoveShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 190
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onShareH5ViewClosed()V

    .line 257
    const-string v0, "LoveShareActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, -0x1

    sput v0, Lcom/cmplay/tile2/ui/LoveShareActivity;->a:I

    .line 259
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 260
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 237
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 238
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/h/f;->a(IILandroid/content/Intent;)V

    .line 240
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/util/z;->a(IILandroid/content/Intent;)V

    .line 243
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/4 v0, 0x1

    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 283
    :sswitch_0
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->f()V

    .line 284
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    invoke-virtual {v0}, Lcom/cmplay/util/z;->c()V

    goto :goto_0

    .line 287
    :sswitch_1
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->f()V

    .line 288
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    invoke-virtual {v0}, Lcom/cmplay/util/z;->a()V

    goto :goto_0

    .line 291
    :sswitch_2
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->f()V

    .line 292
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    invoke-virtual {v0}, Lcom/cmplay/util/z;->c()V

    goto :goto_0

    .line 296
    :sswitch_3
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v2, "clk_quit_chg_cd_cover_pg"

    invoke-virtual {v0, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/cmplay/h/d;->c()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    .line 298
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v2

    const/16 v3, 0x18d3

    invoke-virtual {v2, v0, v3, v1, v10}, Lcom/cmplay/h/f;->a(IIII)V

    .line 299
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->finish()V

    goto :goto_0

    .line 302
    :sswitch_4
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->d()V

    goto :goto_0

    .line 305
    :sswitch_5
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->e()V

    goto :goto_0

    .line 308
    :sswitch_6
    iget-object v2, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v3

    const-string v4, "clk_quit_chg_cd_cover_pg"

    invoke-virtual {v3, v4}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/cmplay/h/d;->c()I

    move-result v3

    invoke-static {v3}, Lcom/cmplay/h/b;->b(I)I

    move-result v3

    .line 311
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v4

    const/16 v5, 0x189c

    invoke-virtual {v4, v3, v5, v1, v10}, Lcom/cmplay/h/f;->a(IIII)V

    .line 312
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 313
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v4

    const/16 v5, 0x238d

    invoke-virtual {v4, v3, v5, v1, v10}, Lcom/cmplay/h/f;->a(IIII)V

    .line 315
    :cond_1
    iget-object v4, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->s:Lcom/cmplay/tile2/ui/LoveShareActivity$a;

    invoke-virtual {v4}, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 316
    sget-object v5, Lcom/cmplay/tile2/ui/LoveShareActivity;->b:[Ljava/lang/String;

    aput-object v2, v5, v1

    .line 317
    sget-object v5, Lcom/cmplay/tile2/ui/LoveShareActivity;->b:[Ljava/lang/String;

    aput-object v4, v5, v0

    .line 318
    sget-object v5, Lcom/cmplay/tile2/ui/LoveShareActivity;->b:[Ljava/lang/String;

    iget-object v6, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 319
    iget-object v5, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    .line 320
    iget-object v6, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->u:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 321
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v4

    const/16 v5, 0x238e

    invoke-virtual {v4, v3, v5, v1, v10}, Lcom/cmplay/h/f;->a(IIII)V

    .line 325
    :cond_2
    invoke-static {}, Lcom/cmplay/h/d;->a()V

    .line 330
    const-string v3, "valentine_2017"

    invoke-static {v3, v11}, Lcom/cmplay/util/j;->a(Ljava/lang/String;Lcom/cmplay/util/j$a;)V

    .line 334
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 336
    invoke-static {}, Lcom/cmplay/util/j;->b()V

    .line 346
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 347
    iget-wide v6, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->v:J

    sub-long v6, v4, v6

    sget v1, Lcom/cmplay/tile2/ui/LoveShareActivity;->w:I

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 348
    iput-wide v4, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->v:J

    .line 351
    if-eqz v0, :cond_3

    .line 353
    new-instance v0, Lcom/cmplay/tile2/ui/LoveShareActivity$2;

    invoke-direct {v0, p0, v11, v2}, Lcom/cmplay/tile2/ui/LoveShareActivity$2;-><init>(Lcom/cmplay/tile2/ui/LoveShareActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/cmplay/base/util/d;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 372
    :cond_3
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, v11, v10, v2}, Lcom/cmplay/h/f;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "clk_share_btn_h5_pg"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080028 -> :sswitch_0
        0x7f08002b -> :sswitch_6
        0x7f08002c -> :sswitch_3
        0x7f080040 -> :sswitch_2
        0x7f080041 -> :sswitch_1
        0x7f080046 -> :sswitch_4
        0x7f080047 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "LoveShareActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->a(Landroid/content/Intent;)V

    .line 84
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->finish()V

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->a()V

    .line 91
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->b()V

    .line 94
    invoke-static {}, Lcom/cmplay/h/d;->c()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    .line 95
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    const/16 v2, 0x189c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 228
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->q:Landroid/graphics/Bitmap;

    .line 231
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 233
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/cmplay/tile2/ui/LoveShareActivity;->a(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 219
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->g()V

    .line 220
    invoke-static {p0}, Lcom/b/a/a/a;->a(Landroid/content/Context;)V

    .line 221
    const-string v0, "LoveShareActivity onPause"

    invoke-static {v0, p0}, Lcom/cmplay/util/o;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 222
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/p;->c()V

    .line 223
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 248
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->r:Lcom/cmplay/util/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/util/z;->a(I[Ljava/lang/String;[I)V

    .line 251
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 207
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->c()V

    .line 208
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->g()V

    .line 209
    invoke-static {p0}, Lcom/b/a/a/a;->b(Landroid/content/Context;)V

    .line 210
    const-string v0, "LoveShareActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "LoveShareActivity onResume "

    invoke-static {v0, p0}, Lcom/cmplay/util/o;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 212
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->l:Lcom/cmplay/tile2/ui/view/CircularImageView;

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->a(Landroid/view/View;)V

    .line 213
    invoke-static {}, Lcom/cmplay/util/p;->a()Lcom/cmplay/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/p;->d()V

    .line 214
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 264
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 266
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
