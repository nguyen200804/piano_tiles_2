.class public Lcom/cmcm/orion/picks/impl/a/a;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# static fields
.field public static a:Z

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/cmcm/orion/picks/impl/a/b;

.field private static d:Ljava/util/concurrent/Executor;

.field private static e:Ljava/io/File;

.field private static f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 39
    const-class v0, Lcom/cmcm/orion/picks/impl/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/picks/impl/a/a;->b:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/cmcm/orion/picks/impl/a/a;->d:Ljava/util/concurrent/Executor;

    .line 69
    sput-boolean v2, Lcom/cmcm/orion/picks/impl/a/a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 387
    sget-object v1, Lcom/cmcm/orion/picks/impl/a/a;->f:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 388
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->f:Ljava/io/File;

    .line 410
    :cond_0
    :goto_0
    return-object v0

    .line 392
    :cond_1
    sget-object v1, Lcom/cmcm/orion/picks/impl/a/a;->e:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 397
    sget-object v1, Lcom/cmcm/orion/picks/impl/a/a;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VIDEO_DOWNLOAD_TMP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    :cond_3
    sput-object v1, Lcom/cmcm/orion/picks/impl/a/a;->f:Ljava/io/File;

    move-object v0, v1

    .line 410
    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/cmcm/orion/picks/impl/a/a;->b(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/cmcm/orion/picks/impl/a/a$1;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/impl/a/a$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/cmcm/orion/picks/impl/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/cmcm/orion/picks/impl/a$a;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 228
    :goto_0
    return-void

    .line 198
    :cond_0
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/cmcm/orion/picks/impl/a/a$2;

    invoke-direct {v1, p0, p1}, Lcom/cmcm/orion/picks/impl/a/a$2;-><init>(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 232
    :cond_0
    const/4 v0, 0x2

    invoke-static {p2, p0, v0}, Lcom/cmcm/orion/picks/impl/a/a;->b(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V

    .line 277
    :goto_0
    return-void

    .line 236
    :cond_1
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/cmcm/orion/picks/impl/a/a$3;

    invoke-direct {v1, p1, p2, p0}, Lcom/cmcm/orion/picks/impl/a/a$3;-><init>(Ljava/io/File;Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/io/Serializable;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 281
    :cond_0
    const/4 v0, 0x2

    invoke-static {p2, p0, v0}, Lcom/cmcm/orion/picks/impl/a/a;->b(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V

    .line 319
    :goto_0
    return-void

    .line 285
    :cond_1
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/cmcm/orion/picks/impl/a/a$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/cmcm/orion/picks/impl/a/a$4;-><init>(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;Ljava/io/Serializable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 72
    sget-boolean v2, Lcom/cmcm/orion/picks/impl/a/a;->a:Z

    if-eqz v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    if-nez p0, :cond_2

    move v0, v1

    .line 77
    goto :goto_0

    .line 81
    :cond_2
    :try_start_0
    sget-object v2, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;

    if-nez v2, :cond_6

    .line 1354
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v2

    .line 1355
    if-eqz v2, :cond_4

    .line 1356
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1357
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1358
    if-eqz v3, :cond_3

    .line 1359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1360
    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/a/a;->e(Ljava/lang/String;)V

    .line 1364
    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 1365
    if-eqz v2, :cond_4

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1367
    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a/a;->e(Ljava/lang/String;)V

    .line 85
    :cond_4
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 90
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    .line 97
    :cond_6
    sput-boolean v0, Lcom/cmcm/orion/picks/impl/a/a;->a:Z

    goto/16 :goto_0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 103
    if-nez p0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VAST_CACHE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :cond_2
    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/a/b;->a(Ljava/io/File;)Lcom/cmcm/orion/picks/impl/a/b;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/cmcm/orion/picks/impl/a/b;->b()J

    move-result-wide v4

    .line 120
    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/a$1;->b(Ljava/io/File;)J

    move-result-wide v6

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Current disk:"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Already used size = "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x400

    div-long v8, v4, v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "M"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Remain free size = "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x400

    div-long v8, v6, v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "M"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    add-long/2addr v4, v6

    const-wide/32 v6, 0x6400000

    sub-long/2addr v4, v6

    .line 125
    const-wide/32 v6, 0x4100000

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 129
    const-wide/32 v6, 0x9600000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Finally determined lruCache size = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x400

    div-long v6, v4, v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "M"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2, v4, v5}, Lcom/cmcm/orion/picks/impl/a/b;->a(J)V

    .line 133
    sput-object v1, Lcom/cmcm/orion/picks/impl/a/a;->e:Ljava/io/File;

    .line 134
    sput-object v2, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lru initialize error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 3

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 325
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 327
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    const/4 v0, 0x1

    .line 335
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 337
    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 331
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    const/4 v0, 0x0

    .line 334
    if-eqz v1, :cond_1

    .line 335
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 337
    :cond_1
    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 342
    :catch_1
    move-exception v1

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 334
    :goto_2
    if-eqz v1, :cond_2

    .line 335
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 337
    :cond_2
    if-eqz p1, :cond_3

    .line 338
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 341
    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 333
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 331
    :catch_3
    move-exception v0

    goto :goto_1

    .line 342
    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b()Lcom/cmcm/orion/picks/impl/a/b;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;

    return-object v0
.end method

.method private static b(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 348
    if-eqz p0, :cond_0

    .line 349
    invoke-interface {p0, p1, p2}, Lcom/cmcm/orion/picks/impl/a$a;->a(Ljava/lang/String;I)V

    .line 351
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 160
    sget-object v1, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    const/4 v1, 0x0

    .line 166
    :try_start_0
    sget-object v2, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;

    .line 1383
    invoke-static {p0}, Lcom/cmcm/orion/picks/impl/a$1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {v2, v3}, Lcom/cmcm/orion/picks/impl/a/b;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/a/b$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 167
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 171
    :cond_2
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$c;->close()V

    goto :goto_0

    .line 171
    :catch_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$c;->close()V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$c;->close()V

    :cond_3
    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmcm/orion/picks/impl/a/a;->c:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2383
    invoke-static {p0}, Lcom/cmcm/orion/picks/impl/a$1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    .line 3383
    invoke-static {p0}, Lcom/cmcm/orion/picks/impl/a$1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 373
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VAST_CACHE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/File;)V

    .line 374
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VIDEO_DOWNLOAD_TMP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/File;)V

    .line 377
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VastVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/File;)V

    .line 378
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BRAND_SPLASH_CACHE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/File;)V

    .line 379
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BRAND_SPLASH_CACHE_TMP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/File;)V

    .line 380
    return-void
.end method
