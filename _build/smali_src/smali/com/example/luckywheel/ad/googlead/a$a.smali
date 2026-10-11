.class Lcom/example/luckywheel/ad/googlead/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/luckywheel/ad/googlead/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ad/googlead/a;


# direct methods
.method private constructor <init>(Lcom/example/luckywheel/ad/googlead/a;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ad/googlead/a$a;->a:Lcom/example/luckywheel/ad/googlead/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/example/luckywheel/ad/googlead/a;Lcom/example/luckywheel/ad/googlead/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ad/googlead/a$a;-><init>(Lcom/example/luckywheel/ad/googlead/a;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/example/luckywheel/ad/h$a;)V
    .locals 2
    .param p3    # Lcom/example/luckywheel/ad/h$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    new-instance v1, Lcom/example/luckywheel/ad/googlead/c;

    invoke-direct {v1, p0, v0, p3}, Lcom/example/luckywheel/ad/googlead/c;-><init>(Lcom/example/luckywheel/ad/googlead/a$a;Lcom/google/android/gms/ads/InterstitialAd;Lcom/example/luckywheel/ad/h$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    invoke-direct {p0, v0}, Lcom/example/luckywheel/ad/googlead/a$a;->a(Lcom/google/android/gms/ads/InterstitialAd;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/example/luckywheel/ad/googlead/a$a;Landroid/content/Context;Ljava/lang/String;Lcom/example/luckywheel/ad/h$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/example/luckywheel/ad/googlead/a$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/example/luckywheel/ad/h$a;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    :try_start_0
    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
