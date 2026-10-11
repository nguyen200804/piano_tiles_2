.class final Lcom/mopub/nativesdk/core/o;
.super Ljava/lang/Object;
.source "AKService.java"

# interfaces
.implements Lcom/mopub/nativesdk/c/l;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/AdListener;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/a;Lcom/mopub/nativesdk/AdListener;)V
    .locals 0

    .prologue
    .line 456
    iput-object p2, p0, Lcom/mopub/nativesdk/core/o;->a:Lcom/mopub/nativesdk/AdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/mopub/nativesdk/core/o;->a:Lcom/mopub/nativesdk/AdListener;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/mopub/nativesdk/core/o;->a:Lcom/mopub/nativesdk/AdListener;

    const-string v1, "No ads"

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/AdListener;->onLoadFailed(Ljava/lang/String;)V

    .line 471
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 472
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 474
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/Campaign;

    .line 475
    sget-object v2, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 476
    sget-object v2, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 477
    sget-object v2, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 479
    :cond_2
    sget-object v2, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/mopub/nativesdk/core/o;->a:Lcom/mopub/nativesdk/AdListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativesdk/AdListener;->onLoadFinish(Ljava/util/List;)V

    .line 492
    :goto_1
    return-void

    .line 487
    :cond_4
    iget-object v0, p0, Lcom/mopub/nativesdk/core/o;->a:Lcom/mopub/nativesdk/AdListener;

    const-string v1, "No ads"

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/AdListener;->onLoadFailed(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/mopub/nativesdk/core/o;->a:Lcom/mopub/nativesdk/AdListener;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/mopub/nativesdk/core/o;->a:Lcom/mopub/nativesdk/AdListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativesdk/AdListener;->onLoadFailed(Ljava/lang/String;)V

    .line 501
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method
