.class public Lcom/duapps/ad/a/b;
.super Ljava/lang/Object;
.source "AdmobNativeAd.java"


# instance fields
.field public a:Lcom/google/android/gms/ads/formats/NativeContentAd;

.field public b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/duapps/ad/a/b;->b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/duapps/ad/a/b;->a:Lcom/google/android/gms/ads/formats/NativeContentAd;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/duapps/ad/a/b;->b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/duapps/ad/a/b;->a:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/duapps/ad/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/duapps/ad/a/b;->b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/duapps/ad/a/b;->a:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/duapps/ad/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/duapps/ad/a/b;->b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/duapps/ad/a/b;->a:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/duapps/ad/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/duapps/ad/a/b;->b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/duapps/ad/a/b;->a:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/duapps/ad/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/duapps/ad/a/b;->b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/duapps/ad/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/duapps/ad/a/b;->b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/duapps/ad/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/duapps/ad/a/b;->a:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()F
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/duapps/ad/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/duapps/ad/a/b;->b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40900000    # 4.5f

    goto :goto_0
.end method
