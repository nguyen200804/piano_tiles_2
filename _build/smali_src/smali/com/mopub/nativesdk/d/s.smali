.class public final Lcom/mopub/nativesdk/d/s;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/mopub/nativesdk/d/f;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/ExecutorService;

.field private static c:Landroid/os/Handler;

.field private static d:Landroid/os/HandlerThread;

.field private static e:Landroid/os/Handler;

.field private static f:Landroid/os/HandlerThread;

.field private static g:Landroid/os/Handler;

.field private static h:Landroid/os/HandlerThread;

.field private static i:Landroid/os/Handler;

.field private static j:Landroid/os/HandlerThread;

.field private static k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/d/s;->b:Ljava/util/concurrent/ExecutorService;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/d/s;->a:Ljava/util/HashMap;

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(ILjava/lang/Runnable;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 348
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v1, p0

    move-object v3, p1

    move-object v4, v2

    invoke-static/range {v1 .. v7}, Lcom/mopub/nativesdk/d/s;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 349
    return-void
.end method

.method public static a(ILjava/lang/Runnable;J)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 357
    const/4 v5, 0x0

    move v1, p0

    move-object v3, p1

    move-object v4, v2

    move-wide v6, p2

    invoke-static/range {v1 .. v7}, Lcom/mopub/nativesdk/d/s;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 358
    return-void
.end method

.method private static a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V
    .locals 7

    .prologue
    .line 156
    if-nez p2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    sget-object v0, Lcom/mopub/nativesdk/d/s;->c:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 161
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->f()V

    .line 165
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 196
    sget-object v4, Lcom/mopub/nativesdk/d/s;->c:Landroid/os/Handler;

    .line 200
    :goto_1
    if-eqz v4, :cond_0

    .line 204
    const/4 v3, 0x0

    .line 205
    if-nez p4, :cond_3

    .line 206
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 207
    if-nez v3, :cond_3

    .line 208
    sget-object v0, Lcom/mopub/nativesdk/d/s;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 213
    :cond_3
    new-instance v5, Lcom/mopub/nativesdk/d/g;

    invoke-direct {v5, p2, p3, p4, v3}, Lcom/mopub/nativesdk/d/g;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLandroid/os/Looper;)V

    .line 275
    new-instance v0, Lcom/mopub/nativesdk/d/v;

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativesdk/d/v;-><init>(Ljava/lang/Runnable;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 302
    invoke-virtual {v4, v0, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 304
    sget-object v1, Lcom/mopub/nativesdk/d/s;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 306
    if-nez p1, :cond_8

    .line 307
    :try_start_0
    sget-object v2, Lcom/mopub/nativesdk/d/s;->a:Ljava/util/HashMap;

    new-instance v3, Lcom/mopub/nativesdk/d/f;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mopub/nativesdk/d/f;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 167
    :pswitch_0
    sget-object v0, Lcom/mopub/nativesdk/d/s;->d:Landroid/os/HandlerThread;

    if-nez v0, :cond_4

    .line 168
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->c()V

    .line 170
    :cond_4
    sget-object v4, Lcom/mopub/nativesdk/d/s;->e:Landroid/os/Handler;

    goto :goto_1

    .line 173
    :pswitch_1
    sget-object v0, Lcom/mopub/nativesdk/d/s;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_5

    .line 174
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->d()V

    .line 176
    :cond_5
    sget-object v4, Lcom/mopub/nativesdk/d/s;->g:Landroid/os/Handler;

    goto :goto_1

    .line 179
    :pswitch_2
    sget-object v4, Lcom/mopub/nativesdk/d/s;->c:Landroid/os/Handler;

    goto :goto_1

    .line 182
    :pswitch_3
    sget-object v0, Lcom/mopub/nativesdk/d/s;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_6

    .line 183
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->e()V

    .line 186
    :cond_6
    sget-object v4, Lcom/mopub/nativesdk/d/s;->i:Landroid/os/Handler;

    goto :goto_1

    .line 189
    :pswitch_4
    sget-object v0, Lcom/mopub/nativesdk/d/s;->j:Landroid/os/HandlerThread;

    if-nez v0, :cond_7

    .line 190
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->g()V

    .line 193
    :cond_7
    sget-object v4, Lcom/mopub/nativesdk/d/s;->k:Landroid/os/Handler;

    goto :goto_1

    .line 309
    :cond_8
    :try_start_1
    sget-object v0, Lcom/mopub/nativesdk/d/s;->a:Ljava/util/HashMap;

    new-instance v2, Lcom/mopub/nativesdk/d/f;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/mopub/nativesdk/d/f;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 364
    if-nez p0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    sget-object v0, Lcom/mopub/nativesdk/d/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/d/f;

    .line 369
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/mopub/nativesdk/d/f;->d()Ljava/lang/Runnable;

    move-result-object v1

    .line 374
    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {v0}, Lcom/mopub/nativesdk/d/f;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 406
    :cond_2
    :goto_1
    :try_start_0
    sget-object v0, Lcom/mopub/nativesdk/d/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 377
    :pswitch_0
    sget-object v0, Lcom/mopub/nativesdk/d/s;->e:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 378
    sget-object v0, Lcom/mopub/nativesdk/d/s;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 382
    :pswitch_1
    sget-object v0, Lcom/mopub/nativesdk/d/s;->g:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 383
    sget-object v0, Lcom/mopub/nativesdk/d/s;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 387
    :pswitch_2
    sget-object v0, Lcom/mopub/nativesdk/d/s;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 388
    sget-object v0, Lcom/mopub/nativesdk/d/s;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 392
    :pswitch_3
    sget-object v0, Lcom/mopub/nativesdk/d/s;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 393
    sget-object v0, Lcom/mopub/nativesdk/d/s;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 397
    :pswitch_4
    sget-object v0, Lcom/mopub/nativesdk/d/s;->k:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 398
    sget-object v0, Lcom/mopub/nativesdk/d/s;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/mopub/nativesdk/d/s;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1585
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 601
    :goto_0
    if-eqz v0, :cond_1

    .line 602
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 606
    :goto_1
    return-void

    .line 1585
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 604
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/mopub/nativesdk/d/s;->a(ILjava/lang/Runnable;)V

    goto :goto_1
.end method

.method private static declared-synchronized c()V
    .locals 4

    .prologue
    .line 413
    const-class v1, Lcom/mopub/nativesdk/d/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/nativesdk/d/s;->d:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "BackgroundHandler"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 415
    sput-object v0, Lcom/mopub/nativesdk/d/s;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 416
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/mopub/nativesdk/d/s;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mopub/nativesdk/d/s;->e:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :cond_0
    monitor-exit v1

    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized d()V
    .locals 4

    .prologue
    .line 421
    const-class v1, Lcom/mopub/nativesdk/d/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/nativesdk/d/s;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "WorkHandler"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 423
    sput-object v0, Lcom/mopub/nativesdk/d/s;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 424
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/mopub/nativesdk/d/s;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mopub/nativesdk/d/s;->g:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_0
    monitor-exit v1

    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized e()V
    .locals 4

    .prologue
    .line 429
    const-class v1, Lcom/mopub/nativesdk/d/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/nativesdk/d/s;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "sNormalHandler"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 431
    sput-object v0, Lcom/mopub/nativesdk/d/s;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 432
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/mopub/nativesdk/d/s;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mopub/nativesdk/d/s;->i:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :cond_0
    monitor-exit v1

    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized f()V
    .locals 3

    .prologue
    .line 437
    const-class v1, Lcom/mopub/nativesdk/d/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/nativesdk/d/s;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mopub/nativesdk/d/s;->c:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_0
    monitor-exit v1

    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized g()V
    .locals 4

    .prologue
    .line 443
    const-class v1, Lcom/mopub/nativesdk/d/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/nativesdk/d/s;->j:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "sSharedPreferencesHandler"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 445
    sput-object v0, Lcom/mopub/nativesdk/d/s;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 446
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/mopub/nativesdk/d/s;->j:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mopub/nativesdk/d/s;->k:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :cond_0
    monitor-exit v1

    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
