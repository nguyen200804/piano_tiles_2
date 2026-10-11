.class public final Lcom/mnt/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ROOT_FILE_PATH:Ljava/lang/String;

.field private static a:[B

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/e;->pX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mnt/LogUtil;->ROOT_FILE_PATH:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/mnt/impl/e;->pY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mnt/LogUtil;->a:[B

    .line 29
    sget-object v0, Lcom/mnt/impl/e;->pZ:Ljava/lang/String;

    sput-object v0, Lcom/mnt/LogUtil;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static out(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/mnt/LogUtil;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, p0, v1, v2}, Lcom/mnt/LogUtil;->out(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 33
    return-void
.end method

.method public static out(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/mnt/LogUtil;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/mnt/LogUtil;->out(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 37
    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/mnt/LogUtil;->out(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 45
    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/mnt/LogUtil;->out(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 49
    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/mnt/LogUtil;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p2}, Lcom/mnt/LogUtil;->out(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 41
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public static declared-synchronized writeFile(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 93
    const-class v1, Lcom/mnt/LogUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/mnt/impl/e;->qa:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 99
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 103
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mnt/LogUtil;->ROOT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mnt/impl/e;->qb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 109
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/mnt/impl/e;->qc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 114
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 116
    sget-object v0, Lcom/mnt/LogUtil;->a:[B

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 117
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    .line 119
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
