.class Lcom/duapps/ad/h$4;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/duapps/ad/base/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/h;->a(Lcom/duapps/ad/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/f;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroid/widget/ImageView;

.field final synthetic f:Landroid/widget/ImageView;

.field final synthetic g:Landroid/widget/ImageView;

.field final synthetic h:Landroid/view/ViewGroup;

.field final synthetic i:Landroid/view/ViewGroup;

.field final synthetic j:Lcom/duapps/ad/h;


# direct methods
.method constructor <init>(Lcom/duapps/ad/h;Lcom/duapps/ad/f;Landroid/view/View;IILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    iput-object p2, p0, Lcom/duapps/ad/h$4;->a:Lcom/duapps/ad/f;

    iput-object p3, p0, Lcom/duapps/ad/h$4;->b:Landroid/view/View;

    iput p4, p0, Lcom/duapps/ad/h$4;->c:I

    iput p5, p0, Lcom/duapps/ad/h$4;->d:I

    iput-object p6, p0, Lcom/duapps/ad/h$4;->e:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/duapps/ad/h$4;->f:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/duapps/ad/h$4;->g:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/duapps/ad/h$4;->h:Landroid/view/ViewGroup;

    iput-object p10, p0, Lcom/duapps/ad/h$4;->i:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 396
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/h$4;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->k()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 403
    iget-object v0, p0, Lcom/duapps/ad/h$4;->b:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v2}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v3}, Lcom/duapps/ad/h;->e(Lcom/duapps/ad/h;)I

    move-result v3

    invoke-static {p3, v3}, Lcom/duapps/ad/base/a/a;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    invoke-static {}, Lcom/duapps/ad/h;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something wrong happened while image onLoadingComplete, message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->f(Lcom/duapps/ad/h;)Lcom/duapps/ad/h$a;

    move-result-object v0

    sget-object v1, Lcom/duapps/ad/h$a;->b:Lcom/duapps/ad/h$a;

    if-ne v0, v1, :cond_7

    .line 409
    iget-object v0, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    .line 410
    iget-object v0, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->g(Lcom/duapps/ad/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/duapps/ad/h$4;->c:I

    iget v2, p0, Lcom/duapps/ad/h$4;->d:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 412
    iget-object v1, p0, Lcom/duapps/ad/h$4;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v0, p0, Lcom/duapps/ad/h$4;->b:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v2}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v3}, Lcom/duapps/ad/h;->e(Lcom/duapps/ad/h;)I

    move-result v3

    invoke-static {p3, v3}, Lcom/duapps/ad/base/a/a;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/duapps/ad/h$4;->b:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v2}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v3}, Lcom/duapps/ad/h;->e(Lcom/duapps/ad/h;)I

    move-result v3

    invoke-static {p3, v3}, Lcom/duapps/ad/base/a/a;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    iget-object v0, p0, Lcom/duapps/ad/h$4;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 418
    iget-object v0, p0, Lcom/duapps/ad/h$4;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/h$4;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 421
    iget-object v0, p0, Lcom/duapps/ad/h$4;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    :cond_5
    iget v0, p0, Lcom/duapps/ad/h$4;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/duapps/ad/h$4;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 424
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 426
    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 427
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/duapps/ad/h$4;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/duapps/ad/h$4;->d:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 428
    iget-object v1, p0, Lcom/duapps/ad/h$4;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 430
    :cond_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/duapps/ad/h$4;->c:I

    iget v3, p0, Lcom/duapps/ad/h$4;->c:I

    int-to-float v3, v3

    div-float v1, v3, v1

    float-to-int v1, v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 431
    iget-object v1, p0, Lcom/duapps/ad/h$4;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 436
    :cond_7
    iget-object v0, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_8

    .line 437
    iget v0, p0, Lcom/duapps/ad/h$4;->c:I

    iget-object v1, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    .line 438
    invoke-static {v1}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/duapps/ad/R$dimen;->interstitial_normal_land_card_port_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 439
    iget v0, p0, Lcom/duapps/ad/h$4;->c:I

    iget-object v2, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    .line 440
    invoke-static {v2}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/duapps/ad/R$dimen;->interstitial_normal_land_card_land_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 441
    iget-object v2, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    invoke-static {v2}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/duapps/ad/R$dimen;->interstitial_normal_land_card_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 443
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    mul-int/2addr v3, v1

    .line 445
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 447
    iget-object v0, p0, Lcom/duapps/ad/h$4;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 448
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 449
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 450
    iget-object v1, p0, Lcom/duapps/ad/h$4;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 452
    :cond_8
    iget v0, p0, Lcom/duapps/ad/h$4;->c:I

    iget-object v1, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    .line 453
    invoke-static {v1}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/duapps/ad/R$dimen;->interstitial_normal_port_card_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/duapps/ad/h$4;->j:Lcom/duapps/ad/h;

    .line 454
    invoke-static {v1}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/duapps/ad/R$dimen;->interstitial_normal_port_card_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 455
    int-to-double v2, v0

    const-wide v4, 0x3ffe666666666666L    # 1.9

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 457
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 458
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 460
    iget-object v0, p0, Lcom/duapps/ad/h$4;->i:Landroid/view/ViewGroup;

    sget v3, Lcom/duapps/ad/R$id;->media_layout:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 461
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 462
    iget-object v4, p0, Lcom/duapps/ad/h$4;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 464
    const/4 v1, 0x1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 465
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
