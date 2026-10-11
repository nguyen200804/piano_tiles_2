.class public Lcom/cmplay/tile2/ui/ReportService;
.super Landroid/app/Service;
.source "ReportService.java"


# static fields
.field private static final a:J

.field private static b:J


# instance fields
.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 114
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x6

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cmplay/tile2/ui/ReportService;->a:J

    .line 116
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/cmplay/tile2/ui/ReportService;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ReportService;->e:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/cmplay/tile2/ui/ReportService$1;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/ReportService$1;-><init>(Lcom/cmplay/tile2/ui/ReportService;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ReportService;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 559
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    const-string v1, "command_start_report"

    const-string v2, "command_remove_pending_cloud_cfg_update_task"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 562
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/cmplay/tile2/ui/ReportService$3;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/ReportService$3;-><init>(Lcom/cmplay/tile2/ui/ReportService;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ReportService;->c:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ReportService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/tile2/ui/ReportService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lcom/cmplay/tile2/ui/ReportService$4;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/ReportService$4;-><init>(Lcom/cmplay/tile2/ui/ReportService;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ReportService;->d:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ReportService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/tile2/ui/ReportService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 372
    :try_start_0
    invoke-static {}, Lcom/cmplay/util/c/b;->a()Lcom/cmplay/util/c/b;

    move-result-object v0

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/cmplay/util/c/b;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/cmplay/tile2/ui/ReportService;->a:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmplay/util/c/b;->a(J)V

    .line 377
    new-instance v0, Lcom/cmplay/util/c/c;

    invoke-direct {v0}, Lcom/cmplay/util/c/c;-><init>()V

    .line 379
    invoke-static {p0}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v1

    int-to-byte v1, v1

    .line 380
    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/c;->a(B)Lcom/cmplay/util/c/c;

    .line 382
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ReportService;->h()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/c;->b(B)Lcom/cmplay/util/c/c;

    .line 384
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ReportService;->g()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/c;->b(Ljava/lang/String;)Lcom/cmplay/util/c/c;

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 388
    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/c;->a(I)Lcom/cmplay/util/c/c;

    .line 390
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ReportService;->f()Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/c;->a(Ljava/lang/String;)Lcom/cmplay/util/c/c;

    .line 393
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getInstallTime()I

    move-result v1

    .line 394
    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/c;->b(I)Lcom/cmplay/util/c/c;

    .line 396
    const/4 v1, 0x0

    .line 397
    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/c;->c(B)Lcom/cmplay/util/c/c;

    .line 399
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ReportService;->e()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/c;->c(Ljava/lang/String;)Lcom/cmplay/util/c/c;

    .line 402
    const/4 v1, 0x0

    .line 403
    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/c;->a(S)Lcom/cmplay/util/c/c;

    .line 411
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmplay/i/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/c;->d(Ljava/lang/String;)Lcom/cmplay/util/c/c;

    .line 413
    invoke-virtual {v0}, Lcom/cmplay/util/c/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {v0}, Lcom/cmplay/util/c/c;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/cmplay/util/NativeUtil;->reportData(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 416
    const-string v2, "ReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KinfocTest doReport tableName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/util/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " data:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    const-string v1, "ReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doReport exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 10

    .prologue
    .line 423
    const-string v0, "/proc/meminfo"

    .line 424
    const-string v1, ""

    .line 426
    const-wide/16 v4, 0x0

    .line 428
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-direct {v3, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 431
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 432
    :try_start_2
    const-string v0, "\\s+"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 433
    array-length v6, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v1, v0

    .line 434
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x400

    mul-long/2addr v0, v4

    .line 439
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 447
    :goto_1
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ReportService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 439
    :catchall_0
    move-exception v0

    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 441
    :catch_0
    move-exception v0

    move-object v2, v0

    move-wide v0, v4

    .line 442
    :goto_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 443
    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 444
    :goto_5
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 443
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_5

    .line 441
    :catch_3
    move-exception v2

    goto :goto_4

    .line 439
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 456
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 457
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    const-string v0, "key_screen_display_size"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()B
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 475
    const-string v1, "key_first_play"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 476
    if-eqz v1, :cond_1

    :goto_0
    int-to-byte v0, v0

    .line 477
    if-eqz v1, :cond_0

    .line 478
    const-string v1, "key_first_play"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 480
    :cond_0
    return v0

    .line 476
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private i()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cmplay/tile2/ui/ReportService;->b:J

    .line 494
    const-string v0, "CF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALARM_SERVICE_START_TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/cmplay/tile2/ui/ReportService;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 496
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    const-string v2, "command_start_report"

    const-string v3, "start_report"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3e9

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 499
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 501
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 502
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 512
    :goto_0
    return-void

    .line 503
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 504
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    goto :goto_0

    .line 506
    :cond_1
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v8

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 547
    const-string v0, "last_report_cloud_config_ver_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 549
    sub-long v0, v2, v0

    sget-wide v4, Lcom/cmplay/tile2/ui/ReportService;->a:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/c/a;->a(Landroid/content/Context;)V

    .line 553
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v1, "local_version"

    const-string v4, "none"

    invoke-virtual {v0, v1, v4}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    new-instance v1, Lcom/cmplay/util/c/a/c;

    invoke-direct {v1}, Lcom/cmplay/util/c/a/c;-><init>()V

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v0}, Lcom/cmplay/util/c/a/c;->a(BLjava/lang/String;)V

    .line 555
    const-string v0, "last_report_cloud_config_ver_time"

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 526
    new-instance v0, Lcom/cmplay/tile2/ui/ReportService$5;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/ReportService$5;-><init>(Lcom/cmplay/tile2/ui/ReportService;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 143
    invoke-static {}, Lcom/cmplay/util/c/b;->a()Lcom/cmplay/util/c/b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmplay/util/c/b;->b(J)V

    .line 145
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->e()V

    .line 146
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->initByService(Landroid/content/Context;)V

    .line 147
    const-string v0, "ReportService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ReportService;->i()V

    .line 150
    const-string v0, "key_language_selected"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "key_country_selected"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ReportService;->b()V

    .line 157
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ReportService;->c()V

    .line 160
    const-string v0, "cfg"

    const-string v1, "Service process set a cloud config updating task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ReportService;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/ReportService;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    new-instance v0, Lcom/cmplay/tile2/ui/ReportService$2;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/ReportService$2;-><init>(Lcom/cmplay/tile2/ui/ReportService;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 485
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 486
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, -0x1

    .line 251
    if-eqz p1, :cond_14

    .line 252
    :try_start_0
    const-string v0, "command_start_report"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "start_report"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    const-string v0, "ReportService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 256
    const-string v2, "ReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " duration is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/cmplay/tile2/ui/ReportService;->b:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-wide v2, Lcom/cmplay/tile2/ui/ReportService;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ReportService;->d()V

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ReportService;->j()V

    .line 265
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ReportService;->a()V

    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ReportService;->i()V

    .line 349
    :cond_1
    :goto_0
    const-string v0, "command_preload_image"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    invoke-static {}, Lcom/cmplay/webview/d/c;->a()Lcom/cmplay/webview/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/webview/d/c;->b()V

    .line 353
    :cond_2
    const-string v0, "report_channel"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cmplay/i/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cmplay/i/a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    new-instance v0, Lcom/cmplay/g/f;

    invoke-direct {v0}, Lcom/cmplay/g/f;-><init>()V

    invoke-static {p0}, Lcom/cmplay/i/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/g/f;->a(Ljava/lang/String;I)V

    .line 356
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cmplay/i/a;->a(Z)V

    .line 357
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cmplay/i/a;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 272
    :cond_4
    :try_start_1
    const-string v1, "command_start_gameproblem_exit"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "command_start_gameproblem_adname"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cmplay/tile2/ui/a;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 274
    :cond_5
    :try_start_2
    const-string v1, "command_start_gameproblem_home"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 275
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "command_start_gameproblem_adname"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cmplay/tile2/ui/a;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_6
    const-string v1, "command_start_gameproblem_disproble"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 277
    const-string v0, "command_start_gameproblem_errorcode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "command_start_gameproblem_errortype"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 279
    const-string v2, "command_start_gameproblem_adtype"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    const-string v3, "command_start_gameproblem_abname"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v3, v5, :cond_1

    .line 282
    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/cmplay/g/e;->a(Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 284
    :cond_7
    const-string v1, "command_start_report_dmc_fb_info"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "gender"

    const-string v2, "gender"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v1, "age_min"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 290
    if-eq v5, v1, :cond_8

    .line 291
    const-string v2, "age_min"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_8
    const-string v1, "age_max"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 294
    if-eq v5, v1, :cond_9

    .line 295
    const-string v2, "age_max"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_9
    invoke-static {}, Lcom/cmcm/dmc/sdk/c;->a()Lcom/cmcm/dmc/sdk/c;

    move-result-object v1

    const-string v2, "user_basic_info"

    invoke-virtual {v1, v2, v0}, Lcom/cmcm/dmc/sdk/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 301
    :cond_a
    const-string v1, "command_start_set_lan"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 302
    const-string v0, "languageCode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    const-string v1, "countryCode"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v2, "key_language_selected"

    invoke-static {v2, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "key_country_selected"

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :cond_b
    const-string v1, "command_start_show_get_week_race_diamond"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 310
    const-string v0, "key_week_race_id_just_end"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Lcom/cmplay/util/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    invoke-static {v0}, Lcom/cmplay/notification/c;->a(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    const/16 v1, 0x25d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->b(IIII)V

    goto/16 :goto_0

    .line 320
    :cond_c
    const-string v1, "command_schedule_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "command_schedule_all_notifications"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "command_show_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "command_clear_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 324
    :cond_d
    invoke-static {}, Lcom/cmplay/notification/b;->a()Lcom/cmplay/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/notification/b;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 325
    :cond_e
    const-string v1, "command_notify_leveing_data_changed"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 326
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onLevelingDataChanged()V

    goto/16 :goto_0

    .line 327
    :cond_f
    const-string v1, "command_game_exit_popup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 328
    const-string v0, "game_exit_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_exit_songs_num"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "game_exit_playedsongs_text"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :cond_10
    const-string v1, "command_notify_cd_fragment_data_changed"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 334
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onCdFragmentDataChanged()V

    goto/16 :goto_0

    .line 335
    :cond_11
    const-string v1, "command_remove_pending_cloud_cfg_update_task"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 336
    const-string v0, "cfg"

    const-string v1, "remove pending cloud cfg update task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ReportService;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/ReportService;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 338
    :cond_12
    const-string v1, "command_notify_public"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 339
    const-string v0, "ymym"

    const-string v1, "ymym  resetPublicData 11111"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->resetPublicData()V

    .line 341
    const-string v0, "ymym"

    const-string v1, "ymym  resetPublicData 222222"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    :cond_13
    const-string v1, "command_notify_cloud_data_changed"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onCloudDataChanged()V

    goto/16 :goto_0

    .line 361
    :cond_14
    const-string v0, "ReportService"

    const-string v1, "onStartCommand receive intent is null"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
