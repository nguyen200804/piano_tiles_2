.class public Lcom/example/luckywheel/ad/googlead/admob/a;
.super Lcom/example/luckywheel/ad/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ad/b;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/ads/formats/NativeAd;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/example/luckywheel/ad/googlead/admob/c;->a()Lcom/example/luckywheel/ad/googlead/admob/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/example/luckywheel/ad/googlead/admob/c;->a(Lcom/google/android/gms/ads/formats/NativeAd;)V

    new-instance v0, Lcom/example/luckywheel/ad/d;

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/googlead/admob/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/example/luckywheel/ad/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/googlead/admob/a;->b()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/example/luckywheel/ad/d;->a(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/admob/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/example/luckywheel/ad/googlead/admob/a;Landroid/content/Context;Lcom/google/android/gms/ads/formats/NativeAd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/example/luckywheel/ad/googlead/admob/a;->a(Landroid/content/Context;Lcom/google/android/gms/ads/formats/NativeAd;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/example/luckywheel/b/a;->a()Lcom/example/luckywheel/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/googlead/admob/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/luckywheel/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/example/luckywheel/ad/h$a;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/googlead/admob/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/example/luckywheel/ad/googlead/admob/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/example/luckywheel/ad/googlead/admob/f;-><init>(Lcom/example/luckywheel/ad/googlead/admob/a;Landroid/content/Context;Lcom/example/luckywheel/ad/h$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/example/luckywheel/ad/googlead/admob/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/example/luckywheel/ad/googlead/admob/e;-><init>(Lcom/example/luckywheel/ad/googlead/admob/a;Landroid/content/Context;Lcom/example/luckywheel/ad/h$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/example/luckywheel/ad/googlead/admob/d;

    invoke-direct {v1, p0}, Lcom/example/luckywheel/ad/googlead/admob/d;-><init>(Lcom/example/luckywheel/ad/googlead/admob/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    nop

    nop

    nop

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "admob_native"

    return-object v0
.end method
