.class final Lcom/mopub/nativesdk/c/i;
.super Landroid/os/Handler;
.source "InstalledPkgLoader.java"


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/c/e;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/c/e;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mopub/nativesdk/c/i;->a:Lcom/mopub/nativesdk/c/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 35
    iget-object v0, p0, Lcom/mopub/nativesdk/c/i;->a:Lcom/mopub/nativesdk/c/e;

    invoke-static {v0}, Lcom/mopub/nativesdk/c/e;->a(Lcom/mopub/nativesdk/c/e;)Lcom/mopub/nativesdk/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/mopub/nativesdk/c/i;->a:Lcom/mopub/nativesdk/c/e;

    invoke-static {v0}, Lcom/mopub/nativesdk/c/e;->a(Lcom/mopub/nativesdk/c/e;)Lcom/mopub/nativesdk/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativesdk/c/i;->a:Lcom/mopub/nativesdk/c/e;

    invoke-static {v1}, Lcom/mopub/nativesdk/c/e;->b(Lcom/mopub/nativesdk/c/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/c/k;->a(Ljava/util/Map;)V

    .line 39
    :cond_0
    return-void
.end method
