.class public final Lcom/mopub/nativesdk/c/h;
.super Ljava/lang/Object;
.source "InstalledPkgLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/mopub/nativesdk/c/e;->a:Ljava/util/Map;

    .line 27
    iput-object v0, p0, Lcom/mopub/nativesdk/c/e;->b:Lcom/mopub/nativesdk/c/k;

    .line 30
    new-instance v0, Lcom/mopub/nativesdk/c/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mopub/nativesdk/c/i;-><init>(Lcom/mopub/nativesdk/c/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/nativesdk/c/e;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/mopub/nativesdk/c/k;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mopub/nativesdk/c/e;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativesdk/c/e;->a:Ljava/util/Map;

    .line 47
    :cond_0
    iput-object p2, p0, Lcom/mopub/nativesdk/c/e;->b:Lcom/mopub/nativesdk/c/k;

    .line 49
    const/4 v0, 0x0

    new-instance v1, Lcom/mopub/nativesdk/c/j;

    invoke-direct {v1, p0, p1}, Lcom/mopub/nativesdk/c/j;-><init>(Lcom/mopub/nativesdk/c/e;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mopub/nativesdk/d/s;->a(ILjava/lang/Runnable;)V

    .line 80
    return-void
.end method
