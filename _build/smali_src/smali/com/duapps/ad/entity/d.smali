.class public Lcom/duapps/ad/entity/d;
.super Ljava/lang/Object;
.source "NativeAdFBWrapper.java"

# interfaces
.implements Lcom/duapps/ad/entity/a/a;
.implements Lcom/facebook/ads/AdListener;


# static fields
.field private static final g:Lcom/duapps/ad/entity/a;


# instance fields
.field private a:Lcom/facebook/ads/NativeAd;

.field private b:Lcom/duapps/ad/entity/a;

.field private c:Ljava/lang/String;

.field private volatile d:Z

.field private e:Landroid/content/Context;

.field private f:I

.field private h:J

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/duapps/ad/entity/d$1;

    invoke-direct {v0}, Lcom/duapps/ad/entity/d$1;-><init>()V

    sput-object v0, Lcom/duapps/ad/entity/d;->g:Lcom/duapps/ad/entity/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/duapps/ad/entity/d;->g:Lcom/duapps/ad/entity/a;

    iput-object v0, p0, Lcom/duapps/ad/entity/d;->b:Lcom/duapps/ad/entity/a;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/entity/d;->d:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duapps/ad/entity/d;->h:J

    .line 65
    iput-object p1, p0, Lcom/duapps/ad/entity/d;->e:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/duapps/ad/entity/d;->c:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/duapps/ad/entity/d;->f:I

    .line 68
    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    .line 69
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 70
    iput-object p4, p0, Lcom/duapps/ad/entity/d;->i:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->e:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/entity/d;->f:I

    iget-object v2, p0, Lcom/duapps/ad/entity/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/stats/h;->c(Landroid/content/Context;ILjava/lang/String;)V

    .line 180
    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/e;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public a(Lcom/duapps/ad/entity/a;)V
    .locals 1

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    sget-object v0, Lcom/duapps/ad/entity/d;->g:Lcom/duapps/ad/entity/a;

    iput-object v0, p0, Lcom/duapps/ad/entity/d;->b:Lcom/duapps/ad/entity/a;

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/duapps/ad/entity/d;->b:Lcom/duapps/ad/entity/a;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/duapps/ad/entity/d;->i:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/duapps/ad/entity/d;->h:J

    sub-long/2addr v0, v2

    .line 50
    const-string v2, "NativeAdFBWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValid()...ttl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", FacebookCacheTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/entity/d;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/duapps/ad/base/m;->q(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/duapps/ad/entity/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/duapps/ad/base/m;->q(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 172
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/duapps/ad/entity/d;->g:Lcom/duapps/ad/entity/a;

    iput-object v0, p0, Lcom/duapps/ad/entity/d;->b:Lcom/duapps/ad/entity/a;

    .line 119
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->destroy()V

    .line 120
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()F
    .locals 6

    .prologue
    .line 131
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    const-string v1, "NativeAdFBWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdStarRating rating.getValue() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 138
    :goto_0
    return v0

    .line 137
    :cond_0
    const-string v0, "NativeAdFBWrapper"

    const-string v1, "getAdStarRating no rating, we get default rating."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const v0, 0x4091c28f    # 4.555f

    goto :goto_0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x2

    return v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "fb"

    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method

.method public n()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->b:Lcom/duapps/ad/entity/a;

    invoke-interface {v0, p0, v1}, Lcom/duapps/ad/entity/a;->a(Lcom/duapps/ad/entity/d;Z)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-boolean v0, p0, Lcom/duapps/ad/entity/d;->d:Z

    if-nez v0, :cond_0

    .line 78
    iput-boolean v1, p0, Lcom/duapps/ad/entity/d;->d:Z

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->a:Lcom/facebook/ads/NativeAd;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->b:Lcom/duapps/ad/entity/a;

    invoke-interface {v0, p0}, Lcom/duapps/ad/entity/a;->a(Lcom/duapps/ad/entity/d;)V

    .line 110
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->e:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/entity/d;->f:I

    iget-object v2, p0, Lcom/duapps/ad/entity/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/stats/h;->d(Landroid/content/Context;ILjava/lang/String;)V

    .line 111
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/entity/d;->h:J

    .line 104
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->b:Lcom/duapps/ad/entity/a;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/duapps/ad/entity/a;->a(Lcom/duapps/ad/entity/d;Z)V

    .line 105
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/duapps/ad/entity/d;->b:Lcom/duapps/ad/entity/a;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/entity/a;->a(ILjava/lang/String;)V

    .line 99
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
