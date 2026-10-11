.class Lcom/cmplay/base/util/gif/PlaceholderDrawingSurfaceTextureListener;
.super Ljava/lang/Object;
.source "PlaceholderDrawingSurfaceTextureListener.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field private final mDrawer:Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;)V
    .locals 0
    .param p1, "drawer"    # Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/cmplay/base/util/gif/PlaceholderDrawingSurfaceTextureListener;->mDrawer:Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;

    .line 16
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 20
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 21
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/cmplay/base/util/gif/PlaceholderDrawingSurfaceTextureListener;->mDrawer:Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;

    invoke-interface {v2, v1}, Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;->onDrawPlaceholder(Landroid/graphics/Canvas;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 24
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 25
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 30
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 40
    return-void
.end method
