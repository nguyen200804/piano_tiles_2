.class public abstract Lcom/cmplay/base/util/gif/InputSource;
.super Ljava/lang/Object;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/gif/InputSource$AssetFileDescriptorSource;,
        Lcom/cmplay/base/util/gif/InputSource$ResourcesSource;,
        Lcom/cmplay/base/util/gif/InputSource$InputStreamSource;,
        Lcom/cmplay/base/util/gif/InputSource$FileDescriptorSource;,
        Lcom/cmplay/base/util/gif/InputSource$AssetSource;,
        Lcom/cmplay/base/util/gif/InputSource$UriSource;,
        Lcom/cmplay/base/util/gif/InputSource$FileSource;,
        Lcom/cmplay/base/util/gif/InputSource$ByteArraySource;,
        Lcom/cmplay/base/util/gif/InputSource$DirectByteBufferSource;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/cmplay/base/util/gif/InputSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cmplay/base/util/gif/InputSource$1;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/cmplay/base/util/gif/InputSource;-><init>()V

    return-void
.end method


# virtual methods
.method final build(Lcom/cmplay/base/util/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZLcom/cmplay/base/util/gif/GifOptions;)Lcom/cmplay/base/util/gif/GifDrawable;
    .locals 2
    .param p1, "oldDrawable"    # Lcom/cmplay/base/util/gif/GifDrawable;
    .param p2, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p3, "isRenderingAlwaysEnabled"    # Z
    .param p4, "options"    # Lcom/cmplay/base/util/gif/GifOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {p0, p4}, Lcom/cmplay/base/util/gif/InputSource;->createHandleWith(Lcom/cmplay/base/util/gif/GifOptions;)Lcom/cmplay/base/util/gif/GifInfoHandle;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/cmplay/base/util/gif/GifDrawable;-><init>(Lcom/cmplay/base/util/gif/GifInfoHandle;Lcom/cmplay/base/util/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-object v0
.end method

.method final createHandleWith(Lcom/cmplay/base/util/gif/GifOptions;)Lcom/cmplay/base/util/gif/GifInfoHandle;
    .locals 3
    .param p1, "options"    # Lcom/cmplay/base/util/gif/GifOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/InputSource;->open()Lcom/cmplay/base/util/gif/GifInfoHandle;

    move-result-object v0

    .line 37
    iget-char v1, p1, Lcom/cmplay/base/util/gif/GifOptions;->inSampleSize:C

    iget-boolean v2, p1, Lcom/cmplay/base/util/gif/GifOptions;->inIsOpaque:Z

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->setOptions(CZ)V

    .line 38
    return-object v0
.end method

.method abstract open()Lcom/cmplay/base/util/gif/GifInfoHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
