.class final Lcom/mopub/nativesdk/core/ah;
.super Ljava/lang/Object;
.source "RRManager.java"

# interfaces
.implements Lcom/mopub/nativesdk/b/f;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/Campaign;

.field private synthetic b:Lcom/mopub/nativesdk/core/w;

.field private synthetic c:Lcom/mopub/nativesdk/core/n;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/n;Lcom/mopub/nativesdk/Campaign;Lcom/mopub/nativesdk/core/w;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/mopub/nativesdk/core/ah;->c:Lcom/mopub/nativesdk/core/n;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/ah;->a:Lcom/mopub/nativesdk/Campaign;

    iput-object p3, p0, Lcom/mopub/nativesdk/core/ah;->b:Lcom/mopub/nativesdk/core/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mopub/nativesdk/b/e;)V
    .locals 6

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p1}, Lcom/mopub/nativesdk/b/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/nativesdk/d/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/mopub/nativesdk/core/ah;->c:Lcom/mopub/nativesdk/core/n;

    iget-object v2, p0, Lcom/mopub/nativesdk/core/ah;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v2}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/nativesdk/core/ah;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v3}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/mopub/nativesdk/core/n;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/mopub/nativesdk/core/ah;->b:Lcom/mopub/nativesdk/core/w;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/mopub/nativesdk/core/ah;->b:Lcom/mopub/nativesdk/core/w;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/mopub/nativesdk/core/w;->a(Ljava/lang/String;J)V

    .line 277
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    return-void
.end method
