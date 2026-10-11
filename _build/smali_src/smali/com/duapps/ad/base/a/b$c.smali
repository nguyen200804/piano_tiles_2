.class public Lcom/duapps/ad/base/a/b$c;
.super Ljava/io/FilterInputStream;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/base/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 380
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 384
    move-wide v2, v4

    .line 385
    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/duapps/ad/base/a/b$c;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 387
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/duapps/ad/base/a/b$c;->read()I

    move-result v0

    .line 389
    if-gez v0, :cond_1

    .line 397
    :cond_0
    return-wide v2

    .line 392
    :cond_1
    const-wide/16 v0, 0x1

    .line 395
    :cond_2
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 396
    goto :goto_0
.end method
