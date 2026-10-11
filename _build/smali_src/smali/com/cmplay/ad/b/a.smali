.class public Lcom/cmplay/ad/b/a;
.super Lcom/cmplay/ad/b;
.source "FacebookVideoAds.java"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# static fields
.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/cmplay/ad/b/a;


# instance fields
.field private a:Lcom/facebook/ads/RewardedVideoAd;

.field private d:Z

.field private e:Lcom/cmplay/ad/c;

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/cmplay/ad/b;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/ad/b/a;->d:Z

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/cmplay/ad/b/a;->f:I

    .line 28
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/cmplay/ad/b/a;->d:Z

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "FacebookVideoAds"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-void
.end method

.method public static b()Lcom/cmplay/ad/b/a;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/cmplay/ad/b/a;->c:Lcom/cmplay/ad/b/a;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/cmplay/ad/b/a;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/cmplay/ad/b/a;->c:Lcom/cmplay/ad/b/a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/cmplay/ad/b/a;

    invoke-direct {v0}, Lcom/cmplay/ad/b/a;-><init>()V

    sput-object v0, Lcom/cmplay/ad/b/a;->c:Lcom/cmplay/ad/b/a;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/cmplay/ad/b/a;->c:Lcom/cmplay/ad/b/a;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "loadRewardedVideoAd"

    invoke-direct {p0, v0}, Lcom/cmplay/ad/b/a;->a(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/cmplay/ad/b/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p0}, Lcom/cmplay/ad/b/a;->a()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "1642150546050422_1885510361714438"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    .line 54
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/RewardedVideoAd;->setAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)V

    .line 55
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    nop

    nop

    nop

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    nop

    nop

    nop

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/cmplay/ad/b/a;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 34
    :cond_0
    sget-object v0, Lcom/cmplay/ad/b/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public canShow(I)Z
    .locals 4
    .param p1, "reportFrom"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canshow()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/ad/b/a;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    :cond_1
    move v1, v2

    .line 132
    goto :goto_1
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdClicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/ad/b/a;->a(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/ad/b/a;->a(Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget v3, p0, Lcom/cmplay/ad/b/a;->f:I

    const/4 v4, 0x6

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-super {p0, p1}, Lcom/cmplay/ad/b;->onCreate(Landroid/app/Activity;)V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cmplay/ad/b/a;->b:Ljava/lang/ref/WeakReference;

    .line 66
    iput v1, p0, Lcom/cmplay/ad/b/a;->f:I

    .line 67
    invoke-direct {p0}, Lcom/cmplay/ad/b/a;->c()V

    .line 68
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v2, 0x0

    iget v3, p0, Lcom/cmplay/ad/b/a;->f:I

    const/4 v4, 0x6

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 69
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->destroy()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lcom/cmplay/ad/b;->onDestroy(Landroid/app/Activity;)V

    .line 165
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "adError"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/ad/b/a;->a(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    iget v3, p0, Lcom/cmplay/ad/b/a;->f:I

    const/4 v4, 0x6

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 103
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoggingImpression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/ad/b/a;->a(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->e:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->e:Lcom/cmplay/ad/c;

    invoke-interface {v0}, Lcom/cmplay/ad/c;->a()V

    .line 96
    :cond_0
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 127
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    return-void
.end method

.method public onRewardedVideoClosed()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v0, "onRewardedVideoClosed"

    invoke-direct {p0, v0}, Lcom/cmplay/ad/b/a;->a(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/cmplay/ad/b/a;->f:I

    .line 82
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->e:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->e:Lcom/cmplay/ad/c;

    invoke-interface {v0, v2}, Lcom/cmplay/ad/c;->a(Z)V

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/cmplay/ad/b/a;->c()V

    .line 86
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v1, 0x1

    iget v3, p0, Lcom/cmplay/ad/b/a;->f:I

    const/4 v4, 0x6

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 87
    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "onRewardedVideoCompleted"

    invoke-direct {p0, v0}, Lcom/cmplay/ad/b/a;->a(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public setListener(Lcom/cmplay/ad/c;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/ad/c;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cmplay/ad/b/a;->e:Lcom/cmplay/ad/c;

    .line 150
    return-void
.end method

.method public show(I)Z
    .locals 1
    .param p1, "reportFrom"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/cmplay/ad/b/a;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->show()Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
