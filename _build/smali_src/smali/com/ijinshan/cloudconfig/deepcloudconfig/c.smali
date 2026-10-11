.class public Lcom/ijinshan/cloudconfig/deepcloudconfig/c;
.super Ljava/lang/Object;
.source "PullCloudConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field private static e:Lcom/ijinshan/cloudconfig/deepcloudconfig/c;


# instance fields
.field private final d:Ljava/lang/String;

.field private volatile f:Z

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/StringBuffer;

.field private volatile l:Ljava/lang/String;

.field private m:Z

.field private n:J

.field private o:J

.field private p:Ljava/text/SimpleDateFormat;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a:Z

    .line 47
    sput-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b:Z

    .line 48
    sput-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "local_version"

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->d:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->f:Z

    .line 53
    iput-boolean v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g:Z

    .line 71
    const-string v0, "http://magic.cmcm.com/api/"

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->q:Ljava/lang/String;

    .line 72
    const-string v0, "http://magic.cmcm.com/api/magic/notify"

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->r:Ljava/lang/String;

    .line 73
    const-string v0, "/getversions"

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->s:Ljava/lang/String;

    .line 74
    const-string v0, "/getversions"

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->t:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->p:Ljava/text/SimpleDateFormat;

    .line 95
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 579
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v0

    .line 583
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 585
    goto :goto_0

    .line 587
    :cond_2
    if-nez p2, :cond_3

    move v0, v2

    .line 589
    goto :goto_0

    .line 593
    :cond_3
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 594
    const-string v4, "\\."

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 595
    if-nez v3, :cond_4

    if-eqz v4, :cond_0

    .line 599
    :cond_4
    if-nez v3, :cond_5

    move v0, v1

    .line 601
    goto :goto_0

    .line 603
    :cond_5
    if-nez v4, :cond_7

    move v0, v2

    .line 605
    goto :goto_0

    .line 610
    :cond_6
    add-int/lit8 v0, v0, 0x1

    :cond_7
    array-length v5, v3

    if-ge v0, v5, :cond_9

    array-length v5, v4

    if-ge v0, v5, :cond_9

    .line 616
    :try_start_0
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 622
    :try_start_1
    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .line 627
    cmp-long v5, v6, v8

    if-lez v5, :cond_8

    move v0, v2

    .line 629
    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    move v0, v1

    .line 618
    goto :goto_0

    .line 623
    :catch_1
    move-exception v0

    move v0, v2

    .line 624
    goto :goto_0

    .line 631
    :cond_8
    cmp-long v5, v6, v8

    if-gez v5, :cond_6

    move v0, v1

    .line 633
    goto :goto_0

    .line 637
    :cond_9
    array-length v0, v3

    array-length v1, v4

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->e:Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    if-nez v0, :cond_1

    .line 84
    const-class v1, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->e:Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    invoke-direct {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;-><init>()V

    sput-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->e:Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    .line 88
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->e:Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x2

    const/4 v9, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->c(Ljava/lang/String;)Z

    move-result v4

    .line 146
    if-nez v4, :cond_2

    .line 147
    sget-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b:Z

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    const-string v6, ""

    invoke-static {v0, v7, v5, v6}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    sget-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a:Z

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    const-string v6, ""

    invoke-static {v0, v9, v5, v6}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    sput-boolean v2, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a:Z

    .line 158
    :cond_1
    sget-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b:Z

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, "2"

    const-string v6, ""

    invoke-static {v0, v9, v5, v6}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    sput-boolean v2, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b:Z

    .line 166
    :cond_2
    if-eqz v4, :cond_b

    .line 167
    sput-boolean v1, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->c:Z

    .line 169
    sput-boolean v2, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a:Z

    .line 170
    const-string v0, "zzb_cloud"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bf7\u6c42\u6570\u636e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x7d0

    invoke-static {v0, v5, v7, v3}, Lcom/ijinshan/cloudconfig/d/c;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-boolean v5, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->m:Z

    if-nez v5, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    const-string v7, "2"

    const-string v8, ""

    invoke-static {v5, v6, v7, v8}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 189
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    const-string v0, "error"

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    .line 191
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ijinshan/cloudconfig/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a(Lorg/json/JSONObject;)V

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    const-string v6, ""

    const-string v7, ""

    invoke-static {v0, v5, v6, v7}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->e()V

    .line 202
    :cond_5
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->d()V

    .line 205
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 206
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->e(Ljava/lang/String;)V

    .line 209
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->n:J

    .line 210
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v5, "last_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/ijinshan/cloudconfig/b/a;->a(Ljava/lang/String;Ljava/lang/Long;)V

    move v0, v2

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    const-string v7, ""

    const-string v8, ""

    invoke-static {v5, v6, v7, v8}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_1
    if-eqz v4, :cond_7

    .line 243
    sget-boolean v4, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a:Z

    if-eqz v4, :cond_c

    .line 245
    invoke-virtual {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    const-string v3, ""

    invoke-static {v0, v9, v1, v3}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    sput-boolean v2, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a:Z

    .line 255
    :cond_7
    :goto_2
    return-void

    :cond_8
    move v0, v3

    .line 212
    goto :goto_0

    :cond_9
    move v0, v1

    .line 215
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 222
    invoke-virtual {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x6

    const-string v6, ""

    iget-object v7, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 223
    goto :goto_1

    .line 225
    :cond_a
    const-string v0, "zzb_cloud"

    const-string v5, "updateConfig  \u8bf7\u6c42\u9b54\u65b9\u6570\u636e\u4e3a\u7a7a\uff0c\u4ece\u672c\u5730\u52a0\u8f7d\u6570\u636e\tFileUtil.loadJsonFromFile"

    invoke-static {v0, v5}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/d/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a(Lorg/json/JSONObject;)V

    .line 228
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->e()V

    .line 229
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->d()V

    move v0, v1

    .line 230
    goto :goto_1

    .line 233
    :cond_b
    const-string v0, "zzb_cloud"

    const-string v5, "updateConfig  \u4e0d\u9700\u8981\u4ece\u670d\u52a1\u5668\u8bf7\u6c42\u66f4\u65b0\u6570\u636e\uff0c\u4ece\u672c\u5730\u52a0\u8f7d\u6570\u636e\tFileUtil.loadJsonFromFile"

    invoke-static {v0, v5}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/d/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 235
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a(Lorg/json/JSONObject;)V

    .line 236
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->e()V

    .line 237
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->d()V

    move v0, v2

    goto :goto_1

    .line 247
    :cond_c
    if-ne v0, v1, :cond_d

    .line 249
    invoke-virtual {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v9, v1, v2}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 250
    :cond_d
    if-ne v0, v3, :cond_7

    .line 252
    invoke-virtual {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, ""

    invoke-static {v0, v9, v1, v2}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private b(ZZ)V
    .locals 3

    .prologue
    .line 358
    if-eqz p2, :cond_0

    .line 359
    new-instance v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/EnvChangeReceiver;

    invoke-direct {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/EnvChangeReceiver;-><init>()V

    .line 360
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    :try_start_0
    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    new-instance v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/CloudDataChangeReceiver;

    invoke-direct {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/CloudDataChangeReceiver;-><init>()V

    .line 370
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 371
    const-string v2, "com.ijinshan.krcmd.deepcloudconfig.CloudDataChangeReceiver.datachange"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    :try_start_1
    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 379
    :cond_1
    :goto_1
    return-void

    .line 364
    :catch_0
    move-exception v2

    .line 365
    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 374
    :catch_1
    move-exception v2

    .line 376
    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 288
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->i:Ljava/lang/String;

    .line 289
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->k:Ljava/lang/StringBuffer;

    .line 290
    iget-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->k:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    iget-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/cloudconfig/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v2

    const-string v3, "local_params"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    :cond_0
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v2

    const-string v3, "local_params"

    invoke-virtual {v2, v3, v1}, Lcom/ijinshan/cloudconfig/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    return v0

    .line 301
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v2

    const-string v3, "local_params"

    invoke-virtual {v2, v3, v1}, Lcom/ijinshan/cloudconfig/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 261
    const-string v0, "zzb_cloud"

    const-string v1, "notifiUpdataOver"

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/d/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 264
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v0, "com.cmplay.activesdk.cloud_cfg.update"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v1

    const-string v2, "local_version"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    iput-object p1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->j:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 321
    if-lez v1, :cond_3

    .line 322
    iput-object p1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->j:Ljava/lang/String;

    .line 324
    :cond_3
    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "zzb_cloud"

    const-string v1, "notifiUIProcessUpdataData"

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    iget-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/cloudconfig/d/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "com.ijinshan.krcmd.deepcloudconfig.CloudDataChangeReceiver.datachange"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v1, "local_version"

    invoke-virtual {v0, v1, p1}, Lcom/ijinshan/cloudconfig/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 6

    .prologue
    .line 486
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 507
    invoke-static {}, Lcom/ijinshan/cloudconfig/a/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/cloudconfig/d/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/cloudconfig/d/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    :cond_0
    invoke-direct {p0, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    const-string v3, "zzb_cloud"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e91\u8bed\u8a00\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?lan="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&apkversion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/cloudconfig/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    invoke-static {}, Lcom/ijinshan/cloudconfig/a/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&channelid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&osversion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&mcc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/cloudconfig/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 532
    const-string v2, "&device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&resolution="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/cloudconfig/d/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&mem_size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/cloudconfig/d/d;->f(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ijinshan/cloudconfig/d/d;->a(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-static {}, Lcom/ijinshan/cloudconfig/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string v2, "zzb_cloud"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PullCloudConfig  InnerCallBackHelper.getPkgName():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 545
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/d/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 546
    const-string v2, "zzb_cloud"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PullCloudConfig  UtilsHelper.getPkgName(mContext):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    const-string v0, "&version=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&aid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/cloudconfig/d/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&branch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/cloudconfig/d/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&mnc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/cloudconfig/d/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&gaid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/cloudconfig/a/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&net="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/c/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&dpi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/cloudconfig/d/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&hunter_v="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/cloudconfig/a/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&append="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/cloudconfig/a/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 535
    :cond_3
    const-string v0, "&device=null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 555
    :cond_4
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private f(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 414
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd.HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 416
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "deep_cloud_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cloudmsgadv.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " "

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    const-string v0, "zzb_cloud"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u62c9\u53d6version\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 387
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-boolean v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g:Z

    if-eqz v0, :cond_0

    .line 392
    iget-boolean v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->f:Z

    if-nez v0, :cond_0

    .line 395
    iput-object p1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->l:Ljava/lang/String;

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->m:Z

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->f:Z

    .line 398
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 454
    monitor-enter p0

    :try_start_0
    const-string v0, "zzb_cloud"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u62c9\u53d6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-boolean v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g:Z

    if-nez v0, :cond_0

    .line 456
    const-string v0, "zzb_cloud"

    const-string v1, "cloud\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :goto_0
    monitor-exit p0

    return-void

    .line 460
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->f:Z

    if-eqz v0, :cond_1

    .line 461
    const-string v0, "zzb_cloud"

    const-string v1, "\u6b63\u5728\u8bf7\u6c42-----"

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 465
    :cond_1
    if-nez p1, :cond_5

    .line 466
    :try_start_2
    iget-wide v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->o:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 467
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v1, "last_request_version_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ijinshan/cloudconfig/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->o:J

    .line 469
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->o:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 470
    const-string v0, "zzb_cloud"

    const-string v1, "cloud6\u5c0f\u65f6\u9650\u5236"

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_3
    iget-wide v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->n:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 474
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v1, "last_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ijinshan/cloudconfig/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->n:J

    .line 476
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->n:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 477
    const-string v0, "zzb_cloud"

    const-string v1, "cloud\u6570\u636e6\u5c0f\u65f6\u9650\u5236"

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->m:Z

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->f:Z

    .line 483
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "PullCloudConfig init error, the prodect is empty, please check..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b(ZZ)V

    .line 351
    if-eqz p2, :cond_1

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/cloudconfig/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->t:Ljava/lang/String;

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g:Z

    .line 355
    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v1, "local_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->j:Ljava/lang/String;

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->k:Ljava/lang/StringBuffer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 99
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/c/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "zzb_cloud"

    const-string v1, "\u6ca1\u6709\u7f51\u7edc \u672c\u5730\u52a0\u8f7d\u6570\u636e\tFileUtil.loadJsonFromFile"

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/d/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a(Lorg/json/JSONObject;)V

    .line 106
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->e()V

    .line 108
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->d()V

    .line 109
    iput-boolean v7, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->f:Z

    .line 137
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->m:Z

    if-eqz v0, :cond_1

    .line 114
    sput-boolean v7, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b:Z

    .line 115
    const-string v0, "zzb_cloud"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u9b54\u65b9\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->t:Ljava/lang/String;

    const/16 v1, 0x7d0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v6}, Lcom/ijinshan/cloudconfig/d/c;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->o:J

    .line 118
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v1

    const-string v2, "last_request_version_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/cloudconfig/b/a;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 121
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    const-string v1, "business_config"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->l:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b(Ljava/lang/String;)V

    .line 136
    iput-boolean v7, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->f:Z

    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    sput-boolean v6, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b:Z

    goto :goto_1

    .line 132
    :cond_3
    sput-boolean v6, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b:Z

    goto :goto_1
.end method
