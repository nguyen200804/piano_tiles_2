.class Lcom/cmplay/base/util/gif/GifDrawable$1;
.super Lcom/cmplay/base/util/gif/SafeRunnable;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/gif/GifDrawable;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/gif/GifDrawable;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/gif/GifDrawable;Lcom/cmplay/base/util/gif/GifDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/gif/GifDrawable;
    .param p2, "gifDrawable"    # Lcom/cmplay/base/util/gif/GifDrawable;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/cmplay/base/util/gif/GifDrawable$1;->this$0:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-direct {p0, p2}, Lcom/cmplay/base/util/gif/SafeRunnable;-><init>(Lcom/cmplay/base/util/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawable$1;->this$0:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v0, v0, Lcom/cmplay/base/util/gif/GifDrawable;->mNativeInfoHandle:Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifInfoHandle;->reset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawable$1;->this$0:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifDrawable;->start()V

    .line 359
    :cond_0
    return-void
.end method
