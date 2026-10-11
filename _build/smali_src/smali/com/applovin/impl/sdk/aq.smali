.class abstract Lcom/applovin/impl/sdk/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/de;
.implements Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field protected final b:Lcom/applovin/sdk/AppLovinLogger;

.field protected final c:Ljava/lang/Object;

.field protected final d:Ljava/util/Map;

.field protected final e:Ljava/util/Map;

.field protected final f:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/aq;->b:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aq;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/aq;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/aq;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aq;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aq;->f:Ljava/util/Set;

    return-void
.end method

.method private h(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ar;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/au;
.end method

.method abstract a(Lcom/applovin/impl/sdk/ay;)Lcom/applovin/impl/sdk/c;
.end method

.method abstract a()Ljava/util/Map;
.end method

.method abstract a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ay;)V
.end method

.method abstract a(Ljava/lang/Object;Lcom/applovin/impl/sdk/c;I)V
.end method

.method public a(Lcom/applovin/impl/sdk/c;Ljava/lang/Object;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/aq;->g(Lcom/applovin/impl/sdk/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/aq;->b(Lcom/applovin/impl/sdk/c;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/ay;
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/aq;->h(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ar;->e()Lcom/applovin/impl/sdk/ay;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Lcom/applovin/impl/sdk/ay;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/aq;->a(Lcom/applovin/impl/sdk/ay;)Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/aq;->f(Lcom/applovin/impl/sdk/c;)V

    return-void
.end method

.method protected b(Lcom/applovin/impl/sdk/c;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to pre-load an ad of spec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->f:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/impl/sdk/aq;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/c;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "PreloadManager"

    const-string v3, "Encountered exception while invoking user callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Lcom/applovin/impl/sdk/c;Ljava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "PreloadManager"

    const-string v3, "Possibly missing prior registered preload callback."

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected c(Lcom/applovin/impl/sdk/ay;)V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/aq;->a(Lcom/applovin/impl/sdk/ay;)Lcom/applovin/impl/sdk/c;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/aq;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/applovin/impl/sdk/aq;->f:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/aq;->h(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ar;->a(Lcom/applovin/impl/sdk/ay;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "PreloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad enqueued: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called additional callback regarding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/applovin/impl/sdk/aq;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ay;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/aq;->b(Lcom/applovin/impl/sdk/ay;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulled ad from network and saved to preload cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "PreloadManager"

    const-string v4, "Additional callback found, skipping enqueue."

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "PreloadManager"

    const-string v3, "Encountered throwable while notifying user callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public c(Lcom/applovin/impl/sdk/c;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/aq;->h(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ar;->c()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lcom/applovin/impl/sdk/c;)V
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/aq;->h(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ar;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ar;->a()I

    move-result v0

    sub-int/2addr v2, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/aq;->f(Lcom/applovin/impl/sdk/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public e(Lcom/applovin/impl/sdk/c;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/aq;->h(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(Lcom/applovin/impl/sdk/c;)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/av;->G:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/aq;->c(Lcom/applovin/impl/sdk/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloading ad for spec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/bo;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/aq;->a(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/au;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bp;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/applovin/impl/sdk/bo;->a(Lcom/applovin/impl/sdk/au;Lcom/applovin/impl/sdk/bp;J)V

    :cond_0
    return-void
.end method

.method g(Lcom/applovin/impl/sdk/c;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aq;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
