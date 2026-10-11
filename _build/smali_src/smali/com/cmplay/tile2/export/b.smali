.class public Lcom/cmplay/tile2/export/b;
.super Ljava/lang/Object;
.source "FormFile.java"


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cmplay/tile2/export/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/cmplay/tile2/export/b;->a:Ljava/io/File;

    .line 20
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cmplay/tile2/export/b;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmplay/tile2/export/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 35
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/cmplay/tile2/export/b;->a:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/16 v3, 0x400

    :try_start_1
    new-array v3, v3, [B

    .line 41
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 42
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 56
    :goto_2
    return-object v0

    .line 44
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 51
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 52
    :catch_1
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 52
    :catch_2
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 47
    :catch_3
    move-exception v1

    move-object v2, v0

    .line 48
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 51
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 52
    :catch_4
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 50
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 51
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 54
    :goto_5
    throw v0

    .line 52
    :catch_5
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 50
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 47
    :catch_6
    move-exception v1

    goto :goto_3

    .line 45
    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method
