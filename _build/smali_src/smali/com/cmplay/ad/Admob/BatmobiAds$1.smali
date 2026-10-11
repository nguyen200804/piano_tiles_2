.class Lcom/cmplay/ad/Admob/BatmobiAds$1;
.super Ljava/lang/Object;
.source "BatmobiAds.java"

# interfaces
.implements Lcom/mnt/IAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/Admob/BatmobiAds;->loadAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/ad/Admob/BatmobiAds;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/Admob/BatmobiAds;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cmplay/ad/Admob/BatmobiAds$1;->this$0:Lcom/cmplay/ad/Admob/BatmobiAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds$1;->this$0:Lcom/cmplay/ad/Admob/BatmobiAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BatmobiAds;->access$000(Lcom/cmplay/ad/Admob/BatmobiAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 92
    return-void
.end method

.method public onAdError(Lcom/mnt/AdError;)V
    .locals 4
    .param p1, "error"    # Lcom/mnt/AdError;

    .prologue
    const/4 v3, 0x3

    .line 85
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds$1;->this$0:Lcom/cmplay/ad/Admob/BatmobiAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BatmobiAds;->access$000(Lcom/cmplay/ad/Admob/BatmobiAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 86
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    invoke-virtual {p1}, Lcom/mnt/AdError;->getErrorCode()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 87
    return-void
.end method

.method public onAdLoadFinish(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds$1;->this$0:Lcom/cmplay/ad/Admob/BatmobiAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BatmobiAds;->access$000(Lcom/cmplay/ad/Admob/BatmobiAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 81
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 76
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/mnt/MntInterstitial;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds$1;->this$0:Lcom/cmplay/ad/Admob/BatmobiAds;

    check-cast p1, Lcom/mnt/MntInterstitial;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/cmplay/ad/Admob/BatmobiAds;->access$102(Lcom/cmplay/ad/Admob/BatmobiAds;Lcom/mnt/MntInterstitial;)Lcom/mnt/MntInterstitial;

    .line 78
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds$1;->this$0:Lcom/cmplay/ad/Admob/BatmobiAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BatmobiAds;->access$000(Lcom/cmplay/ad/Admob/BatmobiAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 80
    :cond_1
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    goto :goto_0
.end method

.method public onAdShowed()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds$1;->this$0:Lcom/cmplay/ad/Admob/BatmobiAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BatmobiAds;->access$000(Lcom/cmplay/ad/Admob/BatmobiAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 98
    return-void
.end method
