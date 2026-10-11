.class Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;
.super Ljava/lang/Thread;
.source "GifTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/gif/GifTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderThread"
.end annotation


# instance fields
.field final isSurfaceValid:Lcom/cmplay/base/util/gif/ConditionVariable;

.field private mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

.field private final mGifTextureViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmplay/base/util/gif/GifTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mIOException:Ljava/io/IOException;

.field mSavedState:[J


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/gif/GifTextureView;)V
    .locals 1
    .param p1, "gifTextureView"    # Lcom/cmplay/base/util/gif/GifTextureView;

    .prologue
    .line 172
    const-string v0, "GifRenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/cmplay/base/util/gif/ConditionVariable;

    invoke-direct {v0}, Lcom/cmplay/base/util/gif/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/cmplay/base/util/gif/ConditionVariable;

    .line 166
    new-instance v0, Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-direct {v0}, Lcom/cmplay/base/util/gif/GifInfoHandle;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifTextureViewReference:Ljava/lang/ref/WeakReference;

    .line 174
    return-void
.end method

.method static synthetic access$200(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;)Lcom/cmplay/base/util/gif/GifInfoHandle;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method dispose(Lcom/cmplay/base/util/gif/GifTextureView;Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;)V
    .locals 1
    .param p1, "gifTextureView"    # Lcom/cmplay/base/util/gif/GifTextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "drawer"    # Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/cmplay/base/util/gif/ConditionVariable;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/ConditionVariable;->close()V

    .line 259
    if-eqz p2, :cond_0

    new-instance v0, Lcom/cmplay/base/util/gif/PlaceholderDrawingSurfaceTextureListener;

    invoke-direct {v0, p2}, Lcom/cmplay/base/util/gif/PlaceholderDrawingSurfaceTextureListener;-><init>(Lcom/cmplay/base/util/gif/GifTextureView$PlaceholderDrawListener;)V

    .line 260
    :goto_0
    invoke-static {p1, v0}, Lcom/cmplay/base/util/gif/GifTextureView;->access$100(Lcom/cmplay/base/util/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 261
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifInfoHandle;->postUnbindSurface()V

    .line 262
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->interrupt()V

    .line 263
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifTextureViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/gif/GifTextureView;

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifTextureView;->access$300(Lcom/cmplay/base/util/gif/GifTextureView;Lcom/cmplay/base/util/gif/GifInfoHandle;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/cmplay/base/util/gif/ConditionVariable;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/ConditionVariable;->open()V

    .line 238
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/cmplay/base/util/gif/ConditionVariable;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/ConditionVariable;->close()V

    .line 248
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifInfoHandle;->postUnbindSurface()V

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 243
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 255
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifTextureViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/gif/GifTextureView;

    .line 180
    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {v0}, Lcom/cmplay/base/util/gif/GifTextureView;->access$000(Lcom/cmplay/base/util/gif/GifTextureView;)Lcom/cmplay/base/util/gif/InputSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/base/util/gif/InputSource;->open()Lcom/cmplay/base/util/gif/GifInfoHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    .line 184
    iget-object v1, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifTextureView;->isOpaque()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/cmplay/base/util/gif/GifInfoHandle;->setOptions(CZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifTextureViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/gif/GifTextureView;

    .line 191
    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifInfoHandle;->recycle()V

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {v0, p0}, Lcom/cmplay/base/util/gif/GifTextureView;->access$100(Lcom/cmplay/base/util/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 197
    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifTextureView;->isAvailable()Z

    move-result v1

    .line 198
    iget-object v2, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/cmplay/base/util/gif/ConditionVariable;

    invoke-virtual {v2, v1}, Lcom/cmplay/base/util/gif/ConditionVariable;->set(Z)V

    .line 199
    if-eqz v1, :cond_2

    .line 200
    new-instance v1, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread$1;

    invoke-direct {v1, p0, v0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread$1;-><init>(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;Lcom/cmplay/base/util/gif/GifTextureView;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/gif/GifTextureView;->post(Ljava/lang/Runnable;)Z

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-static {v0}, Lcom/cmplay/base/util/gif/GifTextureView;->access$400(Lcom/cmplay/base/util/gif/GifTextureView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->setSpeedFactor(F)V

    .line 209
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 211
    :try_start_1
    iget-object v1, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/cmplay/base/util/gif/ConditionVariable;

    invoke-virtual {v1}, Lcom/cmplay/base/util/gif/ConditionVariable;->block()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_3

    .line 220
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 222
    :try_start_2
    iget-object v3, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    iget-object v4, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mSavedState:[J

    invoke-virtual {v3, v2, v4}, Lcom/cmplay/base/util/gif/GifInfoHandle;->bindSurface(Landroid/view/Surface;[J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 225
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_1

    .line 212
    :catch_1
    move-exception v0

    .line 213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifInfoHandle;->recycle()V

    .line 229
    new-instance v0, Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-direct {v0}, Lcom/cmplay/base/util/gif/GifInfoHandle;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 225
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    throw v0
.end method
