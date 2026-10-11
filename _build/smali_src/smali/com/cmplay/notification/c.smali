.class public Lcom/cmplay/notification/c;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    const/16 v0, 0x1388

    sput v0, Lcom/cmplay/notification/c;->e:I

    .line 373
    sget v0, Lcom/cmplay/notification/c;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cmplay/notification/c;->e:I

    sput v0, Lcom/cmplay/notification/c;->a:I

    .line 374
    sget v0, Lcom/cmplay/notification/c;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cmplay/notification/c;->e:I

    sput v0, Lcom/cmplay/notification/c;->b:I

    .line 375
    sget v0, Lcom/cmplay/notification/c;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cmplay/notification/c;->e:I

    sput v0, Lcom/cmplay/notification/c;->c:I

    .line 376
    sget v0, Lcom/cmplay/notification/c;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cmplay/notification/c;->e:I

    sput v0, Lcom/cmplay/notification/c;->d:I

    return-void
.end method

.method private static a(II)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 417
    const/4 v0, 0x0

    .line 418
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v2, v0

    .line 482
    :goto_0
    new-instance v0, Lcom/cmplay/util/c/a/d;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/d;-><init>()V

    const/4 v1, 0x2

    int-to-byte v2, v2

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/d;->a(BBBII)V

    .line 483
    return-void

    .line 420
    :pswitch_1
    const/4 v0, 0x3

    move v2, v0

    .line 421
    goto :goto_0

    .line 423
    :pswitch_2
    const/4 v0, 0x4

    move v2, v0

    .line 424
    goto :goto_0

    .line 426
    :pswitch_3
    const/4 v0, 0x5

    move v2, v0

    .line 427
    goto :goto_0

    .line 429
    :pswitch_4
    const/4 v0, 0x6

    move v2, v0

    .line 430
    goto :goto_0

    .line 432
    :pswitch_5
    const/4 v0, 0x7

    move v2, v0

    .line 433
    goto :goto_0

    .line 435
    :pswitch_6
    const/16 v0, 0x8

    move v2, v0

    .line 436
    goto :goto_0

    .line 438
    :pswitch_7
    const/16 v0, 0x9

    move v2, v0

    .line 439
    goto :goto_0

    .line 441
    :pswitch_8
    const/16 v0, 0xa

    move v2, v0

    .line 442
    goto :goto_0

    .line 444
    :pswitch_9
    const/16 v0, 0xb

    move v2, v0

    .line 445
    goto :goto_0

    .line 447
    :pswitch_a
    const/16 v0, 0xc

    move v2, v0

    .line 448
    goto :goto_0

    .line 450
    :pswitch_b
    const/16 v0, 0x11

    move v2, v0

    .line 451
    goto :goto_0

    .line 453
    :pswitch_c
    const/16 v0, 0x13

    move v2, v0

    .line 454
    goto :goto_0

    .line 456
    :pswitch_d
    const/16 v0, 0x19

    move v2, v0

    .line 457
    goto :goto_0

    .line 459
    :pswitch_e
    const/16 v0, 0x1a

    move v2, v0

    .line 460
    goto :goto_0

    .line 462
    :pswitch_f
    const/16 v0, 0x1b

    move v2, v0

    .line 463
    goto :goto_0

    .line 465
    :pswitch_10
    const/16 v0, 0x1c

    move v2, v0

    .line 466
    goto :goto_0

    .line 468
    :pswitch_11
    const/16 v0, 0x1d

    move v2, v0

    .line 469
    goto :goto_0

    .line 471
    :pswitch_12
    const/16 v0, 0x1e

    move v2, v0

    .line 472
    goto :goto_0

    .line 474
    :pswitch_13
    const/16 v0, 0x1f

    move v2, v0

    .line 475
    goto :goto_0

    .line 477
    :pswitch_14
    const/16 v0, 0x20

    move v2, v0

    .line 478
    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method private static a(IILjava/lang/String;)V
    .locals 5

    .prologue
    .line 343
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 344
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 350
    const-string v1, "msg_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "msg_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    const-string v1, "msg_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 352
    const-string v2, "notification_message_relate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 87
    if-nez p0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {p0}, Lcom/cmplay/notification/c;->b(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "section_notification"

    invoke-virtual {v1, v2, v3}, Lcom/cmplay/cloud/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    const-string v5, ""

    .line 96
    const-string v1, "version"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "version"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    const-string v1, "version"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    :cond_2
    const-string v1, "key_notification_show_version"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    const-string v0, "Notification"

    const-string v1, "checkAndShowNotification::has showed this version"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string v1, "Notification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndShowNotification::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 105
    :cond_3
    :try_start_1
    invoke-static {v7}, Lcom/cmplay/notification/c;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    const-string v0, "Notification"

    const-string v1, "checkAndShowNotification::NOT right time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_4
    const-string v2, ""

    .line 111
    const-string v1, "notify_data"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "notify_data"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 112
    const-string v1, "notify_data"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    :cond_5
    const-string v1, "notify_action"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "notify_action"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 117
    const-string v1, "notify_action"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 120
    :goto_1
    invoke-static {v1, v2}, Lcom/cmplay/notification/c;->a(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 121
    const-string v0, "Notification"

    const-string v1, "checkAndShowNotification::NOT right rank list data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    :cond_6
    invoke-static {v1, v2, v5}, Lcom/cmplay/notification/c;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 126
    const-string v0, "Notification"

    const-string v1, "checkAndShowNotification::NO relate message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    :cond_7
    const-string v3, ""

    .line 131
    const-string v4, "title"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "title"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 132
    const-string v3, "title"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    :cond_8
    const-string v4, ""

    .line 136
    const-string v8, "des"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "des"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 137
    const-string v4, "des"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    :cond_9
    const-string v8, "unsupport_new_player"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "unsupport_new_player"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 141
    const-string v8, "unsupport_new_player"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v0, :cond_c

    :goto_2
    move v6, v0

    .line 144
    :cond_a
    if-eqz v6, :cond_b

    .line 145
    invoke-static {}, Lcom/cmplay/util/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :cond_b
    const-string v0, "notify_icon_url"

    const-string v6, ""

    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 157
    const-string v0, "Notification"

    const-string v6, "checkAndShowNotification::showNotification"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/cmplay/notification/c;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_c
    move v0, v6

    .line 141
    goto :goto_2

    .line 160
    :cond_d
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    new-instance v6, Lcom/cmplay/notification/c$1;

    move-object v8, p0

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/cmplay/notification/c$1;-><init>(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/cmplay/tile2/GameApp;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_e
    move v1, v6

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 486
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 487
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 488
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 379
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    if-eqz p1, :cond_0

    .line 381
    const-string v0, "notify_action"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    const-string v0, "notify_data"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    :cond_1
    const-string v0, "notification"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    const-string v2, "notification_version"

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const/high16 v0, 0x10000000

    invoke-static {p0, v3, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 392
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p3, ""

    :cond_2
    invoke-virtual {v1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p4, ""

    :cond_3
    invoke-virtual {v1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f020135

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, -0xd4b29e

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 397
    if-eqz p6, :cond_4

    .line 398
    invoke-virtual {v1, p6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 400
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 401
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 402
    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 403
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 404
    sget v2, Lcom/cmplay/notification/c;->a:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 405
    const-string v1, "key_notification_show_version"

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_1
    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget v0, Lcom/cmplay/notification/c;->a:I

    invoke-static {v0, p1, p2}, Lcom/cmplay/notification/c;->a(IILjava/lang/String;)V

    .line 407
    const/4 v0, 0x0

    .line 409
    :try_start_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 411
    :goto_2
    invoke-static {p0}, Lcom/cmplay/notification/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 412
    invoke-static {p1, v0}, Lcom/cmplay/notification/c;->a(II)V

    .line 414
    :cond_5
    return-void

    :cond_6
    move-object v0, p5

    .line 389
    goto :goto_0

    :cond_7
    move-object v0, p5

    .line 405
    goto :goto_1

    .line 410
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 494
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 495
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "week_race"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 499
    const v2, 0x7f05002d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 500
    const v3, 0x7f05002c

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 502
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 503
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f020135

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, -0xd4b29e

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v8, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 518
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 519
    sget v2, Lcom/cmplay/notification/c;->d:I

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 540
    return-void
.end method

.method private static a(ILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 193
    const-string v1, "notifyranklist--check-"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    const-string v2, "music_mid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    const-string v2, "music_mid"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 203
    if-eqz v1, :cond_0

    .line 207
    if-lez v1, :cond_2

    .line 208
    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->isUnlockMusicByMid(I)Z

    move-result v2

    .line 209
    const-string v3, "notifyranklist---"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    if-nez v2, :cond_0

    .line 221
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 231
    if-ne p0, v1, :cond_1

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    const-string v3, "msg_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "msg_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    const-string v3, "msg_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 237
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmplay/util/NativeUtil;->canShowMsgById(Ljava/lang/String;)Z

    move-result v4

    .line 238
    const-string v5, "notifymsg---"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    if-nez v4, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 255
    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 264
    .line 265
    const-string v0, "utc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "utc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    :try_start_0
    const-string v0, "utc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 272
    :goto_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd/HH:mm:ss"

    invoke-direct {v6, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 273
    if-eqz v0, :cond_0

    .line 274
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 278
    :cond_0
    const-string v2, "starttime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "starttime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 280
    :try_start_1
    const-string v2, "starttime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 288
    :goto_1
    const-string v7, "endtime"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "endtime"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 290
    :try_start_2
    const-string v7, "endtime"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v6

    move-wide v8, v6

    .line 298
    :goto_2
    if-eqz v0, :cond_5

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 308
    :goto_3
    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    cmp-long v0, v6, v2

    if-gez v0, :cond_6

    .line 318
    :cond_1
    :goto_4
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_0

    .line 282
    :catch_1
    move-exception v2

    .line 283
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-wide v2, v4

    goto :goto_1

    .line 292
    :catch_2
    move-exception v6

    .line 293
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    move-wide v8, v4

    goto :goto_2

    .line 301
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 303
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    goto :goto_3

    .line 313
    :cond_6
    cmp-long v0, v8, v4

    if-lez v0, :cond_7

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1

    .line 318
    :cond_7
    const/4 v1, 0x1

    goto :goto_4
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 322
    const-string v0, "notification_message_relate"

    invoke-static {v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    :try_start_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 329
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 330
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->canShowMsgById(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-static {p0, v1}, Lcom/cmplay/notification/c;->a(Landroid/content/Context;I)V

    .line 334
    const-string v0, "notification_message_relate"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
