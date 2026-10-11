.class final Lcom/cmplay/base/util/gif/GifRenderingExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "GifRenderingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/gif/GifRenderingExecutor$InstanceHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x1

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/cmplay/base/util/gif/GifRenderingExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cmplay/base/util/gif/GifRenderingExecutor$1;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cmplay/base/util/gif/GifRenderingExecutor;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/cmplay/base/util/gif/GifRenderingExecutor;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/cmplay/base/util/gif/GifRenderingExecutor$InstanceHolder;->access$100()Lcom/cmplay/base/util/gif/GifRenderingExecutor;

    move-result-object v0

    return-object v0
.end method
