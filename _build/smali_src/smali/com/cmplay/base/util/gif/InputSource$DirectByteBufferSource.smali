.class public final Lcom/cmplay/base/util/gif/InputSource$DirectByteBufferSource;
.super Lcom/cmplay/base/util/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectByteBufferSource"
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/gif/InputSource;-><init>(Lcom/cmplay/base/util/gif/InputSource$1;)V

    .line 54
    iput-object p1, p0, Lcom/cmplay/base/util/gif/InputSource$DirectByteBufferSource;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 55
    return-void
.end method


# virtual methods
.method open()Lcom/cmplay/base/util/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/cmplay/base/util/gif/GifInfoHandle;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/InputSource$DirectByteBufferSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
