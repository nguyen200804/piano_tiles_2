.class final Lcom/mopub/nativesdk/d/g;
.super Ljava/lang/Object;
.source "ThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Ljava/lang/Runnable;

.field private synthetic c:Z

.field private synthetic d:Landroid/os/Looper;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLandroid/os/Looper;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mopub/nativesdk/d/g;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/mopub/nativesdk/d/g;->b:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/mopub/nativesdk/d/g;->c:Z

    iput-object p4, p0, Lcom/mopub/nativesdk/d/g;->d:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v0, Lcom/mopub/nativesdk/d/t;

    invoke-direct {v0, p0}, Lcom/mopub/nativesdk/d/t;-><init>(Lcom/mopub/nativesdk/d/g;)V

    .line 238
    :cond_0
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 239
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->a()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mopub/nativesdk/d/g;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 257
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativesdk/d/g;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 261
    iget-boolean v0, p0, Lcom/mopub/nativesdk/d/g;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mopub/nativesdk/d/g;->d:Landroid/os/Looper;

    invoke-static {}, Lcom/mopub/nativesdk/d/s;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 262
    :cond_3
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativesdk/d/g;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    :cond_4
    :goto_1
    :try_start_1
    sget-object v0, Lcom/mopub/nativesdk/d/s;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/nativesdk/d/g;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :goto_2
    return-void

    .line 244
    :catch_0
    move-exception v1

    .line 245
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 264
    :cond_5
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativesdk/d/g;->d:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/mopub/nativesdk/d/g;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 272
    :catch_1
    move-exception v0

    goto :goto_2
.end method
