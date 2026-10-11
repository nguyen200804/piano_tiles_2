.class Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$3;
.super Ljava/lang/Object;
.source "OpenScreenVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 313
    iput-object p1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$3;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 316
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$3;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0, v2}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;Z)Z

    .line 317
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$3;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Lcom/cmplay/internalpush/video/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$3;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/cmplay/internalpush/video/a;->a(ZIZ)V

    .line 318
    const-string v0, "internal_push_open_Video"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$3;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$3;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    return-void
.end method
