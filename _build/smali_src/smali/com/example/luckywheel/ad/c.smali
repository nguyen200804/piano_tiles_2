.class public Lcom/example/luckywheel/ad/c;
.super Lcom/example/luckywheel/ad/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/luckywheel/ad/h",
        "<",
        "Lcom/google/android/gms/ads/InterstitialAd;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/example/luckywheel/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/example/luckywheel/ad/h;-><init>()V

    invoke-static {}, Lcom/example/luckywheel/b/g;->a()Lcom/example/luckywheel/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/b/g;->e()Lcom/example/luckywheel/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ad/c;->e:Lcom/example/luckywheel/c/a;

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/ad/c;)Lcom/example/luckywheel/c/a;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ad/c;->e:Lcom/example/luckywheel/c/a;

    return-object v0
.end method

.method private b(Lcom/example/luckywheel/ad/h$b;)V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/ad/c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/example/luckywheel/ad/i;

    invoke-direct {v1, p0, p1}, Lcom/example/luckywheel/ad/i;-><init>(Lcom/example/luckywheel/ad/c;Lcom/example/luckywheel/ad/h$b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/example/luckywheel/ad/h$b;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ad/c;->b(Lcom/example/luckywheel/ad/h$b;)V

    const-string v1, "new_ad"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdmobAdObject show : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/example/luckywheel/ad/c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/luckywheel/ad/c;->e:Lcom/example/luckywheel/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/c;->e:Lcom/example/luckywheel/c/a;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/example/luckywheel/c/a;->a(B)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/c;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/example/luckywheel/ad/c;->b:I

    const-string v1, "new_ad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdmobAdObject placementId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", priority = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/example/luckywheel/ad/c;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/example/luckywheel/ad/c;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/example/luckywheel/ad/c;->d:J

    iput-object p1, p0, Lcom/example/luckywheel/ad/c;->a:Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/example/luckywheel/ad/c;->a(Lcom/google/android/gms/ads/InterstitialAd;)V

    return-void
.end method

.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/example/luckywheel/ad/c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/example/luckywheel/ad/c;->c:J

    iget-wide v2, p0, Lcom/example/luckywheel/ad/c;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/example/luckywheel/ad/a/a;->a(JJ)Z

    move-result v0

    goto :goto_0
.end method
