.class final Lcom/facebook/internal/k$c;
.super Ljava/io/InputStream;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/io/InputStream;

.field final b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/facebook/internal/k$c;->a:Ljava/io/InputStream;

    .line 518
    iput-object p2, p0, Lcom/facebook/internal/k$c;->b:Ljava/io/OutputStream;

    .line 519
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/facebook/internal/k$c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/k$c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-object v0, p0, Lcom/facebook/internal/k$c;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 540
    return-void

    .line 538
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/k$c;->b:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 544
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/facebook/internal/k$c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 564
    if-ltz v0, :cond_0

    .line 565
    iget-object v1, p0, Lcom/facebook/internal/k$c;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 567
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lcom/facebook/internal/k$c;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 555
    if-lez v0, :cond_0

    .line 556
    iget-object v1, p0, Lcom/facebook/internal/k$c;->b:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 558
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/facebook/internal/k$c;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 573
    if-lez v0, :cond_0

    .line 574
    iget-object v1, p0, Lcom/facebook/internal/k$c;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 576
    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 587
    const-wide/16 v0, 0x0

    .line 588
    :goto_0
    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 589
    const/4 v3, 0x0

    sub-long v4, p1, v0

    array-length v6, v2

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/internal/k$c;->read([BII)I

    move-result v3

    .line 590
    if-gez v3, :cond_1

    .line 595
    :cond_0
    return-wide v0

    .line 593
    :cond_1
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 594
    goto :goto_0
.end method
