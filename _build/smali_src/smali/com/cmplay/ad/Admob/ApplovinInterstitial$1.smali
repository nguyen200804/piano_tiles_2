.class Lcom/cmplay/ad/Admob/ApplovinInterstitial$1;
.super Ljava/lang/Object;
.source "ApplovinInterstitial.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/Admob/ApplovinInterstitial;->requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/ad/Admob/ApplovinInterstitial;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/Admob/ApplovinInterstitial;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial$1;->this$0:Lcom/cmplay/ad/Admob/ApplovinInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    const/4 v3, 0x3

    .line 56
    iget-object v0, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial$1;->this$0:Lcom/cmplay/ad/Admob/ApplovinInterstitial;

    invoke-static {v0, p1}, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->access$002(Lcom/cmplay/ad/Admob/ApplovinInterstitial;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    .line 57
    iget-object v0, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial$1;->this$0:Lcom/cmplay/ad/Admob/ApplovinInterstitial;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->access$100(Lcom/cmplay/ad/Admob/ApplovinInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 58
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 59
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    const/4 v1, 0x3

    .line 64
    iget-object v0, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial$1;->this$0:Lcom/cmplay/ad/Admob/ApplovinInterstitial;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->access$100(Lcom/cmplay/ad/Admob/ApplovinInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 65
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    invoke-virtual {v0, v1, p1, v1, v1}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 66
    return-void
.end method
