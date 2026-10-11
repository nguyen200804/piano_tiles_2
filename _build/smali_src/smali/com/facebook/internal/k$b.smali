.class Lcom/facebook/internal/k$b;
.super Ljava/io/OutputStream;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/io/OutputStream;

.field final b:Lcom/facebook/internal/k$f;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/k$f;)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/facebook/internal/k$b;->a:Ljava/io/OutputStream;

    .line 479
    iput-object p2, p0, Lcom/facebook/internal/k$b;->b:Lcom/facebook/internal/k$f;

    .line 480
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/k$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    iget-object v0, p0, Lcom/facebook/internal/k$b;->b:Lcom/facebook/internal/k$f;

    invoke-interface {v0}, Lcom/facebook/internal/k$f;->a()V

    .line 489
    return-void

    .line 487
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/k$b;->b:Lcom/facebook/internal/k$f;

    invoke-interface {v1}, Lcom/facebook/internal/k$f;->a()V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/facebook/internal/k$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 494
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/facebook/internal/k$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 509
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/facebook/internal/k$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 504
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/facebook/internal/k$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 499
    return-void
.end method
