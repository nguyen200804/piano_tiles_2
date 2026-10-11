.class Lcom/cmplay/base/util/gif/ReLinker;
.super Ljava/lang/Object;
.source "ReLinker.java"


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x2000

.field private static final LIB_DIR:Ljava/lang/String; = "lib"

.field private static final MAPPED_BASE_LIB_NAME:Ljava/lang/String;

.field private static final MAX_TRIES:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "com_cmplay_base_util_gif"

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/gif/ReLinker;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/cmplay/base/util/gif/ReLinker;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private static clearOldLibraryFiles(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 4
    .param p0, "outputFile"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_0

    .line 181
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 182
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 221
    if-eqz p0, :cond_0

    .line 222
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 206
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 207
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 212
    return-void

    .line 210
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static findLibraryEntry(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;
    .locals 4
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 137
    invoke-static {}, Lcom/cmplay/base/util/gif/ReLinker;->getSupportedABIs()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 138
    invoke-static {p0, v0}, Lcom/cmplay/base/util/gif/ReLinker;->getEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 143
    :goto_1
    return-object v0

    .line 137
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "abi"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cmplay/base/util/gif/ReLinker;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method private static getSupportedABIs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 149
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method static loadLibrary(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .prologue
    .line 57
    const-class v1, Lcom/cmplay/base/util/gif/ReLinker;

    monitor-enter v1

    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/cmplay/base/util/gif/ReLinker;->unpackLibrary(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;
    .locals 4
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    const/4 v1, 0x0

    .line 162
    :goto_0
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 164
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_1
    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open APK file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :catch_0
    move-exception v0

    move v0, v2

    .line 168
    goto :goto_0

    .line 174
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static setFilePermissions(Ljava/io/File;)V
    .locals 2
    .param p0, "outputFile"    # Ljava/io/File;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetWorldReadable"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 192
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 193
    invoke-virtual {p0, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 194
    return-void
.end method

.method private static unpackLibrary(Landroid/content/Context;)Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 70
    sget-object v4, Lcom/cmplay/base/util/gif/ReLinker;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 78
    goto :goto_0

    .line 81
    :cond_2
    const-string v4, "com_cmplay_base_util_gif_surface"

    invoke-static {v4}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    new-instance v5, Lcom/cmplay/base/util/gif/ReLinker$1;

    invoke-direct {v5, v4}, Lcom/cmplay/base/util/gif/ReLinker$1;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v0, v5}, Lcom/cmplay/base/util/gif/ReLinker;->clearOldLibraryFiles(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 89
    invoke-static {v1, v5}, Lcom/cmplay/base/util/gif/ReLinker;->clearOldLibraryFiles(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 92
    new-instance v5, Ljava/io/File;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    :try_start_0
    invoke-static {v5}, Lcom/cmplay/base/util/gif/ReLinker;->openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v5

    .line 98
    :goto_1
    add-int/lit8 v6, v2, 0x1

    const/4 v4, 0x5

    if-ge v2, v4, :cond_5

    .line 99
    :try_start_1
    invoke-static {v5}, Lcom/cmplay/base/util/gif/ReLinker;->findLibraryEntry(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 100
    if-nez v2, :cond_4

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Library "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/gif/ReLinker;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for supported ABIs not found in APK file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :catchall_0
    move-exception v0

    move-object v3, v5

    .line 127
    :goto_2
    if-eqz v3, :cond_3

    .line 128
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    :cond_3
    :goto_3
    throw v0

    .line 107
    :cond_4
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 108
    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 109
    :try_start_5
    invoke-static {v4, v2}, Lcom/cmplay/base/util/gif/ReLinker;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 116
    :try_start_6
    invoke-static {v4}, Lcom/cmplay/base/util/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v2}, Lcom/cmplay/base/util/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    .line 119
    invoke-static {v0}, Lcom/cmplay/base/util/gif/ReLinker;->setFilePermissions(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 127
    :cond_5
    if-eqz v5, :cond_0

    .line 128
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 110
    :catch_1
    move-exception v2

    move-object v2, v3

    move-object v4, v3

    .line 111
    :goto_4
    const/4 v7, 0x2

    if-le v6, v7, :cond_6

    move-object v0, v1

    .line 116
    :cond_6
    :try_start_8
    invoke-static {v4}, Lcom/cmplay/base/util/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v2}, Lcom/cmplay/base/util/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    move v2, v6

    goto :goto_1

    .line 116
    :catchall_1
    move-exception v0

    move-object v4, v3

    :goto_5
    invoke-static {v4}, Lcom/cmplay/base/util/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v3}, Lcom/cmplay/base/util/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 130
    :catch_2
    move-exception v1

    goto :goto_3

    .line 126
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 116
    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 110
    :catch_3
    move-exception v2

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v7

    goto :goto_4
.end method
