.class final Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;
.super Ljava/lang/Object;
.source "Mp4Viewer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;->a:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;->a:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;)Lcom/cmcm/orion/picks/impl/player/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;->a:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;)Lcom/cmcm/orion/picks/impl/player/a;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a;->a(Landroid/view/Surface;)V

    .line 225
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;->a:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;)Lcom/cmcm/orion/picks/impl/player/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;->a:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;)Lcom/cmcm/orion/picks/impl/player/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a;->a(Landroid/view/Surface;)V

    .line 239
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 232
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 245
    return-void
.end method
