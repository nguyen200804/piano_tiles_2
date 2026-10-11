.class public Lcom/cmplay/tile2/GameApp;
.super Landroid/app/Application;
.source "GameApp.java"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Z

.field public static c:Z

.field public static d:J

.field public static e:J

.field public static f:J

.field public static g:Ljava/lang/String;

.field private static h:Lcom/cmplay/tile2/GameApp;


# instance fields
.field private i:Landroid/os/Handler;

.field private j:Lcom/cmplay/crashreport/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 76
    sput-boolean v1, Lcom/cmplay/tile2/GameApp;->b:Z

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/tile2/GameApp;->h:Lcom/cmplay/tile2/GameApp;

    .line 79
    sput-boolean v1, Lcom/cmplay/tile2/GameApp;->c:Z

    .line 80
    sput-wide v2, Lcom/cmplay/tile2/GameApp;->d:J

    .line 81
    sput-wide v2, Lcom/cmplay/tile2/GameApp;->e:J

    .line 82
    sput-wide v2, Lcom/cmplay/tile2/GameApp;->f:J

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/cmplay/tile2/GameApp;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 564
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/tile2/GameApp;->i:Landroid/os/Handler;

    .line 574
    new-instance v0, Lcom/cmplay/tile2/GameApp$3;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/GameApp$3;-><init>(Lcom/cmplay/tile2/GameApp;)V

    iput-object v0, p0, Lcom/cmplay/tile2/GameApp;->j:Lcom/cmplay/crashreport/a;

    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 86
    sget-wide v0, Lcom/cmplay/tile2/GameApp;->d:J

    return-wide v0
.end method

.method private a(Ljava/lang/String;JI)Ljava/io/File;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 432
    const-string v0, "nativelib"

    const-string v2, "start extracting lib from apk"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/selflib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_libcocos2dcpp.so"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 440
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 442
    const-string v1, "nativelib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exist load direct"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    :goto_0
    return-object v0

    .line 446
    :cond_1
    const-string v5, "nativelib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lib "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " not exist extracting from apk"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 449
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 451
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 452
    const-string v0, "nativelib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 453
    goto :goto_0

    .line 455
    :cond_3
    invoke-direct {p0, v4}, Lcom/cmplay/tile2/GameApp;->a(Ljava/io/File;)V

    .line 457
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 458
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".so"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 460
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 467
    const-string v2, "lib/armeabi-v7a/libcocos2dcpp.so"

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 468
    if-nez v2, :cond_4

    .line 469
    const-string v2, "nativelib"

    const-string v7, "armeabi-v7a entry is not exist  trying x86"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v2, "lib/x86/libcocos2dcpp.so"

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 472
    :cond_4
    if-eqz v2, :cond_9

    .line 473
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 474
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    const/16 v7, 0x400

    :try_start_1
    new-array v7, v7, [B

    .line 479
    :goto_1
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_6

    .line 480
    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 485
    :catch_0
    move-exception v2

    .line 486
    :goto_2
    :try_start_2
    const-string v5, "nativelib"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 489
    if-eqz v4, :cond_5

    .line 491
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 499
    :cond_5
    :goto_3
    if-eqz v3, :cond_8

    .line 500
    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 501
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    const-string v0, "nativelib"

    const-string v2, "rename failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v0, v1

    .line 509
    goto/16 :goto_0

    .line 482
    :cond_6
    const/4 v3, 0x1

    .line 483
    :try_start_4
    const-string v2, "nativelib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extract success to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 489
    :goto_5
    if-eqz v4, :cond_5

    .line 491
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 492
    :catch_1
    move-exception v2

    .line 493
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 492
    :catch_2
    move-exception v2

    .line 493
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 489
    :catchall_0
    move-exception v0

    move-object v4, v1

    :goto_6
    if-eqz v4, :cond_7

    .line 491
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 495
    :cond_7
    :goto_7
    throw v0

    .line 492
    :catch_3
    move-exception v1

    .line 493
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 507
    :cond_8
    const-string v0, "nativelib"

    const-string v2, "extract lib failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 489
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 485
    :catch_4
    move-exception v2

    move-object v4, v1

    goto :goto_2

    :cond_9
    move-object v4, v1

    goto :goto_5
.end method

.method public static a(J)V
    .locals 0

    .prologue
    .line 90
    sput-wide p0, Lcom/cmplay/tile2/GameApp;->d:J

    .line 91
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lcom/cmcm/dmc/sdk/c;->a()Lcom/cmcm/dmc/sdk/c;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/c;->a(I)V

    .line 270
    invoke-static {}, Lcom/cmcm/dmc/sdk/c;->a()Lcom/cmcm/dmc/sdk/c;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/cmplay/tile2/GameApp$1;

    invoke-direct {v2, p0}, Lcom/cmplay/tile2/GameApp$1;-><init>(Lcom/cmplay/tile2/GameApp;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/cmcm/dmc/sdk/c;->a(Landroid/content/Context;ILcom/cmcm/dmc/sdk/a;)Z

    .line 297
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 419
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_1

    .line 421
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 422
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "libcocos2dcpp.so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    const-string v4, "nativelib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting old so :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 421
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_1
    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .prologue
    .line 310
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/libcocos2dcpp.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    .line 319
    :cond_0
    const-string v1, "nativelib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 323
    :catch_1
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_1
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 94
    sget-wide v0, Lcom/cmplay/tile2/GameApp;->e:J

    return-wide v0
.end method

.method public static b(J)V
    .locals 0

    .prologue
    .line 98
    sput-wide p0, Lcom/cmplay/tile2/GameApp;->e:J

    .line 99
    return-void
.end method

.method private b(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .prologue
    .line 331
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 332
    :try_start_0
    const-string v0, "nativelib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v0, "nativelib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native lib dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "libcocos2dcpp.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    .line 341
    :cond_0
    const-string v1, "nativelib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 345
    :catch_1
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_1
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 102
    sget-wide v0, Lcom/cmplay/tile2/GameApp;->f:J

    return-wide v0
.end method

.method public static c(J)V
    .locals 0

    .prologue
    .line 106
    sput-wide p0, Lcom/cmplay/tile2/GameApp;->f:J

    .line 107
    return-void
.end method

.method private c(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 4

    .prologue
    .line 353
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 355
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-wide v2, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget v1, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/cmplay/tile2/GameApp;->a(Ljava/lang/String;JI)Ljava/io/File;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    const/4 v0, 0x1

    .line 367
    :goto_0
    return v0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :catch_1
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 365
    throw v0
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 371
    sget-object v0, Lcom/cmplay/tile2/GameApp;->h:Lcom/cmplay/tile2/GameApp;

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/cmplay/tile2/GameApp;->h:Lcom/cmplay/tile2/GameApp;

    invoke-virtual {v0}, Lcom/cmplay/tile2/GameApp;->f()V

    .line 374
    :cond_0
    return-void
.end method

.method public static g()Lcom/cmplay/tile2/GameApp;
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/cmplay/tile2/GameApp;->h:Lcom/cmplay/tile2/GameApp;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 593
    sget-object v0, Lcom/cmplay/tile2/GameApp;->g:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/cmplay/tile2/GameApp;->g:Ljava/lang/String;

    .line 615
    :goto_0
    return-object v0

    .line 594
    :cond_0
    const-string v0, "/proc/cpuinfo"

    .line 598
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    const/16 v0, 0x800

    :try_start_1
    new-array v0, v0, [C

    .line 601
    const/4 v2, 0x0

    const/16 v3, 0x800

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/BufferedReader;->read([CII)I

    .line 602
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 603
    const-string v0, "Hardware"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 604
    if-gtz v0, :cond_1

    sget-object v0, Lcom/cmplay/tile2/GameApp;->g:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 615
    :goto_1
    sget-object v0, Lcom/cmplay/tile2/GameApp;->g:Ljava/lang/String;

    goto :goto_0

    .line 605
    :cond_1
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 607
    array-length v2, v0

    if-le v2, v4, :cond_2

    .line 608
    const/4 v2, 0x2

    aget-object v0, v0, v2

    sput-object v0, Lcom/cmplay/tile2/GameApp;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 610
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 138
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/i/c;->a(Landroid/content/Context;)V

    .line 139
    new-instance v0, Lcom/cmplay/util/b/d;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cmplay/util/aa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cmplay/util/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/cmplay/util/aa;->a(Landroid/content/Context;Lcom/cmplay/util/k;)V

    .line 141
    new-instance v0, Lcom/cmplay/util/b/d;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cmplay/util/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setSharedPreferenceImpl(Lcom/cmplay/util/k;)V

    .line 142
    iget-object v0, p0, Lcom/cmplay/tile2/GameApp;->j:Lcom/cmplay/crashreport/a;

    invoke-static {p0, v0}, Lcom/cmplay/crashreport/b;->a(Landroid/content/Context;Lcom/cmplay/crashreport/a;)V

    .line 143
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->k()V

    .line 144
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->l()V

    .line 145
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->m()V

    .line 146
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/cmplay/i/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->f()V

    .line 154
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->q()V

    .line 155
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/l;->a(Landroid/content/Context;)V

    .line 158
    invoke-static {p0}, Lcom/cmplay/internalpush/e;->a(Landroid/content/Context;)V

    .line 160
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/cloud/CloudUpdateReceiver;->a(Landroid/content/Context;)Lcom/cmplay/cloud/CloudUpdateReceiver;

    .line 161
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->t()V

    .line 162
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->o()V

    .line 163
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->r()V

    .line 164
    invoke-static {}, Lcom/cmplay/d/a;->a()Lcom/cmplay/d/a;

    move-result-object v0

    new-instance v1, Lcom/cmplay/d/c;

    invoke-direct {v1}, Lcom/cmplay/d/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cmplay/d/a;->a(Lcom/cmplay/d/a$b;)V

    .line 165
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/ConnectionChangedReceiver;->a(Landroid/content/Context;)V

    .line 166
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->s()V

    .line 168
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->f()V

    .line 176
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->q()V

    .line 178
    invoke-static {p0}, Lcom/cmplay/internalpush/e;->a(Landroid/content/Context;)V

    .line 180
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/cloud/CloudUpdateReceiver;->a(Landroid/content/Context;)Lcom/cmplay/cloud/CloudUpdateReceiver;

    .line 182
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->initByService(Landroid/content/Context;)V

    .line 183
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->registerExceptionHandler()V

    .line 184
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/c/a/a;->a(Landroid/content/Context;)Lcom/cmplay/c/a/a;

    .line 186
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/l;->a(Landroid/content/Context;)V

    .line 187
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->t()V

    .line 188
    invoke-direct {p0, p0}, Lcom/cmplay/tile2/GameApp;->a(Landroid/content/Context;)V

    .line 189
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/ConnectionChangedReceiver;->a(Landroid/content/Context;)V

    .line 191
    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->f()V

    .line 199
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->q()V

    .line 200
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/l;->a(Landroid/content/Context;)V

    .line 204
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->initByService(Landroid/content/Context;)V

    .line 206
    :cond_0
    return-void
.end method

.method private n()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/GameApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 240
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    const-string v1, "command_preload_image"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/GameApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 306
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 513
    new-instance v0, Lcom/cmplay/tile2/GameApp$2;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/GameApp$2;-><init>(Lcom/cmplay/tile2/GameApp;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setCloudConfigGetter(Lorg/cocos2dx/lib/ICloudConfigGetter;)V

    .line 544
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 547
    const-string v0, "Ga5Y8wyWYUt5CsGqUoiJD5"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->b(Ljava/lang/String;)V

    .line 548
    const-string v0, "CNY"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->c(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 552
    const-string v0, "{\"native\": [{\"pid\": \"138420\",\"fbids\": [\"\"]}]}"

    invoke-static {p0, v0}, Lcom/duapps/ad/base/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 555
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-static {}, Lcom/cmplay/cloud/d;->a()Lcom/cmplay/cloud/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/cloud/d;->b()V

    .line 558
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/cmplay/tile2/GameApp;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/cmplay/tile2/GameApp;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 572
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lcom/cmplay/i/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->n()V

    .line 214
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/b/b;->b()V

    .line 216
    :cond_0
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->p()V

    .line 220
    const-string v0, "key_language_selected"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, "key_country_selected"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {}, Lcom/cmplay/d/b;->a()Lcom/cmplay/d/b;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/cmplay/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    return-void
.end method

.method public f()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 377
    sget-boolean v0, Lcom/cmplay/tile2/GameApp;->b:Z

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x480

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 383
    :try_start_1
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 385
    :try_start_2
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 386
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 387
    const-string v3, "android.app.lib_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 389
    const/4 v2, 0x1

    sput-boolean v2, Lcom/cmplay/tile2/GameApp;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_3

    .line 398
    :goto_1
    sget-boolean v2, Lcom/cmplay/tile2/GameApp;->b:Z

    if-nez v2, :cond_0

    .line 399
    const-string v2, "nativelib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "======== auto load lib failed, try load custom at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/cmplay/i/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0, v1, v0}, Lcom/cmplay/tile2/GameApp;->a(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    sput-boolean v5, Lcom/cmplay/tile2/GameApp;->b:Z

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 391
    :goto_2
    sput-boolean v6, Lcom/cmplay/tile2/GameApp;->b:Z

    .line 392
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 393
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 394
    :goto_3
    sput-boolean v6, Lcom/cmplay/tile2/GameApp;->b:Z

    .line 395
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_1

    .line 402
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/cmplay/tile2/GameApp;->b(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 403
    sput-boolean v5, Lcom/cmplay/tile2/GameApp;->b:Z

    goto :goto_0

    .line 404
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/cmplay/tile2/GameApp;->c(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    sput-boolean v5, Lcom/cmplay/tile2/GameApp;->b:Z

    goto :goto_0

    .line 393
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_3

    .line 390
    :catch_4
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 111
    sget-wide v0, Lcom/cmplay/tile2/GameApp;->d:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cmplay/tile2/GameApp;->d:J

    .line 116
    :cond_0
    invoke-static {v2}, Lcom/cmplay/base/util/g;->a(Z)V

    .line 117
    sput-boolean v2, Lcom/ijinshan/cloudconfig/d/a;->a:Z

    .line 118
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 119
    sput-object p0, Lcom/cmplay/tile2/GameApp;->h:Lcom/cmplay/tile2/GameApp;

    .line 120
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 121
    invoke-direct {p0}, Lcom/cmplay/tile2/GameApp;->j()V

    .line 122
    const-string v0, "key_android_sdk_later_load"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/cmplay/tile2/GameApp;->c:Z

    .line 124
    sget-boolean v0, Lcom/cmplay/tile2/GameApp;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/cmplay/tile2/GameApp;->d()V

    .line 127
    :cond_2
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cmplay/tile2/GameApp;->b(J)V

    .line 131
    :cond_3
    return-void
.end method
