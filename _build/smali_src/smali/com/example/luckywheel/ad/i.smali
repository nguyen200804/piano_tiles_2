.class Lcom/example/luckywheel/ad/i;
.super Lcom/google/android/gms/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ad/h$b;

.field final synthetic b:Lcom/example/luckywheel/ad/c;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ad/c;Lcom/example/luckywheel/ad/h$b;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ad/i;->b:Lcom/example/luckywheel/ad/c;

    iput-object p2, p0, Lcom/example/luckywheel/ad/i;->a:Lcom/example/luckywheel/ad/h$b;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    iget-object v0, p0, Lcom/example/luckywheel/ad/i;->a:Lcom/example/luckywheel/ad/h$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/i;->a:Lcom/example/luckywheel/ad/h$b;

    invoke-interface {v0}, Lcom/example/luckywheel/ad/h$b;->b()V

    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/ad/i;->b:Lcom/example/luckywheel/ad/c;

    invoke-static {v0}, Lcom/example/luckywheel/ad/c;->a(Lcom/example/luckywheel/ad/c;)Lcom/example/luckywheel/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/i;->b:Lcom/example/luckywheel/ad/c;

    invoke-static {v0}, Lcom/example/luckywheel/ad/c;->a(Lcom/example/luckywheel/ad/c;)Lcom/example/luckywheel/c/a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/example/luckywheel/c/a;->a(B)V

    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    iget-object v0, p0, Lcom/example/luckywheel/ad/i;->a:Lcom/example/luckywheel/ad/h$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/i;->a:Lcom/example/luckywheel/ad/h$b;

    invoke-interface {v0}, Lcom/example/luckywheel/ad/h$b;->a()V

    :cond_0
    return-void
.end method
