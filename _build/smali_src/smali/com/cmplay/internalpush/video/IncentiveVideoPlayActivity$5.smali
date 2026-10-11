.class Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$5;
.super Ljava/lang/Object;
.source "IncentiveVideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 347
    iput-object p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$5;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 350
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$5;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0, v2}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;Z)Z

    .line 351
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$5;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Lcom/cmplay/internalpush/video/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$5;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->g(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/cmplay/internalpush/video/a;->a(ZIZ)V

    .line 352
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$5;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->finish()V

    .line 354
    return-void
.end method
