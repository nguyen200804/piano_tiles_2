.class Lcom/example/luckywheel/ad/googlead/admob/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/example/luckywheel/ad/h$a;

.field final synthetic c:Lcom/example/luckywheel/ad/googlead/admob/a;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ad/googlead/admob/a;Landroid/content/Context;Lcom/example/luckywheel/ad/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ad/googlead/admob/e;->c:Lcom/example/luckywheel/ad/googlead/admob/a;

    iput-object p2, p0, Lcom/example/luckywheel/ad/googlead/admob/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/example/luckywheel/ad/googlead/admob/e;->b:Lcom/example/luckywheel/ad/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/e;->c:Lcom/example/luckywheel/ad/googlead/admob/a;

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/admob/e;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/example/luckywheel/ad/googlead/admob/a;->a(Lcom/example/luckywheel/ad/googlead/admob/a;Landroid/content/Context;Lcom/google/android/gms/ads/formats/NativeAd;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/e;->b:Lcom/example/luckywheel/ad/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/e;->b:Lcom/example/luckywheel/ad/h$a;

    invoke-interface {v0}, Lcom/example/luckywheel/ad/h$a;->a()V

    :cond_0
    return-void
.end method
