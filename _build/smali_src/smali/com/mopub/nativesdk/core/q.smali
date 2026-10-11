.class final Lcom/mopub/nativesdk/core/q;
.super Ljava/lang/Object;
.source "AKService.java"

# interfaces
.implements Lcom/mopub/nativesdk/ClickListener;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/AdListener;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/mopub/nativesdk/core/a;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/a;Lcom/mopub/nativesdk/AdListener;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/mopub/nativesdk/core/q;->c:Lcom/mopub/nativesdk/core/a;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/q;->a:Lcom/mopub/nativesdk/AdListener;

    iput-object p3, p0, Lcom/mopub/nativesdk/core/q;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClickFailed(Lcom/mopub/nativesdk/Campaign;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 627
    iget-object v0, p0, Lcom/mopub/nativesdk/core/q;->c:Lcom/mopub/nativesdk/core/a;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/core/a;)I

    .line 628
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 629
    iget-object v1, p0, Lcom/mopub/nativesdk/core/q;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 630
    iget-object v1, p0, Lcom/mopub/nativesdk/core/q;->c:Lcom/mopub/nativesdk/core/a;

    iget-object v2, p0, Lcom/mopub/nativesdk/core/q;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/mopub/nativesdk/core/q;->a:Lcom/mopub/nativesdk/AdListener;

    invoke-static {v1, v2, v0, v3}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/core/a;Ljava/util/List;ILcom/mopub/nativesdk/AdListener;)V

    .line 631
    return-void
.end method

.method public final onAdClicked(Lcom/mopub/nativesdk/Campaign;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 606
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/mopub/nativesdk/core/q;->a:Lcom/mopub/nativesdk/AdListener;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/mopub/nativesdk/core/q;->a:Lcom/mopub/nativesdk/AdListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativesdk/AdListener;->onPreLoadFinish(Lcom/mopub/nativesdk/Campaign;)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativesdk/core/q;->c:Lcom/mopub/nativesdk/core/a;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/core/a;)I

    .line 614
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 615
    iget-object v1, p0, Lcom/mopub/nativesdk/core/q;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 616
    iget-object v1, p0, Lcom/mopub/nativesdk/core/q;->c:Lcom/mopub/nativesdk/core/a;

    iget-object v2, p0, Lcom/mopub/nativesdk/core/q;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/mopub/nativesdk/core/q;->a:Lcom/mopub/nativesdk/AdListener;

    invoke-static {v1, v2, v0, v3}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/core/a;Ljava/util/List;ILcom/mopub/nativesdk/AdListener;)V

    goto :goto_0
.end method
