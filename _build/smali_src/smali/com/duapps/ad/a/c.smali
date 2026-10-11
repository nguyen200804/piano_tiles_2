.class public Lcom/duapps/ad/a/c;
.super Lcom/google/android/gms/ads/AdListener;
.source "NativeAdAMWrapper.java"

# interfaces
.implements Lcom/duapps/ad/entity/a/a;


# instance fields
.field private a:Lcom/duapps/ad/a/b;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/duapps/ad/b;

.field private e:Lcom/duapps/ad/a/d;

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/a/c;->b:Landroid/content/Context;

    .line 33
    iput p2, p0, Lcom/duapps/ad/a/c;->c:I

    .line 34
    iput-object p3, p0, Lcom/duapps/ad/a/c;->g:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private a(Landroid/view/View;Lcom/duapps/ad/a/b;)V
    .locals 1

    .prologue
    .line 191
    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    if-eqz v0, :cond_1

    .line 192
    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    iget-object v0, p2, Lcom/duapps/ad/a/b;->b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    if-eqz v0, :cond_2

    .line 194
    check-cast p1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    iget-object v0, p2, Lcom/duapps/ad/a/b;->a:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    goto :goto_0

    .line 195
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 196
    check-cast p1, Landroid/view/ViewGroup;

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/duapps/ad/a/c;->a(Landroid/view/View;Lcom/duapps/ad/a/b;)V

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/duapps/ad/a/c;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    iget-object v0, v0, Lcom/duapps/ad/a/b;->b:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    iget-object v0, v0, Lcom/duapps/ad/a/b;->a:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v0, :cond_2

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    invoke-direct {p0, p1, v0}, Lcom/duapps/ad/a/c;->a(Landroid/view/View;Lcom/duapps/ad/a/b;)V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/a/c;->b:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/a/c;->c:I

    iget-object v2, p0, Lcom/duapps/ad/a/c;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/duapps/ad/a/c;->b(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public a(Lcom/duapps/ad/a/b;)V
    .locals 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/a/c;->f:J

    .line 40
    return-void
.end method

.method public a(Lcom/duapps/ad/a/d;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    .line 213
    return-void
.end method

.method public a(Lcom/duapps/ad/e;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/duapps/ad/a/c;->g:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/duapps/ad/a/c;->f:J

    sub-long/2addr v0, v2

    .line 64
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/duapps/ad/a/c;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/a/b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/duapps/ad/a/c;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/a/b;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/duapps/ad/a/c;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/a/b;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/duapps/ad/a/c;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/a/b;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/duapps/ad/a/c;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/a/b;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/duapps/ad/a/c;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/a/b;->h()F

    move-result v0

    goto :goto_0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/duapps/ad/a/c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x4

    .line 155
    :goto_0
    return v0

    .line 152
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string v0, "admob"

    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/b;

    return-object v0
.end method

.method public onAdClosed()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    invoke-interface {v0}, Lcom/duapps/ad/a/d;->d()V

    .line 220
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    invoke-interface {v0, p1}, Lcom/duapps/ad/a/d;->a(I)V

    .line 227
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    invoke-interface {v0}, Lcom/duapps/ad/a/d;->c()V

    .line 234
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    invoke-interface {v0}, Lcom/duapps/ad/a/d;->b()V

    .line 251
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/duapps/ad/a/c;->d:Lcom/duapps/ad/b;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/duapps/ad/a/c;->d:Lcom/duapps/ad/b;

    invoke-interface {v0}, Lcom/duapps/ad/b;->a()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/duapps/ad/a/c;->e:Lcom/duapps/ad/a/d;

    invoke-interface {v0}, Lcom/duapps/ad/a/d;->a()V

    .line 244
    :cond_1
    return-void
.end method
