.class Lcom/cmplay/base/util/gif/GifTextureView$RenderThread$1;
.super Ljava/lang/Object;
.source "GifTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

.field final synthetic val$gifTextureView:Lcom/cmplay/base/util/gif/GifTextureView;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;Lcom/cmplay/base/util/gif/GifTextureView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread$1;->this$0:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    iput-object p2, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread$1;->val$gifTextureView:Lcom/cmplay/base/util/gif/GifTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread$1;->val$gifTextureView:Lcom/cmplay/base/util/gif/GifTextureView;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread$1;->this$0:Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;

    invoke-static {v1}, Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;->access$200(Lcom/cmplay/base/util/gif/GifTextureView$RenderThread;)Lcom/cmplay/base/util/gif/GifInfoHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifTextureView;->access$300(Lcom/cmplay/base/util/gif/GifTextureView;Lcom/cmplay/base/util/gif/GifInfoHandle;)V

    .line 204
    return-void
.end method
