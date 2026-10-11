.class final Lcom/mopub/nativesdk/b/c;
.super Landroid/os/Handler;
.source "JumpLoader.java"


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/b/b;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/b/b;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mopub/nativesdk/b/c;->a:Lcom/mopub/nativesdk/b/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/mopub/nativesdk/b/c;->a:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->a(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/mopub/nativesdk/b/c;->a:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/mopub/nativesdk/b/c;->a:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->a(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativesdk/b/c;->a:Lcom/mopub/nativesdk/b/b;

    invoke-static {v1}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/b/f;->a(Lcom/mopub/nativesdk/b/e;)V

    .line 42
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativesdk/b/c;->a:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->a(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativesdk/b/c;->a:Lcom/mopub/nativesdk/b/b;

    invoke-static {v1}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/nativesdk/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/b/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
