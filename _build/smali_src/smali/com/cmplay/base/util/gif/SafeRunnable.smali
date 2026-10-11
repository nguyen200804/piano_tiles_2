.class abstract Lcom/cmplay/base/util/gif/SafeRunnable;
.super Ljava/lang/Object;
.source "SafeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/gif/GifDrawable;)V
    .locals 0
    .param p1, "gifDrawable"    # Lcom/cmplay/base/util/gif/GifDrawable;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/cmplay/base/util/gif/SafeRunnable;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    .line 12
    return-void
.end method


# virtual methods
.method abstract doWork()V
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/base/util/gif/SafeRunnable;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifDrawable;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/SafeRunnable;->doWork()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :cond_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 25
    :cond_1
    throw v0
.end method
