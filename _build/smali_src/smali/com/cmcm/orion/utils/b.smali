.class public final Lcom/cmcm/orion/utils/b;
.super Ljava/lang/Object;
.source "Commons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/utils/b$1;,
        Lcom/cmcm/orion/utils/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Lcom/cmcm/orion/utils/b$a;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmcm/orion/utils/b;->a:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0xa2c2a

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cmcm/orion/utils/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/utils/b;->c:Lcom/cmcm/orion/utils/b$a;

    .line 362
    const-string v0, ""

    sput-object v0, Lcom/cmcm/orion/utils/b;->f:Ljava/lang/String;

    .line 363
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmcm/orion/utils/b;->g:Ljava/lang/Object;

    return-void
.end method

.method private static a(C)I
    .locals 1

    .prologue
    .line 475
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0xf

    .line 477
    :goto_0
    return v0

    .line 476
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 477
    :cond_1
    add-int/lit8 v0, p0, -0x30

    and-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    .line 367
    sget-object v1, Lcom/cmcm/orion/utils/b;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    sget-object v1, Lcom/cmcm/orion/utils/b;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    sget-object v2, Lcom/cmcm/orion/utils/b;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    sput-object v0, Lcom/cmcm/orion/utils/b;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    :cond_1
    sget-object v0, Lcom/cmcm/orion/utils/b;->f:Ljava/lang/String;

    return-object v0

    .line 381
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/cmcm/orion/utils/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {p0}, Lcom/cmcm/orion/utils/b;->i(Landroid/content/Context;)V

    .line 308
    :cond_0
    sget-object v0, Lcom/cmcm/orion/utils/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    invoke-static {p0}, Lcom/cmcm/orion/utils/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 394
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 483
    :cond_0
    const/4 v0, 0x0

    .line 493
    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    .line 485
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 486
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 487
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 489
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 3

    .prologue
    .line 244
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    if-eqz p2, :cond_0

    const-string v0, "refferrer="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&referrer=utm_source%3Dcheetah_ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 248
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    invoke-static {p1, v0}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 251
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 96
    .line 98
    :try_start_0
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 99
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    :cond_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 103
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    sget-object v2, Lcom/cmcm/orion/utils/b;->a:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :try_start_1
    sget-object v0, Lcom/cmcm/orion/utils/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v0, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1123
    sget-object v3, Lcom/cmcm/orion/utils/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    invoke-static {p0}, Lcom/cmcm/orion/utils/b;->g(Landroid/content/Context;)V

    .line 1126
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;->a(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 117
    :goto_0
    return v0

    .line 1126
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 115
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move v0, v1

    .line 116
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 76
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 91
    :goto_0
    return v0

    .line 79
    :cond_1
    invoke-static {}, Lcom/cmcm/orion/utils/internal/c;->a()Lcom/cmcm/orion/utils/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/orion/utils/internal/c;->b()Ljava/util/List;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 81
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x1

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 267
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1255
    const/4 v0, 0x0

    .line 1257
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1261
    :goto_0
    if-eqz v0, :cond_0

    .line 1262
    invoke-static {p0, v0}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 273
    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 270
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    invoke-static {p0, v0}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    const-string v1, "https://play.google.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://play.google.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "market:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 606
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 610
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 611
    const-string v2, "st"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    const-string v3, "et"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "before:st:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";et:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v3, "localtime"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 615
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_2

    const-string v1, "20"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    .line 628
    :goto_1
    if-eqz v1, :cond_3

    .line 629
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v8

    .line 630
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v8

    .line 638
    :goto_2
    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 641
    const/4 v1, 0x2

    if-ne v1, v7, :cond_5

    .line 643
    :goto_3
    new-instance v1, Lcom/cmcm/orion/utils/internal/e;

    invoke-direct/range {v1 .. v6}, Lcom/cmcm/orion/utils/internal/e;-><init>(JJZ)V

    .line 644
    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lcom/cmcm/orion/utils/internal/e;->b()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v6

    .line 625
    goto :goto_1

    .line 632
    :cond_3
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xe

    if-ne v1, v3, :cond_4

    const-string v1, "yyyyMMddHHmmss"

    :goto_4
    invoke-direct {v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 636
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_2

    .line 632
    :cond_4
    const-string v1, "yyyyMMddHHmm"

    goto :goto_4

    :cond_5
    move v6, v0

    .line 641
    goto :goto_3

    .line 644
    :cond_6
    invoke-virtual {v1}, Lcom/cmcm/orion/utils/internal/e;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 647
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static a([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->h(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    .line 441
    const-string v1, "DES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 442
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 443
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 444
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/cmcm/orion/utils/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {p0}, Lcom/cmcm/orion/utils/b;->i(Landroid/content/Context;)V

    .line 315
    :cond_0
    sget-object v0, Lcom/cmcm/orion/utils/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/cmcm/orion/utils/b;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 198
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 200
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 203
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 204
    const-string v5, "com.android.chrome"

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 213
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 220
    :goto_1
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-static {p0, v6}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move v0, v3

    .line 229
    :goto_2
    return v0

    .line 208
    :cond_1
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1130
    iget v9, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_2

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_3

    :cond_2
    move v5, v3

    .line 208
    :goto_3
    if-eqz v5, :cond_8

    .line 209
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_4
    move-object v1, v0

    .line 211
    goto :goto_0

    :cond_3
    move v5, v4

    .line 1130
    goto :goto_3

    .line 217
    :cond_4
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 224
    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 225
    invoke-static {p0, v6}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move v0, v3

    .line 226
    goto :goto_2

    :cond_6
    move v0, v4

    .line 229
    goto :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_4
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    move v1, v0

    .line 466
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 467
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 468
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 469
    invoke-static {v4}, Lcom/cmcm/orion/utils/b;->a(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Lcom/cmcm/orion/utils/b;->a(C)I

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_0
    return-object v2
.end method

.method public static b([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->h(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    .line 449
    const-string v1, "DES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 450
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 451
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 452
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    invoke-static {p0}, Lcom/cmcm/orion/utils/b;->j(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 497
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 500
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 507
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 511
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    invoke-static {p0}, Lcom/cmcm/orion/utils/b;->j(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 428
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 429
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 430
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 524
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v0

    .line 528
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 529
    const-string v2, "st"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 530
    const-string v3, "et"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic f(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/cmcm/orion/utils/b;->h(Landroid/content/Context;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 600
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 401
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 402
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static declared-synchronized g(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 161
    const-class v1, Lcom/cmcm/orion/utils/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmcm/orion/utils/b;->c:Lcom/cmcm/orion/utils/b$a;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/cmcm/orion/utils/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/cmcm/orion/utils/b$a;-><init>(B)V

    sput-object v0, Lcom/cmcm/orion/utils/b;->c:Lcom/cmcm/orion/utils/b$a;

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    sget-object v2, Lcom/cmcm/orion/utils/b;->c:Lcom/cmcm/orion/utils/b$a;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit v1

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static h(Ljava/lang/String;)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 456
    invoke-static {p0}, Lcom/cmcm/orion/utils/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 457
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 458
    const-string v0, "DES"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 459
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 460
    return-object v0
.end method

.method private static declared-synchronized h(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 170
    const-class v1, Lcom/cmcm/orion/utils/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmcm/orion/utils/b;->c:Lcom/cmcm/orion/utils/b$a;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/cmcm/orion/utils/b;->c:Lcom/cmcm/orion/utils/b$a;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/utils/b;->c:Lcom/cmcm/orion/utils/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit v1

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static i(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    .line 283
    if-eqz p0, :cond_1

    .line 284
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 287
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 290
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cmcm/orion/utils/b;->d:Ljava/lang/String;

    .line 292
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_1

    .line 293
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/utils/b;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/cmcm/orion/utils/b;->d:Ljava/lang/String;

    .line 298
    const-string v0, ""

    sput-object v0, Lcom/cmcm/orion/utils/b;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    if-eqz p0, :cond_2

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_0

    .line 347
    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 349
    :cond_0
    if-nez v0, :cond_1

    .line 350
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 356
    :cond_1
    :goto_0
    return-object v0

    .line 353
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method
