.class public Lcom/cmplay/util/g;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 75
    if-eqz p0, :cond_0

    .line 77
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 27
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 28
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 29
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 32
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 37
    :cond_0
    if-eqz v6, :cond_1

    .line 38
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 40
    :cond_1
    invoke-static {v7}, Lcom/cmplay/util/g;->a(Ljava/io/Closeable;)V

    .line 41
    invoke-static {v8}, Lcom/cmplay/util/g;->a(Ljava/io/Closeable;)V

    .line 43
    return-void

    .line 34
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 37
    :cond_2
    if-eqz v6, :cond_3

    .line 38
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 40
    :cond_3
    invoke-static {v7}, Lcom/cmplay/util/g;->a(Ljava/io/Closeable;)V

    .line 41
    invoke-static {v8}, Lcom/cmplay/util/g;->a(Ljava/io/Closeable;)V

    throw v0
.end method
