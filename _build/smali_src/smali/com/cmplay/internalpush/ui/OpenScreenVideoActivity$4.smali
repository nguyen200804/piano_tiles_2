.class Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;
.super Ljava/lang/Object;
.source "OpenScreenVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Lcom/cmplay/internalpush/video/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/c;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;I)I

    .line 327
    const-string v0, "internal_push_open_Video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v2}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 329
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Lcom/cmplay/internalpush/video/c;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Lcom/cmplay/internalpush/video/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/c;->seekTo(I)V

    .line 330
    const-string v0, "internal_push_open_Video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v2}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Lcom/cmplay/internalpush/video/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmplay/internalpush/video/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method
