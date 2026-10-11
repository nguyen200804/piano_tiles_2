.class public Lcom/cmplay/base/util/gif/GifIOException;
.super Ljava/io/IOException;
.source "GifIOException.java"


# static fields
.field private static final serialVersionUID:J = 0xbdbbd5fa1b9L


# instance fields
.field private final mErrnoMessage:Ljava/lang/String;

.field public final reason:Lcom/cmplay/base/util/gif/GifError;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errnoMessage"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/cmplay/base/util/gif/GifError;->fromCode(I)Lcom/cmplay/base/util/gif/GifError;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/gif/GifIOException;->reason:Lcom/cmplay/base/util/gif/GifError;

    .line 32
    iput-object p2, p0, Lcom/cmplay/base/util/gif/GifIOException;->mErrnoMessage:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static fromCode(I)Lcom/cmplay/base/util/gif/GifIOException;
    .locals 2
    .param p0, "nativeErrorCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    sget-object v1, Lcom/cmplay/base/util/gif/GifError;->NO_ERROR:Lcom/cmplay/base/util/gif/GifError;

    iget v1, v1, Lcom/cmplay/base/util/gif/GifError;->errorCode:I

    if-ne p0, v1, :cond_0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/cmplay/base/util/gif/GifIOException;

    invoke-direct {v1, p0, v0}, Lcom/cmplay/base/util/gif/GifIOException;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifIOException;->mErrnoMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/cmplay/base/util/gif/GifIOException;->reason:Lcom/cmplay/base/util/gif/GifError;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifError;->getFormattedDescription()Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cmplay/base/util/gif/GifIOException;->reason:Lcom/cmplay/base/util/gif/GifError;

    invoke-virtual {v1}, Lcom/cmplay/base/util/gif/GifError;->getFormattedDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/base/util/gif/GifIOException;->mErrnoMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
