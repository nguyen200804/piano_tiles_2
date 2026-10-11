.class Lcom/duapps/ad/DuAdMediaView$1;
.super Ljava/lang/Object;
.source "DuAdMediaView.java"

# interfaces
.implements Lcom/facebook/ads/MediaViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/DuAdMediaView;->b(Lcom/duapps/ad/entity/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/DuAdMediaView;


# direct methods
.method constructor <init>(Lcom/duapps/ad/DuAdMediaView;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/ads/MediaView;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->e(Lcom/duapps/ad/DuAdMediaView;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onEnterFullscreen(Lcom/facebook/ads/MediaView;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->d(Lcom/duapps/ad/DuAdMediaView;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onExitFullscreen(Lcom/facebook/ads/MediaView;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->c(Lcom/duapps/ad/DuAdMediaView;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onFullscreenBackground(Lcom/facebook/ads/MediaView;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->f(Lcom/duapps/ad/DuAdMediaView;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onFullscreenForeground(Lcom/facebook/ads/MediaView;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->g(Lcom/duapps/ad/DuAdMediaView;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onPause(Lcom/facebook/ads/MediaView;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->a(Lcom/duapps/ad/DuAdMediaView;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onPlay(Lcom/facebook/ads/MediaView;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->b(Lcom/duapps/ad/DuAdMediaView;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onVolumeChange(Lcom/facebook/ads/MediaView;F)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-static {v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/DuAdMediaView;)Lcom/duapps/ad/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/DuAdMediaView$1;->a:Lcom/duapps/ad/DuAdMediaView;

    invoke-interface {v0, v1, p2}, Lcom/duapps/ad/d;->a(Lcom/duapps/ad/DuAdMediaView;F)V

    .line 83
    :cond_0
    return-void
.end method
