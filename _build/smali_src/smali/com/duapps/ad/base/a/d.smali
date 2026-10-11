.class public Lcom/duapps/ad/base/a/d;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/duapps/ad/base/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/base/a/d;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "ImageUtils"

    const-string v2, "Failed to close the target"

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-static {}, Lcom/duapps/ad/base/a/d;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/base/a/d;->b(Ljava/lang/String;)Z

    .line 116
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 127
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 128
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v1, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 130
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 131
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 133
    if-eqz v4, :cond_5

    .line 134
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 139
    :cond_3
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-lez v2, :cond_4

    .line 140
    invoke-virtual {v4, p3, p4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    :cond_4
    const/4 v0, 0x1

    .line 146
    invoke-static {v3}, Lcom/duapps/ad/base/a/d;->a(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v1}, Lcom/duapps/ad/base/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 146
    :goto_2
    invoke-static {v2}, Lcom/duapps/ad/base/a/d;->a(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v1}, Lcom/duapps/ad/base/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_3
    invoke-static {v3}, Lcom/duapps/ad/base/a/d;->a(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v2}, Lcom/duapps/ad/base/a/d;->a(Ljava/io/Closeable;)V

    throw v0

    .line 146
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 143
    :catch_1
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v2, v3

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 98
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/duapps/ad/base/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 62
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 70
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 74
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 75
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 76
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 77
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 81
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 86
    invoke-static {v1}, Lcom/duapps/ad/base/a/d;->a(Ljava/io/Closeable;)V

    .line 89
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 86
    :goto_1
    invoke-static {v1}, Lcom/duapps/ad/base/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    invoke-static {v1}, Lcom/duapps/ad/base/a/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 83
    :catch_1
    move-exception v2

    goto :goto_1
.end method
