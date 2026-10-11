.class public Lcom/cmplay/base/util/gif/GifOptions;
.super Ljava/lang/Object;
.source "GifOptions.java"


# annotations
.annotation build Lcom/cmplay/base/util/gif/annotations/Beta;
.end annotation


# instance fields
.field inIsOpaque:Z

.field inSampleSize:C


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0}, Lcom/cmplay/base/util/gif/GifOptions;->reset()V

    .line 20
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-char v0, p0, Lcom/cmplay/base/util/gif/GifOptions;->inSampleSize:C

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/base/util/gif/GifOptions;->inIsOpaque:Z

    .line 25
    return-void
.end method


# virtual methods
.method setFrom(Lcom/cmplay/base/util/gif/GifOptions;)V
    .locals 1
    .param p1, "source"    # Lcom/cmplay/base/util/gif/GifOptions;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/cmplay/base/util/gif/GifOptions;->reset()V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-boolean v0, p1, Lcom/cmplay/base/util/gif/GifOptions;->inIsOpaque:Z

    iput-boolean v0, p0, Lcom/cmplay/base/util/gif/GifOptions;->inIsOpaque:Z

    .line 70
    iget-char v0, p1, Lcom/cmplay/base/util/gif/GifOptions;->inSampleSize:C

    iput-char v0, p0, Lcom/cmplay/base/util/gif/GifOptions;->inSampleSize:C

    goto :goto_0
.end method

.method public setInIsOpaque(Z)V
    .locals 0
    .param p1, "inIsOpaque"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/cmplay/base/util/gif/GifOptions;->inIsOpaque:Z

    .line 63
    return-void
.end method

.method public setInSampleSize(I)V
    .locals 2
    .param p1, "inSampleSize"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xffffL
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 41
    if-lt p1, v1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 42
    :cond_0
    iput-char v1, p0, Lcom/cmplay/base/util/gif/GifOptions;->inSampleSize:C

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_1
    int-to-char v0, p1

    iput-char v0, p0, Lcom/cmplay/base/util/gif/GifOptions;->inSampleSize:C

    goto :goto_0
.end method
