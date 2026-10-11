.class public Lcom/cmplay/ad/Admob/ApplovinInterstitial;
.super Ljava/lang/Object;
.source "ApplovinInterstitial.java"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitial;


# static fields
.field public static isInitApplovin:Z


# instance fields
.field private lastAd:Lcom/applovin/sdk/AppLovinAd;

.field private mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->isInitApplovin:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/cmplay/ad/Admob/ApplovinInterstitial;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/ApplovinInterstitial;
    .param p1, "x1"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->lastAd:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cmplay/ad/Admob/ApplovinInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/ApplovinInterstitial;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->lastAd:Lcom/applovin/sdk/AppLovinAd;

    .line 100
    iput-object v0, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 101
    const-string v0, "applovin"

    const-string v1, "ap---destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "serverParameter"    # Ljava/lang/String;
    .param p5, "request"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "unused"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x3

    .line 50
    iput-object p1, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 52
    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/cmplay/ad/Admob/ApplovinInterstitial$1;

    invoke-direct {v2, p0}, Lcom/cmplay/ad/Admob/ApplovinInterstitial$1;-><init>(Lcom/cmplay/ad/Admob/ApplovinInterstitial;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 68
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 69
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->lastAd:Lcom/applovin/sdk/AppLovinAd;

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/cmplay/ad/Admob/ApplovinInterstitial$2;

    invoke-direct {v1, p0}, Lcom/cmplay/ad/Admob/ApplovinInterstitial$2;-><init>(Lcom/cmplay/ad/Admob/ApplovinInterstitial;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 93
    iget-object v1, p0, Lcom/cmplay/ad/Admob/ApplovinInterstitial;->lastAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_0
.end method
