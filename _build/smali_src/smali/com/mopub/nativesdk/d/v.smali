.class final Lcom/mopub/nativesdk/d/v;
.super Ljava/lang/Object;
.source "ThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Ljava/lang/Runnable;

.field private synthetic d:Z

.field private synthetic e:Landroid/os/Looper;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/mopub/nativesdk/d/v;->a:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/mopub/nativesdk/d/v;->d:Z

    iput-object p3, p0, Lcom/mopub/nativesdk/d/v;->e:Landroid/os/Looper;

    iput-object p4, p0, Lcom/mopub/nativesdk/d/v;->b:Landroid/os/Handler;

    iput-object p5, p0, Lcom/mopub/nativesdk/d/v;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mopub/nativesdk/d/v;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 279
    iget-boolean v0, p0, Lcom/mopub/nativesdk/d/v;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativesdk/d/v;->e:Landroid/os/Looper;

    invoke-static {}, Lcom/mopub/nativesdk/d/s;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 280
    :cond_0
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativesdk/d/w;

    invoke-direct {v1, p0}, Lcom/mopub/nativesdk/d/w;-><init>(Lcom/mopub/nativesdk/d/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    :goto_0
    return-void

    .line 288
    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativesdk/d/v;->e:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mopub/nativesdk/d/x;

    invoke-direct {v1, p0}, Lcom/mopub/nativesdk/d/x;-><init>(Lcom/mopub/nativesdk/d/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativesdk/d/v;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
