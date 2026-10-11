.class Lcom/cmplay/base/util/gif/GifDrawable$3;
.super Lcom/cmplay/base/util/gif/SafeRunnable;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/gif/GifDrawable;->seekToFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/gif/GifDrawable;

.field final synthetic val$frameIndex:I


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/gif/GifDrawable;Lcom/cmplay/base/util/gif/GifDrawable;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/gif/GifDrawable;
    .param p2, "gifDrawable"    # Lcom/cmplay/base/util/gif/GifDrawable;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/cmplay/base/util/gif/GifDrawable$3;->this$0:Lcom/cmplay/base/util/gif/GifDrawable;

    iput p3, p0, Lcom/cmplay/base/util/gif/GifDrawable$3;->val$frameIndex:I

    invoke-direct {p0, p2}, Lcom/cmplay/base/util/gif/SafeRunnable;-><init>(Lcom/cmplay/base/util/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawable$3;->this$0:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v0, v0, Lcom/cmplay/base/util/gif/GifDrawable;->mNativeInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    iget v1, p0, Lcom/cmplay/base/util/gif/GifDrawable$3;->val$frameIndex:I

    iget-object v2, p0, Lcom/cmplay/base/util/gif/GifDrawable$3;->this$0:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v2, v2, Lcom/cmplay/base/util/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->seekToFrame(ILandroid/graphics/Bitmap;)V

    .line 550
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawable$3;->this$0:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v0, v0, Lcom/cmplay/base/util/gif/GifDrawable;->mInvalidationHandler:Lcom/cmplay/base/util/gif/InvalidationHandler;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmplay/base/util/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 551
    return-void
.end method
