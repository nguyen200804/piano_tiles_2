.class public Lcom/cmplay/ad/Admob/AdxAds;
.super Ljava/lang/Object;
.source "AdxAds.java"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitial;


# instance fields
.field private mAdListener:Lcom/google/android/gms/ads/AdListener;

.field private mCustomEventListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

.field private mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds;->mCustomEventListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 44
    new-instance v0, Lcom/cmplay/ad/Admob/AdxAds$1;

    invoke-direct {v0, p0}, Lcom/cmplay/ad/Admob/AdxAds$1;-><init>(Lcom/cmplay/ad/Admob/AdxAds;)V

    iput-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds;->mAdListener:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/ad/Admob/AdxAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/AdxAds;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds;->mCustomEventListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 103
    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 5
    .param p1, "listener"    # Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "serviceParam"    # Ljava/lang/String;
    .param p5, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "o"    # Ljava/lang/Object;

    .prologue
    .line 24
    const-string v0, "zzb_adx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestInterstitialAd ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/cmplay/ad/Admob/AdxAds;->mCustomEventListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 27
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 28
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdxAds;->mAdListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 31
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdxAds;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    nop

    nop

    nop

    .line 33
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 34
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 41
    :cond_0
    return-void
.end method
