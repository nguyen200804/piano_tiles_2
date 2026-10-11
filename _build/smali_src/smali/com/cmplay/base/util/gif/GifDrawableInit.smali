.class public abstract Lcom/cmplay/base/util/gif/GifDrawableInit;
.super Ljava/lang/Object;
.source "GifDrawableInit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/cmplay/base/util/gif/GifDrawableInit",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mInputSource:Lcom/cmplay/base/util/gif/InputSource;

.field private mIsRenderingTriggeredOnDraw:Z

.field private mOldDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

.field private mOptions:Lcom/cmplay/base/util/gif/GifOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mIsRenderingTriggeredOnDraw:Z

    .line 32
    new-instance v0, Lcom/cmplay/base/util/gif/GifOptions;

    invoke-direct {v0}, Lcom/cmplay/base/util/gif/GifOptions;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mOptions:Lcom/cmplay/base/util/gif/GifOptions;

    return-void
.end method


# virtual methods
.method public build()Lcom/cmplay/base/util/gif/GifDrawable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source is not set"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mOldDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v2, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v3, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mIsRenderingTriggeredOnDraw:Z

    iget-object v4, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mOptions:Lcom/cmplay/base/util/gif/GifOptions;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/base/util/gif/InputSource;->build(Lcom/cmplay/base/util/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZLcom/cmplay/base/util/gif/GifOptions;)Lcom/cmplay/base/util/gif/GifDrawable;

    move-result-object v0

    return-object v0
.end method

.method public from(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$UriSource;

    invoke-direct {v0, p1, p2}, Lcom/cmplay/base/util/gif/InputSource$UriSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 204
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public from(Landroid/content/res/AssetFileDescriptor;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetFileDescriptor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$AssetFileDescriptorSource;

    invoke-direct {v0, p1}, Lcom/cmplay/base/util/gif/InputSource$AssetFileDescriptorSource;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 169
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public from(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "assetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$AssetSource;

    invoke-direct {v0, p1, p2}, Lcom/cmplay/base/util/gif/InputSource$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 192
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public from(Landroid/content/res/Resources;I)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$ResourcesSource;

    invoke-direct {v0, p1, p2}, Lcom/cmplay/base/util/gif/InputSource$ResourcesSource;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 260
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public from(Ljava/io/File;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$FileSource;

    invoke-direct {v0, p1}, Lcom/cmplay/base/util/gif/InputSource$FileSource;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 215
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public from(Ljava/io/FileDescriptor;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$FileDescriptorSource;

    invoke-direct {v0, p1}, Lcom/cmplay/base/util/gif/InputSource$FileDescriptorSource;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 180
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public from(Ljava/io/InputStream;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$InputStreamSource;

    invoke-direct {v0, p1}, Lcom/cmplay/base/util/gif/InputSource$InputStreamSource;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 158
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public from(Ljava/lang/String;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$FileSource;

    invoke-direct {v0, p1}, Lcom/cmplay/base/util/gif/InputSource$FileSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 226
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public from(Ljava/nio/ByteBuffer;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$DirectByteBufferSource;

    invoke-direct {v0, p1}, Lcom/cmplay/base/util/gif/InputSource$DirectByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 248
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public from([B)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Lcom/cmplay/base/util/gif/InputSource$ByteArraySource;

    invoke-direct {v0, p1}, Lcom/cmplay/base/util/gif/InputSource$ByteArraySource;-><init>([B)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    .line 237
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public getInputSource()Lcom/cmplay/base/util/gif/InputSource;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mInputSource:Lcom/cmplay/base/util/gif/InputSource;

    return-object v0
.end method

.method public getOldDrawable()Lcom/cmplay/base/util/gif/GifDrawable;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mOldDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    return-object v0
.end method

.method public getOptions()Lcom/cmplay/base/util/gif/GifOptions;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mOptions:Lcom/cmplay/base/util/gif/GifOptions;

    return-object v0
.end method

.method public isRenderingTriggeredOnDraw()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mIsRenderingTriggeredOnDraw:Z

    return v0
.end method

.method public options(Lcom/cmplay/base/util/gif/GifOptions;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "options"    # Lcom/cmplay/base/util/gif/GifOptions;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/cmplay/base/util/gif/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmplay/base/util/gif/GifOptions;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mOptions:Lcom/cmplay/base/util/gif/GifOptions;

    invoke-virtual {v0, p1}, Lcom/cmplay/base/util/gif/GifOptions;->setFrom(Lcom/cmplay/base/util/gif/GifOptions;)V

    .line 147
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public renderingTriggeredOnDraw(Z)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "isRenderingTriggeredOnDraw"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    iput-boolean p1, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mIsRenderingTriggeredOnDraw:Z

    .line 118
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public sampleSize(I)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "sampleSize"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xffffL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mOptions:Lcom/cmplay/base/util/gif/GifOptions;

    invoke-virtual {v0, p1}, Lcom/cmplay/base/util/gif/GifOptions;->setInSampleSize(I)V

    .line 51
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method protected abstract self()Lcom/cmplay/base/util/gif/GifDrawableInit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setRenderingTriggeredOnDraw(Z)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "isRenderingTriggeredOnDraw"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    invoke-virtual {p0, p1}, Lcom/cmplay/base/util/gif/GifDrawableInit;->renderingTriggeredOnDraw(Z)Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public taskExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    iput-object p1, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 100
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public threadPoolSize(I)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "threadPoolSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 88
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/cmplay/base/util/gif/GifDrawable;)Lcom/cmplay/base/util/gif/GifDrawableInit;
    .locals 1
    .param p1, "drawable"    # Lcom/cmplay/base/util/gif/GifDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmplay/base/util/gif/GifDrawable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/cmplay/base/util/gif/GifDrawableInit;, "Lcom/cmplay/base/util/gif/GifDrawableInit<TT;>;"
    iput-object p1, p0, Lcom/cmplay/base/util/gif/GifDrawableInit;->mOldDrawable:Lcom/cmplay/base/util/gif/GifDrawable;

    .line 75
    invoke-virtual {p0}, Lcom/cmplay/base/util/gif/GifDrawableInit;->self()Lcom/cmplay/base/util/gif/GifDrawableInit;

    move-result-object v0

    return-object v0
.end method
