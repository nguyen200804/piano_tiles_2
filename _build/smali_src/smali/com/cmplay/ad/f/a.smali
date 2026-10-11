.class public Lcom/cmplay/ad/f/a;
.super Lcom/cmplay/ad/b;
.source "UnityADS.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsListener;


# static fields
.field private static b:Lcom/cmplay/ad/f/a;

.field private static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/cmplay/ad/c;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cmplay/ad/b;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/ad/f/a;->c:Z

    .line 35
    return-void
.end method

.method public static a()Lcom/cmplay/ad/f/a;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/cmplay/ad/f/a;->b:Lcom/cmplay/ad/f/a;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/cmplay/ad/f/a;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/cmplay/ad/f/a;->b:Lcom/cmplay/ad/f/a;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/cmplay/ad/f/a;

    invoke-direct {v0}, Lcom/cmplay/ad/f/a;-><init>()V

    sput-object v0, Lcom/cmplay/ad/f/a;->b:Lcom/cmplay/ad/f/a;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/cmplay/ad/f/a;->b:Lcom/cmplay/ad/f/a;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cmplay/ad/f/a;->a()Lcom/cmplay/ad/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/ad/f/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/cmplay/ad/f/a;->a()Lcom/cmplay/ad/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/ad/f/a;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "61378"

    invoke-static {v0, v2, p0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 73
    iput-boolean v1, p0, Lcom/cmplay/ad/f/a;->c:Z

    .line 74
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x2

    sget v5, Lcom/cmplay/ad/a;->f:I

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/cmplay/ad/f/a;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    .line 52
    :cond_0
    sget-object v0, Lcom/cmplay/ad/f/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public canShow(I)Z
    .locals 2
    .param p1, "reportFrom"    # I

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-boolean v1, p0, Lcom/cmplay/ad/f/a;->c:Z

    if-nez v1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/cmplay/ad/f/a;->c()V

    .line 124
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "rewardedVideoZone"

    invoke-static {v1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cmplay/ad/f/a;->a()Lcom/cmplay/ad/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/ad/f/a;->b()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/cmplay/ad/b;->onCreate(Landroid/app/Activity;)V

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cmplay/ad/f/a;->d:Ljava/lang/ref/WeakReference;

    .line 60
    invoke-direct {p0}, Lcom/cmplay/ad/f/a;->c()V

    .line 61
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    return-void
.end method

.method public onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 6
    .param p1, "unityAdsError"    # Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 82
    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "finishState"    # Lcom/unity3d/ads/UnityAds$FinishState;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cmplay/ad/f/a;->a:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/cmplay/ad/f/a;->a:Lcom/cmplay/ad/c;

    sget-object v0, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/cmplay/ad/c;->a(Z)V

    .line 97
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 87
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    sget v5, Lcom/cmplay/ad/a;->f:I

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 89
    return-void
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cmplay/ad/f/a;->a:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/cmplay/ad/f/a;->a:Lcom/cmplay/ad/c;

    invoke-interface {v0}, Lcom/cmplay/ad/c;->a()V

    .line 105
    :cond_0
    return-void
.end method

.method public setListener(Lcom/cmplay/ad/c;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/ad/c;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cmplay/ad/f/a;->a:Lcom/cmplay/ad/c;

    .line 143
    return-void
.end method

.method public show(I)Z
    .locals 2
    .param p1, "reportFrom"    # I

    .prologue
    .line 129
    const-string v0, "UnityADS"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cmplay/ad/f/a;->canShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/cmplay/ad/f/a;->a()Lcom/cmplay/ad/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/ad/f/a;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "rewardedVideoZone"

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method
