.class public Lcom/cmplay/ad/Admob/BaiduAds;
.super Ljava/lang/Object;
.source "BaiduAds.java"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitial;


# instance fields
.field private Tag:Ljava/lang/String;

.field private iad:Lcom/duapps/ad/h;

.field private isLoaded:Z

.field private lastAd:Lcom/applovin/sdk/AppLovinAd;

.field private mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->isLoaded:Z

    .line 27
    const-string v0, "BaiduAds"

    iput-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->Tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/ad/Admob/BaiduAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/BaiduAds;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmplay/ad/Admob/BaiduAds;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/BaiduAds;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cmplay/ad/Admob/BaiduAds;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/BaiduAds;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/cmplay/ad/Admob/BaiduAds;->isLoaded:Z

    return p1
.end method

.method private setIAD(Landroid/app/Activity;)V
    .locals 5
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->iad:Lcom/duapps/ad/h;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/duapps/ad/h;

    const v1, 0x21cb4

    sget-object v2, Lcom/duapps/ad/h$a;->a:Lcom/duapps/ad/h$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/duapps/ad/h;-><init>(Landroid/app/Activity;ILcom/duapps/ad/h$a;)V

    iput-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->iad:Lcom/duapps/ad/h;

    .line 57
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->iad:Lcom/duapps/ad/h;

    new-instance v1, Lcom/cmplay/ad/Admob/BaiduAds$1;

    invoke-direct {v1, p0}, Lcom/cmplay/ad/Admob/BaiduAds$1;-><init>(Lcom/cmplay/ad/Admob/BaiduAds;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/i;)V

    .line 89
    :cond_0
    iput-boolean v4, p0, Lcom/cmplay/ad/Admob/BaiduAds;->isLoaded:Z

    .line 90
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->iad:Lcom/duapps/ad/h;

    invoke-virtual {v0}, Lcom/duapps/ad/h;->a()V

    .line 91
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 92
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->iad:Lcom/duapps/ad/h;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->iad:Lcom/duapps/ad/h;

    invoke-virtual {v0}, Lcom/duapps/ad/h;->d()V

    .line 51
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
    .line 31
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestInterstitialAd ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Lcom/cmplay/ad/Admob/BaiduAds;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 33
    invoke-direct {p0, p2}, Lcom/cmplay/ad/Admob/BaiduAds;->setIAD(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->isLoaded:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->iad:Lcom/duapps/ad/h;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->iad:Lcom/duapps/ad/h;

    invoke-virtual {v0}, Lcom/duapps/ad/h;->b()V

    .line 40
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->Tag:Ljava/lang/String;

    const-string v1, "showInterstitial ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/ad/Admob/BaiduAds;->isLoaded:Z

    .line 43
    :cond_0
    return-void
.end method
