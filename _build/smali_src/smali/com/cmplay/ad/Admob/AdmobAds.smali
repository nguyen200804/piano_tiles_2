.class public Lcom/cmplay/ad/Admob/AdmobAds;
.super Lcom/cmplay/ad/b;
.source "AdmobAds.java"


# static fields
.field private static final DEV_ID:Ljava/lang/String; = "ca-app-pub-6693792149034582/6426967355"

.field public static RESULT_IDS:Ljava/lang/String;

.field private static sInstance:Lcom/cmplay/ad/Admob/AdmobAds;


# instance fields
.field private mAdListener:Lcom/google/android/gms/ads/AdListener;

.field private mIAdListener:Lcom/cmplay/ad/c;

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private mReqAdSource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cmplay/ad/b;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mReqAdSource:I

    .line 144
    new-instance v0, Lcom/cmplay/ad/Admob/AdmobAds$1;

    invoke-direct {v0, p0}, Lcom/cmplay/ad/Admob/AdmobAds$1;-><init>(Lcom/cmplay/ad/Admob/AdmobAds;)V

    iput-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mAdListener:Lcom/google/android/gms/ads/AdListener;

    .line 45
    invoke-static {}, Lcom/cmplay/util/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "ca-app-pub-5208424237196506/4039859676"

    sput-object v0, Lcom/cmplay/ad/Admob/AdmobAds;->RESULT_IDS:Ljava/lang/String;

    .line 59
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/cmplay/util/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "ca-app-pub-5208424237196506/7426658072"

    sput-object v0, Lcom/cmplay/ad/Admob/AdmobAds;->RESULT_IDS:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {}, Lcom/cmplay/util/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    const-string v0, "ca-app-pub-6693792149034582/4691697639"

    sput-object v0, Lcom/cmplay/ad/Admob/AdmobAds;->RESULT_IDS:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "ca-app-pub-6693792149034582/8120114556"

    sput-object v0, Lcom/cmplay/ad/Admob/AdmobAds;->RESULT_IDS:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/cmplay/ad/Admob/AdmobAds;)Lcom/cmplay/ad/c;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/AdmobAds;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mIAdListener:Lcom/cmplay/ad/c;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cmplay/ad/Admob/AdmobAds;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/AdmobAds;
    .param p1, "x1"    # Lcom/google/android/gms/ads/InterstitialAd;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cmplay/ad/Admob/AdmobAds;)I
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/AdmobAds;

    .prologue
    .line 28
    iget v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mReqAdSource:I

    return v0
.end method

.method public static getInstance()Lcom/cmplay/ad/Admob/AdmobAds;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/cmplay/ad/Admob/AdmobAds;->sInstance:Lcom/cmplay/ad/Admob/AdmobAds;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lcom/cmplay/ad/Admob/AdmobAds;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/cmplay/ad/Admob/AdmobAds;->sInstance:Lcom/cmplay/ad/Admob/AdmobAds;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/cmplay/ad/Admob/AdmobAds;

    invoke-direct {v0}, Lcom/cmplay/ad/Admob/AdmobAds;-><init>()V

    sput-object v0, Lcom/cmplay/ad/Admob/AdmobAds;->sInstance:Lcom/cmplay/ad/Admob/AdmobAds;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lcom/cmplay/ad/Admob/AdmobAds;->sInstance:Lcom/cmplay/ad/Admob/AdmobAds;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mReqAdSource:I

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 85
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    sget-object v1, Lcom/cmplay/ad/Admob/AdmobAds;->RESULT_IDS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mAdListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 87
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    nop

    nop

    nop

    .line 89
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mReqAdSource:I

    const/16 v4, 0x65

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 90
    const-string v0, "admob"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private newRequest()V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/cmplay/ad/Admob/AdmobAds;->init()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string v0, "admob"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    nop

    nop

    nop

    .line 106
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mReqAdSource:I

    const/16 v4, 0x65

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    goto :goto_0
.end method

.method private static reportToUmeng(Ljava/lang/String;)V
    .locals 6
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    const-string v1, "mcc"

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/util/t;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lcom/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    return-void
.end method


# virtual methods
.method public canShow(I)Z
    .locals 1
    .param p1, "reportFrom"    # I

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 76
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 77
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 78
    invoke-direct {p0}, Lcom/cmplay/ad/Admob/AdmobAds;->init()V

    .line 79
    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mReqAdSource:I

    .line 136
    invoke-direct {p0}, Lcom/cmplay/ad/Admob/AdmobAds;->newRequest()V

    .line 137
    return-void
.end method

.method public setListener(Lcom/cmplay/ad/c;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/ad/c;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mIAdListener:Lcom/cmplay/ad/c;

    .line 142
    return-void
.end method

.method public show(I)Z
    .locals 4
    .param p1, "reportFrom"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "admob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show---adapter name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/InterstitialAd;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdmobAds;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v0, 0x1

    .line 129
    :cond_0
    :goto_0
    const-string v1, "admob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show() + isShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return v0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
