.class Lcom/cmplay/base/util/gif/RenderTask;
.super Lcom/cmplay/base/util/gif/SafeRunnable;
.source "RenderTask.java"


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/gif/GifDrawable;)V
    .locals 0
    .param p1, "gifDrawable"    # Lcom/cmplay/base/util/gif/GifDrawable;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/gif/SafeRunnable;-><init>(Lcom/cmplay/base/util/gif/GifDrawable;)V

    .line 13
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    .line 17
    iget-object v0, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v0, v0, Lcom/cmplay/base/util/gif/GifDrawable;->mNativeInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v1, v1, Lcom/cmplay/base/util/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->renderFrame(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    .line 18
    cmp-long v2, v0, v8

    if-ltz v2, :cond_3

    .line 19
    iget-object v2, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/cmplay/base/util/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 20
    iget-object v2, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v2}, Lcom/cmplay/base/util/gif/GifDrawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-boolean v2, v2, Lcom/cmplay/base/util/gif/GifDrawable;->mIsRunning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-boolean v2, v2, Lcom/cmplay/base/util/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-nez v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v2, v2, Lcom/cmplay/base/util/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 22
    iget-object v2, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v3, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v3, v3, Lcom/cmplay/base/util/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v2, Lcom/cmplay/base/util/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v0, v0, Lcom/cmplay/base/util/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v1, v1, Lcom/cmplay/base/util/gif/GifDrawable;->mNativeInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-virtual {v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 25
    iget-object v0, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v0, v0, Lcom/cmplay/base/util/gif/GifDrawable;->mInvalidationHandler:Lcom/cmplay/base/util/gif/InvalidationHandler;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v1}, Lcom/cmplay/base/util/gif/GifDrawable;->getCurrentLoop()I

    move-result v1

    iget-object v2, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-wide v2, v2, Lcom/cmplay/base/util/gif/GifDrawable;->mNextFrameRenderTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmplay/base/util/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v0, v0, Lcom/cmplay/base/util/gif/GifDrawable;->mInvalidationHandler:Lcom/cmplay/base/util/gif/InvalidationHandler;

    invoke-virtual {v0, v6}, Lcom/cmplay/base/util/gif/InvalidationHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v0, v0, Lcom/cmplay/base/util/gif/GifDrawable;->mInvalidationHandler:Lcom/cmplay/base/util/gif/InvalidationHandler;

    invoke-virtual {v0, v6, v8, v9}, Lcom/cmplay/base/util/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 34
    :cond_2
    return-void

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, v0, Lcom/cmplay/base/util/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 29
    iget-object v0, p0, Lcom/cmplay/base/util/gif/RenderTask;->mGifDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cmplay/base/util/gif/GifDrawable;->mIsRunning:Z

    goto :goto_0
.end method
