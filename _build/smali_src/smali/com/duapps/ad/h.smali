.class public Lcom/duapps/ad/h;
.super Ljava/lang/Object;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/duapps/ad/f;

.field private c:Lcom/duapps/ad/f;

.field private d:Lcom/duapps/ad/i;

.field private e:Lcom/duapps/ad/interstitial/a;

.field private f:Landroid/app/Activity;

.field private g:I

.field private h:Z

.field private i:I

.field private j:Lcom/duapps/ad/h$a;

.field private k:Lcom/duapps/ad/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/duapps/ad/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IILcom/duapps/ad/h$a;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/duapps/ad/h$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/h$1;-><init>(Lcom/duapps/ad/h;)V

    iput-object v0, p0, Lcom/duapps/ad/h;->k:Lcom/duapps/ad/c;

    .line 69
    iput-object p1, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    .line 70
    iput p2, p0, Lcom/duapps/ad/h;->g:I

    .line 71
    iput-object p4, p0, Lcom/duapps/ad/h;->j:Lcom/duapps/ad/h$a;

    .line 73
    iget-object v0, p0, Lcom/duapps/ad/h;->j:Lcom/duapps/ad/h$a;

    sget-object v1, Lcom/duapps/ad/h$a;->b:Lcom/duapps/ad/h$a;

    if-ne v0, v1, :cond_0

    .line 74
    const-string v0, "interstitial_screen"

    .line 78
    :goto_0
    new-instance v1, Lcom/duapps/ad/f;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/duapps/ad/f;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    iput-object v1, p0, Lcom/duapps/ad/h;->b:Lcom/duapps/ad/f;

    .line 79
    iget-object v0, p0, Lcom/duapps/ad/h;->b:Lcom/duapps/ad/f;

    iget-object v1, p0, Lcom/duapps/ad/h;->k:Lcom/duapps/ad/c;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/c;)V

    .line 80
    iget-object v0, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/h;->i:I

    .line 81
    return-void

    .line 76
    :cond_0
    const-string v0, "interstitial"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;ILcom/duapps/ad/h$a;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/duapps/ad/h;-><init>(Landroid/app/Activity;IILcom/duapps/ad/h$a;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/h;Lcom/duapps/ad/f;)Lcom/duapps/ad/f;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/duapps/ad/h;->c:Lcom/duapps/ad/f;

    return-object p1
.end method

.method static synthetic a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/duapps/ad/h;->d:Lcom/duapps/ad/i;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/h;Lcom/duapps/ad/interstitial/a;)Lcom/duapps/ad/interstitial/a;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;Lcom/duapps/ad/f;)V
    .locals 11

    .prologue
    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 534
    invoke-virtual {p2}, Lcom/duapps/ad/f;->i()F

    move-result v5

    .line 535
    sget v0, Lcom/duapps/ad/R$id;->star_layout:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 536
    const v1, 0x4091c28f    # 4.555f

    cmpl-float v1, v5, v1

    if-nez v1, :cond_0

    .line 537
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 592
    :goto_0
    return-void

    .line 541
    :cond_0
    sget v0, Lcom/duapps/ad/R$id;->star1:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 542
    sget v1, Lcom/duapps/ad/R$id;->star2:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 543
    sget v2, Lcom/duapps/ad/R$id;->star3:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 544
    sget v3, Lcom/duapps/ad/R$id;->star4:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 545
    sget v4, Lcom/duapps/ad/R$id;->star5:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 547
    cmpl-float v6, v5, v7

    if-lez v6, :cond_1

    .line 548
    sget v6, Lcom/duapps/ad/R$drawable;->star_full:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    cmpl-float v0, v5, v8

    if-lez v0, :cond_3

    .line 558
    sget v0, Lcom/duapps/ad/R$drawable;->star_full:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    cmpl-float v0, v5, v9

    if-lez v0, :cond_5

    .line 568
    sget v0, Lcom/duapps/ad/R$drawable;->star_full:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 577
    cmpl-float v0, v5, v10

    if-lez v0, :cond_7

    .line 578
    sget v0, Lcom/duapps/ad/R$drawable;->star_full:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 587
    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v5, v0

    if-nez v0, :cond_9

    .line 588
    sget v0, Lcom/duapps/ad/R$drawable;->star_full:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 549
    :cond_1
    cmpl-float v1, v5, v7

    if-nez v1, :cond_2

    .line 550
    sget v1, Lcom/duapps/ad/R$drawable;->star_full:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 553
    :cond_2
    sget v1, Lcom/duapps/ad/R$drawable;->star_half:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 559
    :cond_3
    cmpl-float v0, v5, v8

    if-nez v0, :cond_4

    .line 560
    sget v0, Lcom/duapps/ad/R$drawable;->star_full:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 563
    :cond_4
    sget v0, Lcom/duapps/ad/R$drawable;->star_half:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 569
    :cond_5
    cmpl-float v0, v5, v9

    if-nez v0, :cond_6

    .line 570
    sget v0, Lcom/duapps/ad/R$drawable;->star_full:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 573
    :cond_6
    sget v0, Lcom/duapps/ad/R$drawable;->star_half:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 579
    :cond_7
    cmpl-float v0, v5, v10

    if-nez v0, :cond_8

    .line 580
    sget v0, Lcom/duapps/ad/R$drawable;->star_full:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 583
    :cond_8
    sget v0, Lcom/duapps/ad/R$drawable;->star_half:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 590
    :cond_9
    sget v0, Lcom/duapps/ad/R$drawable;->star_half:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/duapps/ad/f;)V
    .locals 20

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/duapps/ad/h;->h:Z

    .line 272
    sget-object v2, Lcom/duapps/ad/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerView...ad.getImageUrl() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ad.getIconUrl() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v2, Lcom/duapps/ad/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerView...ad.getCallToAction() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ad.getTitle() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ad.getShortDesc() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    invoke-virtual {v2}, Lcom/duapps/ad/interstitial/a;->getContentView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 276
    sget v2, Lcom/duapps/ad/R$id;->blur_bg:I

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 277
    if-eqz v5, :cond_2

    .line 278
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_2
    sget v2, Lcom/duapps/ad/R$id;->icon:I

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/duapps/ad/interstitial/RoundImageView;

    .line 282
    sget v2, Lcom/duapps/ad/R$id;->button:I

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    sget v2, Lcom/duapps/ad/R$id;->title:I

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    sget v2, Lcom/duapps/ad/R$id;->desc:I

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    sget v3, Lcom/duapps/ad/R$id;->container:I

    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 290
    sget v3, Lcom/duapps/ad/R$id;->image:I

    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 291
    sget v3, Lcom/duapps/ad/R$id;->media_view:I

    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/duapps/ad/DuAdMediaView;

    .line 293
    sget v4, Lcom/duapps/ad/R$id;->media_layout:I

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 294
    sget v6, Lcom/duapps/ad/R$id;->ad_corner_default:I

    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 295
    sget v6, Lcom/duapps/ad/R$id;->ad_corner_image:I

    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 296
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    if-eqz v8, :cond_3

    .line 298
    const/16 v6, 0x8

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :cond_3
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 304
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 306
    iget v6, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 307
    iget v14, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int v7, v14, v7

    .line 309
    const/4 v14, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->k()I

    move-result v15

    if-ne v14, v15, :cond_b

    .line 311
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/duapps/ad/R$dimen;->interstitial_land_media_content_height:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/duapps/ad/h;->j:Lcom/duapps/ad/h$a;

    sget-object v16, Lcom/duapps/ad/h$a;->b:Lcom/duapps/ad/h$a;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_8

    .line 314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_4

    .line 315
    sget v14, Lcom/duapps/ad/R$id;->content_layout:I

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 316
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 317
    move-object/from16 v0, v16

    iput v15, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Lcom/duapps/ad/interstitial/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sub-int v14, v7, v15

    invoke-direct {v2, v6, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 324
    const/16 v14, 0x30

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 325
    invoke-virtual {v3, v2}, Lcom/duapps/ad/DuAdMediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    if-eqz v4, :cond_4

    .line 327
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->l()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/NativeAd;

    .line 359
    if-eqz v2, :cond_a

    .line 360
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/duapps/ad/DuAdMediaView;->setVisibility(I)V

    .line 362
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/duapps/ad/DuAdMediaView;->a(Z)V

    .line 363
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/f;)V

    .line 364
    new-instance v3, Lcom/facebook/ads/AdChoicesView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    const/4 v15, 0x1

    invoke-direct {v3, v14, v2, v15}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Z)V

    .line 365
    if-eqz v4, :cond_9

    .line 366
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 370
    :goto_2
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    if-eqz v8, :cond_5

    .line 372
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    :cond_5
    :goto_3
    sget v2, Lcom/duapps/ad/R$drawable;->ad_image_bg:I

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 383
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->h()Ljava/lang/String;

    move-result-object v15

    new-instance v2, Lcom/duapps/ad/h$4;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v12}, Lcom/duapps/ad/h$4;-><init>(Lcom/duapps/ad/h;Lcom/duapps/ad/f;Landroid/view/View;IILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {v14, v15, v10, v2}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/duapps/ad/base/a/c;)V

    .line 479
    if-eqz v13, :cond_6

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 481
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/duapps/ad/interstitial/RoundImageView;->setVisibility(I)V

    .line 482
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/duapps/ad/h;->h:Z

    .line 523
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/h;->j:Lcom/duapps/ad/h$a;

    sget-object v3, Lcom/duapps/ad/h$a;->b:Lcom/duapps/ad/h$a;

    if-ne v2, v3, :cond_7

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/duapps/ad/h;->a(Landroid/view/ViewGroup;Lcom/duapps/ad/f;)V

    .line 529
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/duapps/ad/f;->a(Landroid/view/View;)V

    .line 530
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/duapps/ad/h;->c:Lcom/duapps/ad/f;

    goto/16 :goto_0

    .line 331
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_4

    .line 332
    sget v14, Lcom/duapps/ad/R$id;->content_layout:I

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 333
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 334
    move-object/from16 v0, v16

    iput v15, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 335
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    .line 340
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v14, Lcom/duapps/ad/R$dimen;->interstitial_normal_land_card_land_margin:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v6, v2

    .line 341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    .line 342
    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v16, Lcom/duapps/ad/R$dimen;->interstitial_normal_land_card_port_margin:I

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v7, v14

    .line 344
    sub-int v15, v14, v15

    .line 345
    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3ffe666666666666L    # 1.9

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 347
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 348
    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 349
    move-object/from16 v0, v16

    iput v14, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 350
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v2, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 353
    const/16 v2, 0x30

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 354
    invoke-virtual {v3, v14}, Lcom/duapps/ad/DuAdMediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 368
    :cond_9
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 375
    :cond_a
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "FB ad is null!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/duapps/ad/DuAdMediaView;->setVisibility(I)V

    goto/16 :goto_3

    .line 484
    :cond_c
    sget v2, Lcom/duapps/ad/R$drawable;->ad_icon_bg:I

    invoke-virtual {v13, v2}, Lcom/duapps/ad/interstitial/RoundImageView;->setBackgroundResource(I)V

    .line 485
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/duapps/ad/f;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/duapps/ad/h$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v5}, Lcom/duapps/ad/h$5;-><init>(Lcom/duapps/ad/h;ILandroid/view/View;)V

    invoke-virtual {v2, v3, v13, v4}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/duapps/ad/base/a/c;)V

    goto/16 :goto_4
.end method

.method static synthetic b(Lcom/duapps/ad/h;)Lcom/duapps/ad/interstitial/a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/h;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/h;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/duapps/ad/h;->g:I

    return v0
.end method

.method static synthetic e(Lcom/duapps/ad/h;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/duapps/ad/h;->i:I

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/duapps/ad/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/duapps/ad/h;)Lcom/duapps/ad/h$a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/duapps/ad/h;->j:Lcom/duapps/ad/h$a;

    return-object v0
.end method

.method private f()V
    .locals 10

    .prologue
    const-wide v8, 0x3ffe666666666666L    # 1.9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 178
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    if-nez v0, :cond_1

    .line 179
    new-instance v1, Lcom/duapps/ad/interstitial/a;

    iget-object v2, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    iget-object v0, p0, Lcom/duapps/ad/h;->j:Lcom/duapps/ad/h$a;

    sget-object v3, Lcom/duapps/ad/h$a;->b:Lcom/duapps/ad/h$a;

    if-ne v0, v3, :cond_2

    sget v0, Lcom/duapps/ad/R$layout;->interstitial_screen:I

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/duapps/ad/interstitial/a;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    .line 180
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    invoke-virtual {v0}, Lcom/duapps/ad/interstitial/a;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 181
    sget v1, Lcom/duapps/ad/R$id;->close:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 184
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 185
    iget-object v3, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 186
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 187
    iget-object v1, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 188
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 190
    iget-object v3, p0, Lcom/duapps/ad/h;->j:Lcom/duapps/ad/h$a;

    sget-object v4, Lcom/duapps/ad/h$a;->a:Lcom/duapps/ad/h$a;

    if-ne v3, v4, :cond_3

    .line 192
    iget-object v3, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_0

    .line 193
    iget-object v3, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    .line 194
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/duapps/ad/R$dimen;->interstitial_normal_port_card_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    .line 195
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/duapps/ad/R$dimen;->interstitial_normal_port_card_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    .line 196
    int-to-double v4, v3

    div-double/2addr v4, v8

    double-to-int v4, v4

    .line 198
    sget v1, Lcom/duapps/ad/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 199
    sget v5, Lcom/duapps/ad/R$id;->media_view:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/DuAdMediaView;

    .line 200
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 201
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-virtual {v0, v5}, Lcom/duapps/ad/DuAdMediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_0
    :goto_1
    new-instance v0, Lcom/duapps/ad/h$2;

    invoke-direct {v0, p0}, Lcom/duapps/ad/h$2;-><init>(Lcom/duapps/ad/h;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    new-instance v1, Lcom/duapps/ad/h$3;

    invoke-direct {v1, p0}, Lcom/duapps/ad/h$3;-><init>(Lcom/duapps/ad/h;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/interstitial/a;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 240
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    invoke-virtual {v0, v7}, Lcom/duapps/ad/interstitial/a;->setTouchable(Z)V

    .line 241
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    invoke-virtual {v0, v7}, Lcom/duapps/ad/interstitial/a;->setFocusable(Z)V

    .line 242
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    invoke-virtual {v0, v6}, Lcom/duapps/ad/interstitial/a;->setOutsideTouchable(Z)V

    .line 243
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    invoke-virtual {v0}, Lcom/duapps/ad/interstitial/a;->update()V

    .line 245
    :cond_1
    return-void

    .line 179
    :cond_2
    sget v0, Lcom/duapps/ad/R$layout;->interstitial_normal:I

    goto/16 :goto_0

    .line 206
    :cond_3
    iget-object v3, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_0

    .line 207
    iget-object v3, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    .line 208
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/duapps/ad/R$dimen;->interstitial_screen_port_content_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    .line 209
    int-to-double v4, v3

    div-double/2addr v4, v8

    double-to-int v4, v4

    .line 211
    sget v1, Lcom/duapps/ad/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 212
    sget v5, Lcom/duapps/ad/R$id;->media_view:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/DuAdMediaView;

    .line 213
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v0, v5}, Lcom/duapps/ad/DuAdMediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/duapps/ad/h;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/duapps/ad/h;->h:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/duapps/ad/h;->c:Lcom/duapps/ad/f;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/duapps/ad/h;->d:Lcom/duapps/ad/i;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/duapps/ad/h;->d:Lcom/duapps/ad/i;

    invoke-interface {v0}, Lcom/duapps/ad/i;->onAdReceive()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/h;->b:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->c()V

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/i;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/duapps/ad/h;->d:Lcom/duapps/ad/i;

    .line 85
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/16 v4, 0x3e9

    .line 145
    iget-object v0, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/h;->c()V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    iget v1, p0, Lcom/duapps/ad/h;->g:I

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/h;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 156
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/h;->c:Lcom/duapps/ad/f;

    if-nez v0, :cond_4

    .line 157
    sget-object v0, Lcom/duapps/ad/h;->a:Ljava/lang/String;

    const-string v1, "show ad with no cached ad found!"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/duapps/ad/h;->d:Lcom/duapps/ad/i;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/duapps/ad/h;->d:Lcom/duapps/ad/i;

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/duapps/ad/i;->onAdFail(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/duapps/ad/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show ad with exception! e.getMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/duapps/ad/h;->d:Lcom/duapps/ad/i;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/duapps/ad/h;->d:Lcom/duapps/ad/i;

    invoke-interface {v0, v4}, Lcom/duapps/ad/i;->onAdFail(I)V

    goto :goto_0

    .line 163
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/duapps/ad/h;->f()V

    .line 164
    iget-object v0, p0, Lcom/duapps/ad/h;->c:Lcom/duapps/ad/f;

    invoke-direct {p0, v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/f;)V

    .line 165
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    invoke-virtual {v0}, Lcom/duapps/ad/interstitial/a;->a()V

    .line 166
    iget-object v0, p0, Lcom/duapps/ad/h;->d:Lcom/duapps/ad/i;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/duapps/ad/h;->d:Lcom/duapps/ad/i;

    invoke-interface {v0}, Lcom/duapps/ad/i;->onAdPresent()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    invoke-virtual {v0}, Lcom/duapps/ad/interstitial/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    invoke-virtual {v0}, Lcom/duapps/ad/interstitial/a;->dismiss()V

    .line 251
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    .line 252
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/duapps/ad/h;->b:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->d()V

    .line 259
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    invoke-virtual {v0}, Lcom/duapps/ad/interstitial/a;->dismiss()V

    .line 261
    iput-object v1, p0, Lcom/duapps/ad/h;->e:Lcom/duapps/ad/interstitial/a;

    .line 263
    :cond_0
    iput-object v1, p0, Lcom/duapps/ad/h;->f:Landroid/app/Activity;

    .line 264
    return-void
.end method
