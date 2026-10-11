.class public Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ParseCloudDataVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/data/ParseCloudDataVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoProgressStatusReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;


# direct methods
.method public constructor <init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 854
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cmplay.libinnerpushvideo.video.Progress_notify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    const-string v0, "video_progress_status"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 856
    packed-switch v0, :pswitch_data_0

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 858
    :pswitch_0
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Lcom/cmplay/internalpush/video/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 859
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.VideoProgressStatusReceiver  onReceive onVideoShow()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Lcom/cmplay/internalpush/video/b/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/internalpush/video/b/d;->a()V

    .line 861
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0, v3}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Z)Z

    .line 862
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Z)V

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0, v2}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Z)Z

    goto :goto_0

    .line 867
    :pswitch_1
    const-string v0, "is_complete_view"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 868
    iget-object v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v1}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Lcom/cmplay/internalpush/video/b/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 869
    const-string v1, "internal_push"

    const-string v2, "ParseCloudDataVideo.VideoProgressStatusReceiver  onReceive onVideoComplete()"

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v1}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Lcom/cmplay/internalpush/video/b/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cmplay/internalpush/video/b/d;->a(Z)V

    goto :goto_0

    .line 874
    :pswitch_2
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Lcom/cmplay/internalpush/video/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 875
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.VideoProgressStatusReceiver  onReceive onVideoClick()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Lcom/cmplay/internalpush/video/b/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/internalpush/video/b/d;->b()V

    goto :goto_0

    .line 880
    :pswitch_3
    const-string v0, "error_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    iget-object v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v1}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Lcom/cmplay/internalpush/video/b/d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 882
    const-string v1, "internal_push"

    const-string v2, "ParseCloudDataVideo.VideoProgressStatusReceiver  onReceive onVideoShowFail()"

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v1}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Lcom/cmplay/internalpush/video/b/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cmplay/internalpush/video/b/d;->a(Ljava/lang/String;)V

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0, v3}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Z)Z

    goto/16 :goto_0

    .line 888
    :pswitch_4
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0, v3}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Z)Z

    goto/16 :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
