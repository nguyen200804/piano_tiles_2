.class final Lcom/mopub/nativesdk/core/k;
.super Ljava/lang/Object;
.source "StrategyManager.java"

# interfaces
.implements Lcom/mopub/nativesdk/c/l;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/core/H;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/H;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mopub/nativesdk/core/k;->a:Lcom/mopub/nativesdk/core/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "strategy load result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    check-cast p1, Lcom/mopub/nativesdk/core/y;

    .line 195
    iget-object v0, p0, Lcom/mopub/nativesdk/core/k;->a:Lcom/mopub/nativesdk/core/H;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/H;->a(Lcom/mopub/nativesdk/core/H;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ak.native.sdk"

    const-string v2, "STRATEGY_NAME"

    .line 1160
    iget-object v3, p1, Lcom/mopub/nativesdk/core/y;->j:Ljava/lang/String;

    .line 195
    invoke-static {v0, v1, v2, v3}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/mopub/nativesdk/core/k;->a:Lcom/mopub/nativesdk/core/H;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/k;->a:Lcom/mopub/nativesdk/core/H;

    .line 2160
    iget-object v2, p1, Lcom/mopub/nativesdk/core/y;->j:Ljava/lang/String;

    .line 198
    invoke-static {v1, v2}, Lcom/mopub/nativesdk/core/H;->a(Lcom/mopub/nativesdk/core/H;Ljava/lang/String;)Lcom/mopub/nativesdk/core/y;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativesdk/core/H;->a(Lcom/mopub/nativesdk/core/H;Lcom/mopub/nativesdk/core/y;)Lcom/mopub/nativesdk/core/y;

    .line 200
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mopub/nativesdk/core/k;->a:Lcom/mopub/nativesdk/core/H;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/H;->b(Lcom/mopub/nativesdk/core/H;)V

    .line 206
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mopub/nativesdk/core/k;->a:Lcom/mopub/nativesdk/core/H;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/H;->b(Lcom/mopub/nativesdk/core/H;)V

    .line 212
    return-void
.end method
