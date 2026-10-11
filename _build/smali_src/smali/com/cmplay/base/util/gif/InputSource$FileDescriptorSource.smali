.class public final Lcom/cmplay/base/util/gif/InputSource$FileDescriptorSource;
.super Lcom/cmplay/base/util/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorSource"
.end annotation


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/gif/InputSource;-><init>(Lcom/cmplay/base/util/gif/InputSource$1;)V

    .line 175
    iput-object p1, p0, Lcom/cmplay/base/util/gif/InputSource$FileDescriptorSource;->mFd:Ljava/io/FileDescriptor;

    .line 176
    return-void
.end method


# virtual methods
.method open()Lcom/cmplay/base/util/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/cmplay/base/util/gif/GifInfoHandle;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/InputSource$FileDescriptorSource;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method
