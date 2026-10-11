.class Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;
.super Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInstallMapper"
.end annotation


# instance fields
.field private mNativeAd:Lcom/facebook/ads/NativeAd;

.field private mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

.field final synthetic this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/NativeAd;Lcom/google/android/gms/ads/formats/NativeAdOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/ads/mediation/facebook/FacebookAdapter;
    .param p2, "nativeAd"    # Lcom/facebook/ads/NativeAd;
    .param p3, "adOptions"    # Lcom/google/android/gms/ads/formats/NativeAdOptions;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;-><init>()V

    .line 700
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    .line 701
    iput-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    .line 702
    return-void
.end method

.method private containsRequiredFieldsForNativeAppInstallAd(Lcom/facebook/ads/NativeAd;)Z
    .locals 1
    .param p1, "nativeAd"    # Lcom/facebook/ads/NativeAd;

    .prologue
    .line 847
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRating(Lcom/facebook/ads/NativeAd$Rating;)Ljava/lang/Double;
    .locals 4
    .param p1, "rating"    # Lcom/facebook/ads/NativeAd$Rating;

    .prologue
    .line 964
    if-nez p1, :cond_0

    .line 965
    const/4 v0, 0x0

    .line 967
    :goto_0
    return-object v0

    :cond_0
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Rating;->getScale()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public mapNativeAd(Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;)V
    .locals 8
    .param p1, "mapperListener"    # Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 712
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->containsRequiredFieldsForNativeAppInstallAd(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    const-string v0, "FacebookAdapter"

    const-string v1, "Ad from Facebook doesn\'t have all assets required for the app install format."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-interface {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingFailed()V

    .line 836
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setHeadline(Ljava/lang/String;)V

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 723
    new-instance v2, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    .line 724
    invoke-virtual {v4}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Landroid/net/Uri;)V

    .line 723
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setImages(Ljava/util/List;)V

    .line 726
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setBody(Ljava/lang/String;)V

    .line 727
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 728
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setCallToAction(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1100(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 731
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1100(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    new-instance v2, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper$1;

    invoke-direct {v2, p0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper$1;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;)V

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaView;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    .line 774
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1100(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaView;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 779
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1100(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setMediaView(Landroid/view/View;)V

    .line 780
    invoke-virtual {p0, v7}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setHasVideoContent(Z)V

    .line 787
    :goto_1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->getRating(Lcom/facebook/ads/NativeAd$Rating;)Ljava/lang/Double;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setStarRating(D)V

    .line 793
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 794
    const-string v2, "id"

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 795
    const-string v2, "social_context"

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 796
    const-string v2, "subtitle"

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getAdSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 798
    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdViewAttributes()Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object v2

    .line 799
    if-eqz v2, :cond_3

    .line 800
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 801
    const-string v4, "autoplay"

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getAutoplay()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 802
    const-string v4, "background_color"

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getBackgroundColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 803
    const-string v4, "button_border_color"

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getButtonBorderColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    const-string v4, "button_color"

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getButtonColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 805
    const-string v4, "button_text_color"

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getButtonTextColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 806
    const-string v4, "description_text_color"

    .line 807
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getDescriptionTextColor()I

    move-result v5

    .line 806
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    const-string v4, "description_text_size"

    .line 809
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getDescriptionTextSize()I

    move-result v5

    .line 808
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    const-string v4, "title_text_color"

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getTitleTextColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    const-string v4, "title_text_size"

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getTitleTextSize()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 813
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 814
    if-eqz v2, :cond_2

    .line 815
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 816
    const-string v5, "is_bold"

    invoke-virtual {v2}, Landroid/graphics/Typeface;->isBold()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 817
    const-string v5, "is_italic"

    invoke-virtual {v2}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 818
    const-string v5, "style"

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    const-string v2, "typeface"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 821
    :cond_2
    const-string v2, "ad_view_attributes"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 823
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setExtras(Landroid/os/Bundle;)V

    .line 827
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    if-eqz v0, :cond_6

    .line 828
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v0

    .line 831
    :goto_2
    if-eqz v0, :cond_5

    .line 832
    invoke-interface {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingSuccess()V

    goto/16 :goto_0

    .line 782
    :cond_4
    const-string v0, "FacebookAdapter"

    const-string v2, "Couldn\'t set MediaView."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setHasVideoContent(Z)V

    goto/16 :goto_1

    .line 834
    :cond_5
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;

    invoke-direct {v0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;)V

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public trackView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x35

    const/4 v6, 0x1

    .line 854
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 857
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 858
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_a

    .line 860
    new-instance v2, Lcom/facebook/ads/AdChoicesView;

    .line 861
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    iget-object v5, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v5}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1200(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Z)V

    .line 862
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 866
    invoke-virtual {v2}, Lcom/facebook/ads/AdChoicesView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 867
    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    if-eqz v2, :cond_9

    .line 868
    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 880
    :pswitch_0
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 886
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 892
    :goto_1
    invoke-virtual {p0, v6}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setOverrideImpressionRecording(Z)V

    .line 895
    invoke-virtual {p0, v6}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setOverrideClickHandling(Z)V

    .line 897
    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    if-eqz v0, :cond_b

    move-object v0, p1

    .line 898
    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    .line 899
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 901
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getHeadlineView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 902
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getHeadlineView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getBodyView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 906
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getBodyView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 910
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getIconView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 914
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getImageView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 918
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getImageView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getPriceView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 922
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getPriceView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getStarRatingView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 926
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getStarRatingView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getStoreView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 930
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getStoreView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getMediaView()Lcom/google/android/gms/ads/formats/MediaView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 934
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getMediaView()Lcom/google/android/gms/ads/formats/MediaView;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    :cond_8
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    .line 941
    :goto_2
    return-void

    .line 870
    :pswitch_1
    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 873
    :pswitch_2
    const/16 v2, 0x55

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 876
    :pswitch_3
    const/16 v2, 0x53

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 884
    :cond_9
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 888
    :cond_a
    const-string v0, "FacebookAdapter"

    const-string v1, "Failed to show AdChoices icon."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 939
    :cond_b
    const-string v0, "FacebookAdapter"

    const-string v1, "Failed to register view for interaction."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 868
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 945
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->untrackView(Landroid/view/View;)V

    .line 949
    check-cast p1, Landroid/view/ViewGroup;

    .line 952
    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 953
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 954
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 958
    return-void
.end method
