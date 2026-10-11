.class public Lcom/example/luckywheel/ad/googlead/admob/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/example/luckywheel/ad/googlead/admob/c;


# instance fields
.field private b:Lcom/example/luckywheel/ui/e;

.field private c:Lcom/google/android/gms/ads/formats/NativeAd;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/example/luckywheel/ad/googlead/admob/c;
    .locals 2

    sget-object v0, Lcom/example/luckywheel/ad/googlead/admob/c;->a:Lcom/example/luckywheel/ad/googlead/admob/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/example/luckywheel/ad/googlead/admob/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/luckywheel/ad/googlead/admob/c;->a:Lcom/example/luckywheel/ad/googlead/admob/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/luckywheel/ad/googlead/admob/c;

    invoke-direct {v0}, Lcom/example/luckywheel/ad/googlead/admob/c;-><init>()V

    sput-object v0, Lcom/example/luckywheel/ad/googlead/admob/c;->a:Lcom/example/luckywheel/ad/googlead/admob/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/example/luckywheel/ad/googlead/admob/c;->a:Lcom/example/luckywheel/ad/googlead/admob/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/example/luckywheel/ui/e;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/c;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/example/luckywheel/ui/e;->c()V

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/example/luckywheel/ad/googlead/admob/c;->b:Lcom/example/luckywheel/ui/e;

    invoke-static {p1}, Lcom/example/luckywheel/ad/googlead/admob/NativeAdActivity;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/formats/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ad/googlead/admob/c;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    return-void
.end method

.method public b()Lcom/example/luckywheel/ui/e;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/c;->b:Lcom/example/luckywheel/ui/e;

    return-object v0
.end method

.method public c()Lcom/google/android/gms/ads/formats/NativeAd;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/c;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/admob/c;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    return-void
.end method
