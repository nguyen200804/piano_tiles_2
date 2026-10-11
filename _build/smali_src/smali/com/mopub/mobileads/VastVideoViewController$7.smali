.class Lcom/mopub/mobileads/VastVideoViewController$7;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->a(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x0

    .line 449
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->n(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 450
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->k()V

    .line 451
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/VastVideoViewController;->a(Z)V

    .line 452
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->a:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->d(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 454
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->d(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->h()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->a:Lcom/mopub/mobileads/VastVideoViewController;

    .line 455
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoViewController;->j()I

    move-result v3

    .line 454
    invoke-virtual {v0, v1, v2, v3}, Lcom/mopub/mobileads/VastVideoConfig;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    .line 457
    return v4
.end method
