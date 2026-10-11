.class public Lcom/cmplay/ad/d/a;
.super Lcom/cmplay/ad/b;
.source "MopubInterstitialADS.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# static fields
.field private static b:Lcom/cmplay/ad/d/a;


# instance fields
.field a:Lcom/mopub/mobileads/MoPubInterstitial;

.field private c:Ljava/lang/String;

.field private d:Lcom/cmplay/ad/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cmplay/ad/b;-><init>()V

    .line 23
    const-string v0, "e9e18c808b23464a8b4bd7cb330c737d"

    iput-object v0, p0, Lcom/cmplay/ad/d/a;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Lcom/cmplay/ad/d/a;->prepare()V

    .line 30
    return-void
.end method

.method public static a()Lcom/cmplay/ad/d/a;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/cmplay/ad/d/a;->b:Lcom/cmplay/ad/d/a;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/cmplay/ad/d/a;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/cmplay/ad/d/a;->b:Lcom/cmplay/ad/d/a;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/cmplay/ad/d/a;

    invoke-direct {v0}, Lcom/cmplay/ad/d/a;-><init>()V

    sput-object v0, Lcom/cmplay/ad/d/a;->b:Lcom/cmplay/ad/d/a;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/cmplay/ad/d/a;->b:Lcom/cmplay/ad/d/a;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public canShow(I)Z
    .locals 1
    .param p1, "reportFrom"    # I

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 71
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmplay/ad/d/a;->d:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/cmplay/ad/d/a;->d:Lcom/cmplay/ad/c;

    invoke-interface {v0}, Lcom/cmplay/ad/c;->c()V

    .line 80
    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 55
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 48
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cmplay/ad/d/a;->d:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/cmplay/ad/d/a;->d:Lcom/cmplay/ad/c;

    invoke-interface {v0}, Lcom/cmplay/ad/c;->b()V

    .line 64
    :cond_0
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    invoke-static {p1}, Lcom/mopub/common/MoPub;->onPause(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-static {p1}, Lcom/mopub/common/MoPub;->onResume(Landroid/app/Activity;)V

    .line 87
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cmplay/ad/d/a;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/ad/d/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/ad/d/a;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 101
    iget-object v0, p0, Lcom/cmplay/ad/d/a;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/cmplay/ad/d/a;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmplay/ad/d/a;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/cmplay/ad/d/a;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 105
    :cond_1
    return-void
.end method

.method public setListener(Lcom/cmplay/ad/c;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/ad/c;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cmplay/ad/d/a;->d:Lcom/cmplay/ad/c;

    .line 129
    return-void
.end method

.method public show(I)Z
    .locals 4
    .param p1, "reportFrom"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/cmplay/ad/d/a;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/cmplay/ad/d/a;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :cond_0
    :goto_0
    const-string v1, "MopubInterstitialADS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MopubInterstitialADS isShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return v0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
