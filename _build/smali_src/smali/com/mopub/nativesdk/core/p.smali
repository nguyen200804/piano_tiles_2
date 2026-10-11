.class final Lcom/mopub/nativesdk/core/p;
.super Ljava/lang/Object;
.source "AKService.java"

# interfaces
.implements Lcom/mopub/nativesdk/c/l;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/AdListener;

.field private synthetic b:Lcom/mopub/nativesdk/core/a;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/a;Lcom/mopub/nativesdk/AdListener;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/mopub/nativesdk/core/p;->b:Lcom/mopub/nativesdk/core/a;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/p;->a:Lcom/mopub/nativesdk/AdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 537
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 541
    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/mopub/nativesdk/core/p;->a:Lcom/mopub/nativesdk/AdListener;

    if-eqz v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/mopub/nativesdk/core/p;->a:Lcom/mopub/nativesdk/AdListener;

    const-string v3, "No ads"

    invoke-interface {v2, v3}, Lcom/mopub/nativesdk/AdListener;->onLoadFailed(Ljava/lang/String;)V

    .line 547
    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 549
    iget-object v2, p0, Lcom/mopub/nativesdk/core/p;->b:Lcom/mopub/nativesdk/core/a;

    invoke-static {v2, v1}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/core/a;I)I

    .line 550
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 552
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 553
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/mopub/nativesdk/core/p;->b:Lcom/mopub/nativesdk/core/a;

    iget-object v3, p0, Lcom/mopub/nativesdk/core/p;->a:Lcom/mopub/nativesdk/AdListener;

    invoke-static {v2, v0, v1, v3}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/core/a;Ljava/util/List;ILcom/mopub/nativesdk/AdListener;)V

    .line 559
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/mopub/nativesdk/core/p;->a:Lcom/mopub/nativesdk/AdListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/mopub/nativesdk/core/p;->a:Lcom/mopub/nativesdk/AdListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativesdk/AdListener;->onLoadFailed(Ljava/lang/String;)V

    .line 568
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method
