.class public Lcom/cmplay/tile2/export/a;
.super Ljava/lang/Object;
.source "CompressedFileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 31
    .line 33
    const/4 v3, 0x0

    .line 36
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v6

    move v1, v3

    :goto_0
    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    if-eqz v0, :cond_8

    .line 41
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v3, v0}, Lcom/cmplay/tile2/export/a;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 44
    goto :goto_0

    .line 48
    :cond_0
    if-eqz v5, :cond_1

    .line 49
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 54
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 55
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 61
    :cond_2
    :goto_3
    if-nez v1, :cond_3

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 64
    :cond_3
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 56
    :catch_1
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 45
    :catch_2
    move-exception v0

    move v2, v3

    move-object v4, v1

    move-object v3, v1

    .line 46
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 48
    if-eqz v4, :cond_4

    .line 49
    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 54
    :cond_4
    :goto_5
    if-eqz v3, :cond_7

    .line 55
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    .line 58
    goto :goto_3

    .line 50
    :catch_3
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 56
    :catch_4
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    .line 58
    goto :goto_3

    .line 48
    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v5, v1

    :goto_6
    if-eqz v5, :cond_5

    .line 49
    :try_start_a
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 54
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    .line 55
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 58
    :cond_6
    :goto_8
    throw v0

    .line 50
    :catch_5
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 56
    :catch_6
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 48
    :catchall_1
    move-exception v0

    move-object v5, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto :goto_6

    .line 45
    :catch_7
    move-exception v0

    move-object v4, v1

    move v7, v3

    move-object v3, v1

    move-object v1, v2

    move v2, v7

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v7, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v7

    goto :goto_4

    :catch_9
    move-exception v0

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v7, v2

    move v2, v1

    move-object v1, v7

    goto :goto_4

    :cond_7
    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v1, 0x1

    .line 80
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 85
    new-instance v0, Ljava/util/zip/ZipEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 86
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    move v3, v2

    .line 89
    :goto_1
    array-length v4, v5

    if-ge v3, v4, :cond_1

    .line 90
    aget-object v4, v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v4, v6}, Lcom/cmplay/tile2/export/a;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v4, v1

    .line 89
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 122
    :goto_2
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    .line 95
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    const/4 v3, 0x0

    .line 102
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 106
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 107
    :goto_3
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    .line 108
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 112
    :catch_1
    move-exception v1

    .line 115
    :goto_4
    if-eqz v0, :cond_5

    .line 116
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move v0, v2

    .line 119
    goto :goto_2

    .line 115
    :cond_3
    if-eqz v0, :cond_6

    .line 116
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    .line 119
    goto :goto_2

    .line 117
    :catch_2
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 119
    goto :goto_2

    .line 117
    :catch_3
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    .line 119
    goto :goto_2

    .line 115
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v3, :cond_4

    .line 116
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 119
    :cond_4
    :goto_6
    throw v0

    .line 117
    :catch_4
    move-exception v1

    .line 118
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 115
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    .line 112
    :catch_5
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2
.end method
