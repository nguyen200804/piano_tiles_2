.class public Lcom/cmplay/ad/Admob/BatmobiAds;
.super Ljava/lang/Object;
.source "BatmobiAds.java"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitial;


# static fields
.field private static BATMOBI_AD_INTERSTITIAL_PLACEMENTID:Ljava/lang/String;

.field private static BATMOBI_APPKEY:Ljava/lang/String;


# instance fields
.field private interstitialAd:Lcom/mnt/MntInterstitial;

.field private mCustomEventListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "11783_10132"

    sput-object v0, Lcom/cmplay/ad/Admob/BatmobiAds;->BATMOBI_AD_INTERSTITIAL_PLACEMENTID:Ljava/lang/String;

    .line 28
    const-string v0, "E2WQR5JU81UR9SCR9HPS7MYC"

    sput-object v0, Lcom/cmplay/ad/Admob/BatmobiAds;->BATMOBI_APPKEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds;->mCustomEventListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/ad/Admob/BatmobiAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/BatmobiAds;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds;->mCustomEventListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cmplay/ad/Admob/BatmobiAds;Lcom/mnt/MntInterstitial;)Lcom/mnt/MntInterstitial;
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/BatmobiAds;
    .param p1, "x1"    # Lcom/mnt/MntInterstitial;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cmplay/ad/Admob/BatmobiAds;->interstitialAd:Lcom/mnt/MntInterstitial;

    return-object p1
.end method

.method private loadAd(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    new-instance v0, Lcom/mnt/MntBuild$Builder;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/cmplay/ad/Admob/BatmobiAds;->BATMOBI_AD_INTERSTITIAL_PLACEMENTID:Ljava/lang/String;

    sget-object v3, Lcom/mnt/MntAdType;->INTERSTITIAL_320X480:Lcom/mnt/MntAdType;

    invoke-virtual {v3}, Lcom/mnt/MntAdType;->getType()I

    move-result v3

    new-instance v4, Lcom/cmplay/ad/Admob/BatmobiAds$1;

    invoke-direct {v4, p0}, Lcom/cmplay/ad/Admob/BatmobiAds$1;-><init>(Lcom/cmplay/ad/Admob/BatmobiAds;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mnt/MntBuild$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/mnt/IAdListener;)V

    .line 105
    invoke-virtual {v0}, Lcom/mnt/MntBuild$Builder;->build()Lcom/mnt/MntBuild;

    move-result-object v0

    invoke-static {v0}, Lcom/mnt/MntLib;->load(Lcom/mnt/MntBuild;)V

    .line 106
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 107
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds;->interstitialAd:Lcom/mnt/MntInterstitial;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds;->interstitialAd:Lcom/mnt/MntInterstitial;

    invoke-virtual {v0}, Lcom/mnt/MntInterstitial;->onDestory()V

    .line 62
    :cond_0
    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "serviceParam"    # Ljava/lang/String;
    .param p5, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "o"    # Ljava/lang/Object;

    .prologue
    .line 34
    const-string v0, "requestInterstitialAd"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p1, p0, Lcom/cmplay/ad/Admob/BatmobiAds;->mCustomEventListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 36
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "|"

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 39
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/cmplay/ad/Admob/BatmobiAds;->BATMOBI_AD_INTERSTITIAL_PLACEMENTID:Ljava/lang/String;

    .line 40
    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/cmplay/ad/Admob/BatmobiAds;->BATMOBI_APPKEY:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/cmplay/ad/Admob/BatmobiAds;->BATMOBI_APPKEY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mnt/MntLib;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p2}, Lcom/cmplay/ad/Admob/BatmobiAds;->loadAd(Landroid/app/Activity;)V

    .line 46
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds;->interstitialAd:Lcom/mnt/MntInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds;->interstitialAd:Lcom/mnt/MntInterstitial;

    invoke-virtual {v0}, Lcom/mnt/MntInterstitial;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BatmobiAds;->interstitialAd:Lcom/mnt/MntInterstitial;

    invoke-virtual {v0}, Lcom/mnt/MntInterstitial;->show()V

    goto :goto_0
.end method
