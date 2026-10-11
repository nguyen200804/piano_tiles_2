.class public Lorg/cocos2dx/lib/GameControllerUtils;
.super Ljava/lang/Object;
.source "GameControllerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureDirectoryExist(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    :cond_0
    return-void
.end method

.method public static readJsonFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    :goto_0
    return-object v0

    .line 26
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 30
    new-array v3, v1, [B

    .line 31
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 32
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
