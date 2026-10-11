.class final Lcom/mopub/nativesdk/core/ag;
.super Ljava/lang/Object;
.source "RRManager.java"

# interfaces
.implements Lcom/mopub/nativesdk/core/w;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/mopub/nativesdk/core/af;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/af;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/mopub/nativesdk/core/ag;->b:Lcom/mopub/nativesdk/core/af;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/ag;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/mopub/nativesdk/core/ag;->b:Lcom/mopub/nativesdk/core/af;

    iget-object v1, v0, Lcom/mopub/nativesdk/core/af;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/mopub/nativesdk/core/ag;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/mopub/nativesdk/core/ag;->b:Lcom/mopub/nativesdk/core/af;

    iget-object v0, v0, Lcom/mopub/nativesdk/core/af;->b:Lcom/mopub/nativesdk/core/w;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mopub/nativesdk/core/ag;->b:Lcom/mopub/nativesdk/core/af;

    iget-object v1, v0, Lcom/mopub/nativesdk/core/af;->b:Lcom/mopub/nativesdk/core/w;

    iget-object v0, p0, Lcom/mopub/nativesdk/core/ag;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/mopub/nativesdk/core/w;->a(Ljava/lang/String;J)V

    .line 238
    :cond_0
    return-void
.end method
