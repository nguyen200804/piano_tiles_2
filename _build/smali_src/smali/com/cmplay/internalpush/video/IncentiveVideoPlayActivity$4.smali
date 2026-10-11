.class Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$4;
.super Ljava/lang/Object;
.source "IncentiveVideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 331
    iput-object p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$4;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Extra code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    const-string v1, "internal_push_VideoPlay"

    invoke-static {v1, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    const-string v1, "internal_push_VideoPlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcast  onVideoShowFail  errorStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 339
    const-string v2, "com.cmplay.libinnerpushvideo.video.Progress_notify"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v2, "video_progress_status"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string v2, "error_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$4;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
