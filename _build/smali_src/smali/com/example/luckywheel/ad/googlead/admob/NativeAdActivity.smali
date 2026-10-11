.class public Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/volley/toolbox/h$d;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/ads/formats/NativeContentAdView;

.field private i:Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

.field private j:Lcom/example/luckywheel/ui/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->j:Lcom/example/luckywheel/ui/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->j:Lcom/example/luckywheel/ui/e;

    invoke-interface {v0}, Lcom/example/luckywheel/ui/e;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->finish()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/s;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/volley/toolbox/h$c;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/toolbox/h$c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/toolbox/h$c;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/h$c;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/h$c;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setBodyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setHeadlineView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setIconView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setStoreView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setCallToActionView(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->g:Ljava/lang/String;

    invoke-static {}, Lcom/example/luckywheel/ad/a/b;->a()Lcom/example/luckywheel/ad/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/a/b;->b()Lcom/android/volley/toolbox/h;

    move-result-object v0

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;Lcom/android/volley/toolbox/h$d;)Lcom/android/volley/toolbox/h$c;

    invoke-static {}, Lcom/example/luckywheel/ad/a/b;->a()Lcom/example/luckywheel/ad/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/a/b;->b()Lcom/android/volley/toolbox/h;

    move-result-object v0

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;Lcom/android/volley/toolbox/h$d;)Lcom/android/volley/toolbox/h$c;

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->c:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/formats/NativeContentAdView;Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setBodyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setHeadlineView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setLogoView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setAdvertiserView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setCallToActionView(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->g:Ljava/lang/String;

    invoke-static {}, Lcom/example/luckywheel/ad/a/b;->a()Lcom/example/luckywheel/ad/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/a/b;->b()Lcom/android/volley/toolbox/h;

    move-result-object v0

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;Lcom/android/volley/toolbox/h$d;)Lcom/android/volley/toolbox/h$c;

    invoke-static {}, Lcom/example/luckywheel/ad/a/b;->a()Lcom/example/luckywheel/ad/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/a/b;->b()Lcom/android/volley/toolbox/h;

    move-result-object v0

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;Lcom/android/volley/toolbox/h$d;)Lcom/android/volley/toolbox/h$c;

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->c:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/whatscall/luckywheel/R$layout;->native_ad_full_screen_layout:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->setContentView(I)V

    sget v0, Lcom/whatscall/luckywheel/R$id;->ad_cover_image:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a:Landroid/widget/ImageView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->ad_icon:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->b:Landroid/widget/ImageView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->ad_action_btn:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->c:Landroid/widget/Button;

    sget v0, Lcom/whatscall/luckywheel/R$id;->ad_title:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->d:Landroid/widget/TextView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->ad_description:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->e:Landroid/widget/TextView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->ad_content_layout:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->h:Lcom/google/android/gms/ads/formats/NativeContentAdView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->ad_install_layout:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->i:Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    sget v0, Lcom/whatscall/luckywheel/R$id;->iv_ad_inmobi_dialog_close:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/example/luckywheel/ad/googlead/admob/c;->a()Lcom/example/luckywheel/ad/googlead/admob/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/googlead/admob/c;->c()Lcom/google/android/gms/ads/formats/NativeAd;

    move-result-object v0

    invoke-static {}, Lcom/example/luckywheel/ad/googlead/admob/c;->a()Lcom/example/luckywheel/ad/googlead/admob/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/ad/googlead/admob/c;->d()V

    invoke-static {}, Lcom/example/luckywheel/ad/googlead/admob/c;->a()Lcom/example/luckywheel/ad/googlead/admob/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/luckywheel/ad/googlead/admob/c;->b()Lcom/example/luckywheel/ui/e;

    move-result-object v2

    iput-object v2, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->j:Lcom/example/luckywheel/ui/e;

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->h:Lcom/google/android/gms/ads/formats/NativeContentAdView;

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {p0, v2, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a(Lcom/google/android/gms/ads/formats/NativeContentAdView;Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->j:Lcom/example/luckywheel/ui/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->j:Lcom/example/luckywheel/ui/e;

    invoke-interface {v0}, Lcom/example/luckywheel/ui/e;->a()V

    :cond_2
    return-void

    :cond_3
    instance-of v2, v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->i:Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {p0, v2, v0}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a(Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    goto :goto_0
.end method
