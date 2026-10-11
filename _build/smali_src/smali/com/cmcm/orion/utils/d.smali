.class public final Lcom/cmcm/orion/utils/d;
.super Ljava/lang/Object;
.source "Networking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/utils/d$a;,
        Lcom/cmcm/orion/utils/d$b;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static c:Ljava/util/concurrent/Executor;

.field private static d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 50
    sput v0, Lcom/cmcm/orion/utils/d;->a:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/cmcm/orion/utils/d;->b:I

    .line 55
    invoke-static {}, Lcom/cmcm/orion/utils/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/utils/d;->c:Ljava/util/concurrent/Executor;

    .line 72
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/cmcm/orion/utils/d;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/cmcm/orion/utils/d$b;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cmcm/orion/utils/d;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)Lcom/cmcm/orion/utils/d$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)Lcom/cmcm/orion/utils/d$b;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    .line 1085
    new-instance v0, Lcom/cmcm/orion/utils/d$b;

    invoke-direct {v0}, Lcom/cmcm/orion/utils/d$b;-><init>()V

    .line 1323
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1324
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1087
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Lcom/cmcm/orion/utils/d$b;->a(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v0, p1}, Lcom/cmcm/orion/utils/d$b;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 1089
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cmcm/orion/utils/d$b;->a(I)V

    .line 1090
    sget-object v2, Lcom/cmcm/orion/utils/d;->c:Ljava/util/concurrent/Executor;

    invoke-static {v2, v0}, Lcom/cmcm/orion/utils/d;->a(Ljava/util/concurrent/Executor;Lcom/cmcm/orion/utils/d$b;)Z

    move-result v2

    .line 1092
    if-eqz v2, :cond_2

    :goto_1
    return-object v0

    .line 1327
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 81
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)Lcom/cmcm/orion/utils/d$b;
    .locals 1

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Lcom/cmcm/orion/utils/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)Lcom/cmcm/orion/utils/d$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/cmcm/orion/utils/d;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 295
    if-eqz v1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()Ljava/util/concurrent/Executor;
    .locals 9

    .prologue
    .line 58
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/cmcm/orion/utils/d;->b:I

    sget v3, Lcom/cmcm/orion/utils/d;->b:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 63
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lcom/cmcm/orion/picks/impl/a$a;ILcom/cmcm/orion/adsdk/d;)V
    .locals 0

    .prologue
    .line 602
    if-eqz p0, :cond_0

    .line 603
    invoke-interface {p0, p1, p2}, Lcom/cmcm/orion/picks/impl/a$a;->a(ILcom/cmcm/orion/adsdk/d;)V

    .line 605
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/d$b;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 40
    .line 2537
    invoke-static {p0}, Lcom/cmcm/orion/utils/d$b;->a(Lcom/cmcm/orion/utils/d$b;)Lcom/cmcm/orion/picks/impl/a$a;

    move-result-object v5

    .line 2539
    invoke-static {p0}, Lcom/cmcm/orion/utils/d$b;->b(Lcom/cmcm/orion/utils/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2540
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->o:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v5, v2, v0}, Lcom/cmcm/orion/utils/d;->a(Lcom/cmcm/orion/picks/impl/a$a;ILcom/cmcm/orion/adsdk/d;)V

    .line 2596
    :cond_0
    :goto_0
    return-void

    .line 2547
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/cmcm/orion/utils/d;->b(Lcom/cmcm/orion/utils/d$b;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2548
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 2549
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    .line 2550
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2552
    const/4 v3, 0x1

    .line 2553
    :goto_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2554
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2555
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 2556
    goto :goto_1

    .line 2558
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 2559
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cmcm/orion/utils/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2561
    if-eqz v5, :cond_4

    .line 2562
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    invoke-interface {v5, v2, v0, v3, v4}, Lcom/cmcm/orion/picks/impl/a$a;->a(ILjava/io/InputStream;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2588
    :goto_2
    if-eqz v0, :cond_3

    .line 2590
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2595
    :cond_3
    :goto_3
    if-eqz v1, :cond_0

    .line 2596
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 2564
    :cond_4
    :try_start_4
    invoke-static {v0, v3}, Lcom/cmcm/orion/utils/d;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 2571
    :catch_0
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v3, Lcom/cmcm/orion/adsdk/d;->l:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v5, v2, v3}, Lcom/cmcm/orion/utils/d;->a(Lcom/cmcm/orion/picks/impl/a$a;ILcom/cmcm/orion/adsdk/d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2588
    if-eqz v0, :cond_5

    .line 2590
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2595
    :cond_5
    :goto_5
    if-eqz v1, :cond_0

    .line 2596
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 2568
    :cond_6
    :try_start_7
    sget-object v3, Lcom/cmcm/orion/adsdk/d;->k:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v5, v2, v3}, Lcom/cmcm/orion/utils/d;->a(Lcom/cmcm/orion/picks/impl/a$a;ILcom/cmcm/orion/adsdk/d;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 2573
    :catch_1
    move-exception v3

    move-object v8, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2574
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2575
    const-string v4, "ENCODING_ERROR_TAG:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2576
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->h:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v5, v3, v0}, Lcom/cmcm/orion/utils/d;->a(Lcom/cmcm/orion/picks/impl/a$a;ILcom/cmcm/orion/adsdk/d;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2588
    :goto_7
    if-eqz v1, :cond_7

    .line 2590
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 2595
    :cond_7
    :goto_8
    if-eqz v2, :cond_0

    .line 2596
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 2577
    :cond_8
    :try_start_a
    const-string v4, "PROTOCOL_ERROR_TAG:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2578
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->i:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v5, v3, v0}, Lcom/cmcm/orion/utils/d;->a(Lcom/cmcm/orion/picks/impl/a$a;ILcom/cmcm/orion/adsdk/d;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 2588
    :catchall_0
    move-exception v0

    :goto_9
    if-eqz v1, :cond_9

    .line 2590
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 2595
    :cond_9
    :goto_a
    if-eqz v2, :cond_a

    .line 2596
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v0

    .line 2579
    :cond_b
    :try_start_c
    const-string v4, "REDIRECT_ERROR_TAG:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2580
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->j:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v5, v3, v0}, Lcom/cmcm/orion/utils/d;->a(Lcom/cmcm/orion/picks/impl/a$a;ILcom/cmcm/orion/adsdk/d;)V

    goto :goto_7

    .line 2582
    :cond_c
    sget-object v4, Lcom/cmcm/orion/adsdk/d;->g:Lcom/cmcm/orion/adsdk/d;

    invoke-virtual {v4, v0}, Lcom/cmcm/orion/adsdk/d;->a(Ljava/lang/String;)Lcom/cmcm/orion/adsdk/d;

    move-result-object v0

    invoke-static {v5, v3, v0}, Lcom/cmcm/orion/utils/d;->a(Lcom/cmcm/orion/picks/impl/a$a;ILcom/cmcm/orion/adsdk/d;)V

    goto :goto_7

    .line 2585
    :cond_d
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->g:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v5, v3, v0}, Lcom/cmcm/orion/utils/d;->a(Lcom/cmcm/orion/picks/impl/a$a;ILcom/cmcm/orion/adsdk/d;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_a

    .line 2588
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_9

    .line 2573
    :catch_6
    move-exception v1

    move v3, v2

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_6

    :catch_7
    move-exception v3

    move-object v8, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_6

    .line 2571
    :catch_8
    move-exception v1

    move-object v1, v0

    goto/16 :goto_4
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/cmcm/orion/utils/d$b;)V
    .locals 4
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/cmcm/orion/utils/d$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-static {p1}, Lcom/cmcm/orion/utils/d$b;->c(Lcom/cmcm/orion/utils/d$b;)Ljava/util/HashMap;

    move-result-object v2

    .line 632
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 633
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_0
    invoke-static {p1}, Lcom/cmcm/orion/utils/d$b;->d(Lcom/cmcm/orion/utils/d$b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 684
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown mMethod type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :pswitch_0
    invoke-virtual {p1}, Lcom/cmcm/orion/utils/d$b;->b()[B

    move-result-object v0

    .line 643
    if-eqz v0, :cond_1

    .line 647
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 648
    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 649
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 650
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 651
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 686
    :cond_1
    :goto_1
    return-void

    .line 657
    :pswitch_1
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 660
    :pswitch_2
    const-string v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 663
    :pswitch_3
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 664
    invoke-static {p0, p1}, Lcom/cmcm/orion/utils/d;->b(Ljava/net/HttpURLConnection;Lcom/cmcm/orion/utils/d$b;)V

    goto :goto_1

    .line 667
    :pswitch_4
    const-string v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 668
    invoke-static {p0, p1}, Lcom/cmcm/orion/utils/d;->b(Ljava/net/HttpURLConnection;Lcom/cmcm/orion/utils/d$b;)V

    goto :goto_1

    .line 671
    :pswitch_5
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 674
    :pswitch_6
    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 677
    :pswitch_7
    const-string v0, "TRACE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 680
    :pswitch_8
    const-string v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 681
    invoke-static {p0, p1}, Lcom/cmcm/orion/utils/d;->b(Ljava/net/HttpURLConnection;Lcom/cmcm/orion/utils/d$b;)V

    goto :goto_1

    .line 637
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(Ljava/util/concurrent/Executor;Lcom/cmcm/orion/utils/d$b;)Z
    .locals 1

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Lcom/cmcm/orion/utils/d$1;

    invoke-direct {v0, p1}, Lcom/cmcm/orion/utils/d$1;-><init>(Lcom/cmcm/orion/utils/d$b;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 307
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 308
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 310
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 311
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 313
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 314
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Landroid/util/TypedValue;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 257
    new-instance v1, Lcom/cmcm/orion/utils/d$b;

    invoke-direct {v1}, Lcom/cmcm/orion/utils/d$b;-><init>()V

    .line 258
    invoke-virtual {v1, p0}, Lcom/cmcm/orion/utils/d$b;->a(Ljava/lang/String;)V

    .line 262
    :try_start_0
    invoke-static {v1}, Lcom/cmcm/orion/utils/d;->b(Lcom/cmcm/orion/utils/d$b;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 263
    if-eqz v2, :cond_2

    .line 264
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 265
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    .line 267
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/utils/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 270
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 271
    :try_start_2
    invoke-static {v1}, Lcom/cmcm/orion/utils/d;->a(Ljava/io/InputStream;)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 277
    if-eqz v1, :cond_0

    .line 279
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 284
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 289
    :cond_1
    :goto_1
    return-object v0

    .line 284
    :cond_2
    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 277
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_2
    if-eqz v1, :cond_3

    .line 279
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 284
    :cond_3
    :goto_3
    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 277
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_4

    .line 279
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 284
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 285
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 277
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Lcom/cmcm/orion/utils/b$1;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 204
    new-instance v1, Lcom/cmcm/orion/utils/d$b;

    invoke-direct {v1}, Lcom/cmcm/orion/utils/d$b;-><init>()V

    .line 205
    invoke-virtual {v1, p0}, Lcom/cmcm/orion/utils/d$b;->a(Ljava/lang/String;)V

    .line 208
    const/4 v2, -0x1

    .line 212
    :try_start_0
    invoke-static {v1}, Lcom/cmcm/orion/utils/d;->b(Lcom/cmcm/orion/utils/d$b;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 213
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 214
    const/16 v1, 0xc8

    if-ne v2, v1, :cond_6

    .line 215
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/utils/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 217
    :try_start_2
    invoke-static {v3, v1}, Lcom/cmcm/orion/utils/d;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 223
    :goto_0
    if-eqz v3, :cond_0

    .line 225
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 230
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 231
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 235
    :cond_1
    :goto_2
    new-instance v3, Lcom/cmcm/orion/utils/b$1;

    invoke-direct {v3}, Lcom/cmcm/orion/utils/b$1;-><init>()V

    .line 236
    iput-object v1, v3, Lcom/cmcm/orion/utils/b$1;->a:Ljava/lang/String;

    .line 237
    iput v2, v3, Lcom/cmcm/orion/utils/b$1;->b:I

    .line 238
    iput-object v0, v3, Lcom/cmcm/orion/utils/b$1;->c:Ljava/lang/String;

    .line 239
    return-object v3

    .line 220
    :catch_0
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    .line 223
    if-eqz v3, :cond_2

    .line 225
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 230
    :cond_2
    :goto_4
    if-eqz v4, :cond_5

    .line 231
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 223
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_5
    if-eqz v3, :cond_3

    .line 225
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 230
    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    .line 231
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    .line 223
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 220
    :catch_4
    move-exception v1

    move-object v3, v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_3

    :cond_5
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_6
    move-object v1, v0

    move-object v3, v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)Lcom/cmcm/orion/utils/d$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cmcm/orion/picks/impl/a$a;",
            ")",
            "Lcom/cmcm/orion/utils/d$b;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/cmcm/orion/utils/d$b;

    invoke-direct {v0}, Lcom/cmcm/orion/utils/d$b;-><init>()V

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/utils/d$b;->a([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Lcom/cmcm/orion/utils/d$b;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p2}, Lcom/cmcm/orion/utils/d$b;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/utils/d$b;->a(I)V

    .line 114
    sget-object v1, Lcom/cmcm/orion/utils/d;->c:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Lcom/cmcm/orion/utils/d;->a(Ljava/util/concurrent/Executor;Lcom/cmcm/orion/utils/d$b;)Z

    move-result v1

    .line 116
    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Lcom/cmcm/orion/utils/d$b;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p0    # Lcom/cmcm/orion/utils/d$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 699
    new-instance v1, Ljava/net/URL;

    invoke-static {p0}, Lcom/cmcm/orion/utils/d$b;->b(Lcom/cmcm/orion/utils/d$b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move v0, v2

    .line 702
    :goto_0
    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    if-gt v0, v5, :cond_3

    invoke-static {p0}, Lcom/cmcm/orion/utils/d$b;->e(Lcom/cmcm/orion/utils/d$b;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 703
    const-string v0, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PROTOCOL_ERROR_TAG:url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cmcm/orion/utils/d$b;->b(Lcom/cmcm/orion/utils/d$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1734
    :cond_0
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1738
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1740
    invoke-virtual {p0}, Lcom/cmcm/orion/utils/d$b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1741
    invoke-virtual {p0}, Lcom/cmcm/orion/utils/d$b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1742
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1743
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1746
    const-string v1, "https"

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 1747
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Lcom/cmcm/orion/utils/d$b;->a()I

    move-result v5

    invoke-static {v5}, Lcom/cmcm/orion/utils/d$a;->a(I)Lcom/cmcm/orion/utils/d$a;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1750
    :cond_1
    invoke-static {v0, p0}, Lcom/cmcm/orion/utils/d;->a(Ljava/net/HttpURLConnection;Lcom/cmcm/orion/utils/d$b;)V

    .line 709
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 710
    const/16 v5, 0x12d

    if-eq v1, v5, :cond_2

    const/16 v5, 0x12e

    if-ne v1, v5, :cond_4

    .line 712
    :cond_2
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 713
    invoke-static {p0, v5}, Lcom/cmcm/orion/utils/d$b;->a(Lcom/cmcm/orion/utils/d$b;Ljava/lang/String;)Ljava/lang/String;

    .line 714
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 716
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move v0, v3

    .line 718
    goto/16 :goto_0

    .line 723
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "REDIRECT_ERROR_TAG:max count = 10"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_4
    return-object v0
.end method

.method private static b(Ljava/net/HttpURLConnection;Lcom/cmcm/orion/utils/d$b;)V
    .locals 3
    .param p1    # Lcom/cmcm/orion/utils/d$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p1}, Lcom/cmcm/orion/utils/d$b;->b()[B

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    .line 691
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 692
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 693
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 694
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 696
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 244
    invoke-static {p0, v1}, Lcom/cmcm/orion/utils/d;->a(Ljava/lang/String;Landroid/util/TypedValue;)[B

    move-result-object v2

    .line 245
    if-eqz v2, :cond_0

    .line 247
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 614
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 616
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 617
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 618
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 619
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    aget-object v0, v3, v1

    .line 626
    :goto_1
    return-object v0

    .line 616
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_1
    const-string v0, "UTF-8"

    goto :goto_1
.end method
