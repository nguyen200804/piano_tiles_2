.class public Lcom/cmplay/ad/Admob/AdmobVideoAds;
.super Lcom/cmplay/ad/b;
.source "AdmobVideoAds.java"


# static fields
.field public static final ADMOB_AD_TYPE:I = 0x1

.field public static final ADMOB_IDS:Ljava/lang/String; = "ca-app-pub-6693792149034582/2722524666"

.field public static final ADX_AD_TYPE:I = 0x2

.field public static final ADX_IDS:Ljava/lang/String; = "ca-mb-app-pub-7828425564722982/8781564921"

.field public static RESULT_IDS:Ljava/lang/String;

.field private static adtype:I

.field private static sInstance:Lcom/cmplay/ad/Admob/AdmobVideoAds;


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field isLoaded:Z

.field private mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private mListener:Lcom/cmplay/ad/c;

.field private source:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "ca-app-pub-6693792149034582/7452119508"

    sput-object v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->RESULT_IDS:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->adtype:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/cmplay/ad/b;-><init>()V

    .line 34
    const-string v0, "AdmobVideoAds"

    iput-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->source:I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->isLoaded:Z

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/AdmobVideoAds;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->adtype:I

    return v0
.end method

.method static synthetic access$200(Lcom/cmplay/ad/Admob/AdmobVideoAds;)I
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/AdmobVideoAds;

    .prologue
    .line 18
    iget v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->source:I

    return v0
.end method

.method static synthetic access$202(Lcom/cmplay/ad/Admob/AdmobVideoAds;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/AdmobVideoAds;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->source:I

    return p1
.end method

.method static synthetic access$300(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Lcom/cmplay/ad/c;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/AdmobVideoAds;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->mListener:Lcom/cmplay/ad/c;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cmplay/ad/Admob/AdmobVideoAds;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/AdmobVideoAds;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->init()V

    return-void
.end method

.method public static getInstance(I)Lcom/cmplay/ad/Admob/AdmobVideoAds;
    .locals 4
    .param p0, "t"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 41
    sget-object v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->sInstance:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/cmplay/ad/Admob/AdmobVideoAds;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->sInstance:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-direct {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;-><init>()V

    sput-object v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->sInstance:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    if-ne p0, v2, :cond_3

    .line 49
    sput v2, Lcom/cmplay/ad/Admob/AdmobVideoAds;->adtype:I

    .line 50
    const-string v0, "ca-app-pub-6693792149034582/2722524666"

    sput-object v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->RESULT_IDS:Ljava/lang/String;

    .line 55
    :cond_2
    :goto_0
    sget-object v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->sInstance:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 51
    :cond_3
    if-ne p0, v3, :cond_2

    .line 52
    sput v3, Lcom/cmplay/ad/Admob/AdmobVideoAds;->adtype:I

    .line 53
    const-string v0, "ca-mb-app-pub-7828425564722982/8781564921"

    sput-object v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->RESULT_IDS:Ljava/lang/String;

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->isLoaded:Z

    .line 78
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 79
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    new-instance v1, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;

    invoke-direct {v1, p0}, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;-><init>(Lcom/cmplay/ad/Admob/AdmobVideoAds;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 140
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    sget-object v2, Lcom/cmplay/ad/Admob/AdmobVideoAds;->RESULT_IDS:Ljava/lang/String;

    nop

    nop

    nop

    .line 142
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/cmplay/ad/Admob/AdmobVideoAds;->RESULT_IDS:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public canShow(I)Z
    .locals 2
    .param p1, "reportFrom"    # I

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-boolean v1, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->isLoaded:Z

    if-eqz v1, :cond_0

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->context:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->init()V

    .line 64
    iput v1, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->source:I

    .line 65
    sget v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->adtype:I

    if-ne v0, v1, :cond_1

    .line 66
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    iget v3, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->source:I

    const/16 v4, 0x8

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->adtype:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 68
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    iget v3, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->source:I

    const/16 v4, 0x9

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    goto :goto_0
.end method

.method public setListener(Lcom/cmplay/ad/c;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/ad/c;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->mListener:Lcom/cmplay/ad/c;

    .line 177
    return-void
.end method

.method public show(I)Z
    .locals 2
    .param p1, "reportFrom"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 163
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->canShow(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v0, 0x1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
