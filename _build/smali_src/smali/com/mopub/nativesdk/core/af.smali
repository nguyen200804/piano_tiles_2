.class final Lcom/mopub/nativesdk/core/af;
.super Ljava/lang/Object;
.source "RRManager.java"

# interfaces
.implements Lcom/mopub/nativesdk/c/l;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mopub/nativesdk/core/w;

.field private synthetic c:Lcom/mopub/nativesdk/core/n;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;Lcom/mopub/nativesdk/core/w;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/mopub/nativesdk/core/af;->c:Lcom/mopub/nativesdk/core/n;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/af;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/nativesdk/core/af;->b:Lcom/mopub/nativesdk/core/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 223
    if-nez p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 229
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/mopub/nativesdk/core/af;->c:Lcom/mopub/nativesdk/core/n;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/Campaign;

    new-instance v2, Lcom/mopub/nativesdk/core/ag;

    invoke-direct {v2, p0, p1}, Lcom/mopub/nativesdk/core/ag;-><init>(Lcom/mopub/nativesdk/core/af;Ljava/util/List;)V

    invoke-static {v1, v0, v2}, Lcom/mopub/nativesdk/core/n;->a(Lcom/mopub/nativesdk/core/n;Lcom/mopub/nativesdk/Campaign;Lcom/mopub/nativesdk/core/w;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method
