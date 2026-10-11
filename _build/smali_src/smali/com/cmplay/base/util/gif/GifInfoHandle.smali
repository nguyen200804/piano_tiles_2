.class final Lcom/cmplay/base/util/gif/GifInfoHandle;
.super Ljava/lang/Object;
.source "GifInfoHandle.java"


# instance fields
.field private volatile gifInfoPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cmplay/base/util/gif/LibraryLoader;->loadLibrary(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 4
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/cmplay/base/util/gif/GifInfoHandle;->openFd(Ljava/io/FileDescriptor;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :goto_0
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 64
    :goto_1
    throw v0

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->openFd(Ljava/io/FileDescriptor;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream does not support marking"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->openStream(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    .line 54
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->openFile(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->openDirectByteBuffer(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    .line 43
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->openByteArray([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    .line 39
    return-void
.end method

.method private static native bindSurface(JLandroid/view/Surface;[J)V
.end method

.method private static native free(J)V
.end method

.method private static native getAllocationByteCount(J)J
.end method

.method private static native getComment(J)Ljava/lang/String;
.end method

.method private static native getCurrentFrameIndex(J)I
.end method

.method private static native getCurrentLoop(J)I
.end method

.method private static native getCurrentPosition(J)I
.end method

.method private static native getDuration(J)I
.end method

.method private static native getFrameDuration(JI)I
.end method

.method private static native getHeight(J)I
.end method

.method private static native getLoopCount(J)I
.end method

.method private static native getMetadataByteCount(J)J
.end method

.method private static native getNativeErrorCode(J)I
.end method

.method private static native getNumberOfFrames(J)I
.end method

.method private static native getSavedState(J)[J
.end method

.method private static native getSourceLength(J)J
.end method

.method private static native getWidth(J)I
.end method

.method private static native glTexImage2D(JII)V
.end method

.method private static native glTexSubImage2D(JII)V
.end method

.method private static native initTexImageDescriptor(J)V
.end method

.method private static native isAnimationCompleted(J)Z
.end method

.method private static native isOpaque(J)Z
.end method

.method static native openByteArray([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation
.end method

.method static native openDirectByteBuffer(Ljava/nio/ByteBuffer;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation
.end method

.method static native openFd(Ljava/io/FileDescriptor;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation
.end method

.method static native openFile(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation
.end method

.method static native openStream(Ljava/io/InputStream;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation
.end method

.method static openUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/cmplay/base/util/gif/GifInfoHandle;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/cmplay/base/util/gif/GifInfoHandle;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmplay/base/util/gif/GifInfoHandle;

    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0
.end method

.method private static native postUnbindSurface(J)V
.end method

.method private static native renderFrame(JLandroid/graphics/Bitmap;)J
.end method

.method private static native reset(J)Z
.end method

.method private static native restoreRemainder(J)J
.end method

.method private static native restoreSavedState(J[JLandroid/graphics/Bitmap;)I
.end method

.method private static native saveRemainder(J)V
.end method

.method private static native seekToFrame(JILandroid/graphics/Bitmap;)V
.end method

.method private static native seekToFrameGL(JI)V
.end method

.method private static native seekToTime(JILandroid/graphics/Bitmap;)V
.end method

.method private static native setLoopCount(JC)V
.end method

.method private static native setOptions(JCZ)V
.end method

.method private static native setSpeedFactor(JF)V
.end method

.method private static native startDecoderThread(J)V
.end method

.method private static native stopDecoderThread(J)V
.end method

.method private throwIfFrameIndexOutOfBounds(I)V
    .locals 4
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getNumberOfFrames(J)I

    move-result v0

    int-to-float v0, v0

    .line 333
    if-ltz p1, :cond_0

    int-to-float v1, p1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_1

    .line 334
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frame index is not in range <0;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_1
    return-void
.end method


# virtual methods
.method bindSurface(Landroid/view/Surface;[J)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "savedState"    # [J

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->bindSurface(JLandroid/view/Surface;[J)V

    .line 163
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifInfoHandle;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method declared-synchronized getAllocationByteCount()J
    .locals 2

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getAllocationByteCount(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getComment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getComment(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentFrameIndex()I
    .locals 2

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getCurrentFrameIndex(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentLoop()I
    .locals 2

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getCurrentLoop(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentPosition()I
    .locals 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getCurrentPosition(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDuration()I
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getDuration(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFrameDuration(I)I
    .locals 2
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->throwIfFrameIndexOutOfBounds(I)V

    .line 283
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getFrameDuration(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getHeight()I
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getHeight(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getLoopCount()I
    .locals 2

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getLoopCount(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMetadataByteCount()J
    .locals 2

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getMetadataByteCount(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNativeErrorCode()I
    .locals 2

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getNativeErrorCode(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNumberOfFrames()I
    .locals 2

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getNumberOfFrames(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSavedState()[J
    .locals 2

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getSavedState(J)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSourceLength()J
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getSourceLength(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getWidth()I
    .locals 2

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->getWidth(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method glTexImage2D(II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "level"    # I

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->glTexImage2D(JII)V

    .line 308
    return-void
.end method

.method glTexSubImage2D(II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "level"    # I

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->glTexSubImage2D(JII)V

    .line 312
    return-void
.end method

.method initTexImageDescriptor()V
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->initTexImageDescriptor(J)V

    .line 324
    return-void
.end method

.method declared-synchronized isAnimationCompleted()Z
    .locals 2

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->isAnimationCompleted(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isOpaque()Z
    .locals 2

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->isOpaque(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isRecycled()Z
    .locals 4

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized postUnbindSurface()V
    .locals 2

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->postUnbindSurface(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized recycle()V
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->free(J)V

    .line 167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized renderFrame(Landroid/graphics/Bitmap;)J
    .locals 2
    .param p1, "frameBuffer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->renderFrame(JLandroid/graphics/Bitmap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reset()Z
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->reset(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized restoreRemainder()J
    .locals 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->restoreRemainder(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized restoreSavedState([JLandroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "savedState"    # [J
    .param p2, "mBuffer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->restoreSavedState(J[JLandroid/graphics/Bitmap;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized saveRemainder()V
    .locals 2

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->saveRemainder(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized seekToFrame(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "frameIndex"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p2, "buffer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->seekToFrame(JILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method seekToFrameGL(I)V
    .locals 2
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->throwIfFrameIndexOutOfBounds(I)V

    .line 328
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->seekToFrameGL(JI)V

    .line 329
    return-void
.end method

.method declared-synchronized seekToTime(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p2, "buffer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->seekToTime(JILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setLoopCount(I)V
    .locals 3
    .param p1, "loopCount"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffffL
        .end annotation
    .end param

    .prologue
    .line 191
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Loop count of range <0, 65535>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    monitor-enter p0

    .line 195
    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    int-to-char v2, p1

    invoke-static {v0, v1, v2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->setLoopCount(JC)V

    .line 196
    monitor-exit p0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setOptions(CZ)V
    .locals 2
    .param p1, "sampleSize"    # C
    .param p2, "isOpaque"    # Z

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/cmplay/base/util/gif/GifInfoHandle;->setOptions(JCZ)V

    .line 288
    return-void
.end method

.method setSpeedFactor(F)V
    .locals 2
    .param p1, "factor"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .prologue
    .line 208
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed factor is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    const/high16 v0, 0x30000000

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 212
    const/high16 p1, 0x30000000

    .line 214
    :cond_2
    monitor-enter p0

    .line 215
    :try_start_0
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->setSpeedFactor(JF)V

    .line 216
    monitor-exit p0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startDecoderThread()V
    .locals 2

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->startDecoderThread(J)V

    .line 316
    return-void
.end method

.method stopDecoderThread()V
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/cmplay/base/util/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->stopDecoderThread(J)V

    .line 320
    return-void
.end method
