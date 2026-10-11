.class Lcom/cmplay/ad/Admob/FBNativeAds$1;
.super Ljava/lang/Object;
.source "FBNativeAds.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/Admob/FBNativeAds;->requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/Admob/FBNativeAds;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    iput-object p2, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 124
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$000(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$000(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v0, "zzb_fb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoaded ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v2}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$200(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030048

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$202(Lcom/cmplay/ad/Admob/FBNativeAds;Landroid/view/View;)Landroid/view/View;

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$200(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 91
    iget-object v2, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$200(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0800f5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/MediaView;

    invoke-static {v2, v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$302(Lcom/cmplay/ad/Admob/FBNativeAds;Lcom/facebook/ads/MediaView;)Lcom/facebook/ads/MediaView;

    .line 92
    iget-object v2, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$200(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0800f6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$402(Lcom/cmplay/ad/Admob/FBNativeAds;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 93
    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$200(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v2}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$200(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    iget-object v3, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v3}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$200(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    iget-object v4, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v4}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$200(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f08007f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 98
    iget-object v5, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v5}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v2}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$400(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/NativeAd;->downloadAndDisplayImage(Lcom/facebook/ads/NativeAd$Image;Landroid/widget/ImageView;)V

    .line 106
    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$300(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v2}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/MediaView;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 107
    new-instance v1, Lcom/facebook/ads/AdChoicesView;

    iget-object v2, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v3}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Z)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$300(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$400(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v1}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v2}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$200(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    .line 116
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$000(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$000(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 119
    :cond_3
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    goto/16 :goto_0
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 4
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "error"    # Lcom/facebook/ads/AdError;

    .prologue
    const/4 v3, 0x3

    .line 68
    const-string v0, "zzb_fb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$000(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$1;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->access$000(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 72
    :cond_0
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 73
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 65
    return-void
.end method
