.class Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;
.super Ljava/lang/Object;
.source "IncentiveVideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Lcom/cmplay/internalpush/video/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/c;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;I)I

    .line 360
    const-string v0, "internal_push_VideoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v2}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->g(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->g(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 362
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Lcom/cmplay/internalpush/video/c;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Lcom/cmplay/internalpush/video/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/c;->seekTo(I)V

    .line 363
    const-string v0, "internal_push_VideoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v2}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Lcom/cmplay/internalpush/video/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmplay/internalpush/video/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Lcom/cmplay/internalpush/video/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->start()V

    .line 365
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 366
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->g(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(I)V

    .line 367
    return-void
.end method
