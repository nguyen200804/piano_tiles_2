.class public Lcom/mopub/mobileads/VastVideoView;
.super Landroid/widget/VideoView;
.source "VastVideoView.java"


# instance fields
.field private a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/media/MediaMetadataRetriever;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->b:Landroid/media/MediaMetadataRetriever;

    .line 33
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    .line 66
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->cancel(Z)Z

    .line 69
    :cond_0
    return-void
.end method

.method public prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "blurredLastVideoFrameImageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "diskMediaFileUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->b:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoView;->b:Landroid/media/MediaMetadataRetriever;

    .line 47
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;-><init>(Landroid/media/MediaMetadataRetriever;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "Failed to blur last video frame"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
