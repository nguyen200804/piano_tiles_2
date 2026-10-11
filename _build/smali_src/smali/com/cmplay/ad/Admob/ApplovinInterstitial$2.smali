.class Lcom/cmplay/ad/Admob/ApplovinInterstitial$2;
.super Ljava/lang/Object;
.source "ApplovinInterstitial.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/Admob/ApplovinInterstitial;->showInterstitial()V
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
    .line 79
    iput-object p1, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial$2;->this$0:Lcom/cmplay/ad/Admob/ApplovinInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial$2;->this$0:Lcom/cmplay/ad/Admob/ApplovinInterstitial;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->access$100(Lcom/cmplay/ad/Admob/ApplovinInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 90
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial$2;->this$0:Lcom/cmplay/ad/Admob/ApplovinInterstitial;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->access$100(Lcom/cmplay/ad/Admob/ApplovinInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 84
    return-void
.end method
