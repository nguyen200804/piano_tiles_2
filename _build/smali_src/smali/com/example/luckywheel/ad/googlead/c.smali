.class Lcom/example/luckywheel/ad/googlead/c;
.super Lcom/google/android/gms/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/InterstitialAd;

.field final synthetic b:Lcom/example/luckywheel/ad/h$a;

.field final synthetic c:Lcom/example/luckywheel/ad/googlead/a$a;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ad/googlead/a$a;Lcom/google/android/gms/ads/InterstitialAd;Lcom/example/luckywheel/ad/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ad/googlead/c;->c:Lcom/example/luckywheel/ad/googlead/a$a;

    iput-object p2, p0, Lcom/example/luckywheel/ad/googlead/c;->a:Lcom/google/android/gms/ads/InterstitialAd;

    iput-object p3, p0, Lcom/example/luckywheel/ad/googlead/c;->b:Lcom/example/luckywheel/ad/h$a;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/c;->c:Lcom/example/luckywheel/ad/googlead/a$a;

    iget-object v0, v0, Lcom/example/luckywheel/ad/googlead/a$a;->a:Lcom/example/luckywheel/ad/googlead/a;

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/c;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-static {v0, v1}, Lcom/example/luckywheel/ad/googlead/a;->a(Lcom/example/luckywheel/ad/googlead/a;Lcom/google/android/gms/ads/InterstitialAd;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/c;->b:Lcom/example/luckywheel/ad/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/c;->b:Lcom/example/luckywheel/ad/h$a;

    invoke-interface {v0}, Lcom/example/luckywheel/ad/h$a;->a()V

    :cond_0
    return-void
.end method
