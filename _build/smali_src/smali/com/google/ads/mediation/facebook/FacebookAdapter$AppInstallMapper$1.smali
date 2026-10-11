.class Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper$1;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/MediaViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mapNativeAd(Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/ads/MediaView;)V
    .locals 2
    .param p1, "mediaView"    # Lcom/facebook/ads/MediaView;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;

    iget-object v0, v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$900(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;

    iget-object v0, v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$900(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;

    iget-object v1, v1, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onVideoEnd(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    .line 752
    :cond_0
    return-void
.end method

.method public onEnterFullscreen(Lcom/facebook/ads/MediaView;)V
    .locals 0
    .param p1, "mediaView"    # Lcom/facebook/ads/MediaView;

    .prologue
    .line 757
    return-void
.end method

.method public onExitFullscreen(Lcom/facebook/ads/MediaView;)V
    .locals 0
    .param p1, "mediaView"    # Lcom/facebook/ads/MediaView;

    .prologue
    .line 762
    return-void
.end method

.method public onFullscreenBackground(Lcom/facebook/ads/MediaView;)V
    .locals 0
    .param p1, "mediaView"    # Lcom/facebook/ads/MediaView;

    .prologue
    .line 767
    return-void
.end method

.method public onFullscreenForeground(Lcom/facebook/ads/MediaView;)V
    .locals 0
    .param p1, "mediaView"    # Lcom/facebook/ads/MediaView;

    .prologue
    .line 772
    return-void
.end method

.method public onPause(Lcom/facebook/ads/MediaView;)V
    .locals 0
    .param p1, "mediaView"    # Lcom/facebook/ads/MediaView;

    .prologue
    .line 745
    return-void
.end method

.method public onPlay(Lcom/facebook/ads/MediaView;)V
    .locals 0
    .param p1, "mediaView"    # Lcom/facebook/ads/MediaView;

    .prologue
    .line 735
    return-void
.end method

.method public onVolumeChange(Lcom/facebook/ads/MediaView;F)V
    .locals 0
    .param p1, "mediaView"    # Lcom/facebook/ads/MediaView;
    .param p2, "v"    # F

    .prologue
    .line 740
    return-void
.end method
