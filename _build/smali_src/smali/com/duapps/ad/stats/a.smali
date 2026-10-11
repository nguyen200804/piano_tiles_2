.class public final Lcom/duapps/ad/stats/a;
.super Ljava/lang/Object;
.source "ToolStatsCore.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static b:Lcom/duapps/ad/stats/a;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field a:I

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const-string v0, "http://api.mobula.sdk.duapps.col/adunion/slot/getSrcPrio?"

    sput-object v0, Lcom/duapps/ad/stats/a;->c:Ljava/lang/String;

    .line 114
    const-string v0, "http://rts.mobula.sdk.duapps.col/orts/rp?"

    sput-object v0, Lcom/duapps/ad/stats/a;->d:Ljava/lang/String;

    .line 115
    const-string v0, "http://rts.mobula.sdk.duapps.col/orts/rpb?"

    sput-object v0, Lcom/duapps/ad/stats/a;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/duapps/ad/stats/a;->a:I

    .line 168
    iput-object p1, p0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    .line 170
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "stts"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 172
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/duapps/ad/stats/a;->g:Landroid/os/Handler;

    .line 175
    iget-object v0, p0, Lcom/duapps/ad/stats/a;->g:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 152
    const-class v1, Lcom/duapps/ad/stats/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duapps/ad/stats/a;->b:Lcom/duapps/ad/stats/a;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/duapps/ad/stats/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/stats/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/stats/a;->b:Lcom/duapps/ad/stats/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit v1

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 18

    .prologue
    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 246
    const/4 v12, 0x0

    .line 247
    const/4 v11, 0x0

    .line 248
    const/4 v10, 0x0

    .line 249
    const/4 v9, 0x0

    .line 250
    new-instance v13, Lorg/json/JSONStringer;

    invoke-direct {v13}, Lorg/json/JSONStringer;-><init>()V

    .line 251
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    const-wide/32 v4, 0x240c8400

    sub-long v16, v2, v4

    .line 254
    const-string v5, "ts > ?"

    .line 255
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 256
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 258
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ts"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "content"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "ls"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "stype"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 265
    const-string v2, "ts DESC"

    .line 266
    const-string v2, " LIMIT 100 OFFSET 0"

    .line 268
    const/4 v8, 0x0

    .line 270
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-static {v3, v7}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "ts DESC LIMIT 100 OFFSET 0"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 275
    if-nez v3, :cond_1

    .line 318
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 279
    const/4 v4, 0x1

    if-ge v2, v4, :cond_2

    .line 281
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 318
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 287
    :cond_2
    :try_start_2
    invoke-virtual {v13}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    .line 289
    :cond_3
    :goto_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 290
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 291
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 292
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    const/4 v7, 0x3

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 295
    if-nez v5, :cond_4

    move-object v5, v2

    .line 299
    :cond_4
    if-nez v4, :cond_5

    move-object v4, v7

    .line 303
    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 307
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v10, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    .line 309
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 310
    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const/4 v6, 0x1

    .line 312
    goto :goto_1

    .line 313
    :cond_6
    invoke-virtual {v13}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 319
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v3, v5

    move v2, v12

    .line 323
    :goto_2
    if-eqz v6, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 325
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v13}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    const-string v6, "seq"

    invoke-static {v2, v6}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v2, p0

    .line 329
    invoke-direct/range {v2 .. v7}, Lcom/duapps/ad/stats/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    .line 330
    if-eqz v2, :cond_0

    .line 332
    const-string v2, "ts <= ? "

    .line 333
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 334
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 338
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    const/4 v8, 0x4

    .line 339
    invoke-static {v5, v8}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 338
    invoke-virtual {v4, v5, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ts IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    const/4 v5, 0x4

    .line 348
    invoke-static {v4, v5}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    .line 347
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 350
    const-string v3, "ToolStatsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "del srecord success :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    const-string v3, "seq"

    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 360
    :catch_0
    move-exception v2

    .line 361
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    const-string v3, "ToolStatsCore"

    const-string v4, "mDatabase reportEvent() del exception: "

    invoke-static {v3, v4, v2}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 314
    :catch_1
    move-exception v2

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    .line 315
    :goto_3
    const/4 v7, 0x1

    .line 316
    :try_start_5
    const-string v8, "ToolStatsCore"

    const-string v9, "mDatabase reportEvent() exception: "

    invoke-static {v8, v9, v2}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 318
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 319
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v3, v5

    move v2, v7

    goto/16 :goto_2

    .line 318
    :catchall_0
    move-exception v2

    move-object v3, v8

    :goto_4
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 319
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 318
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 314
    :catch_2
    move-exception v2

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_3

    :cond_8
    move-object v3, v5

    move v2, v7

    goto/16 :goto_2

    :cond_9
    move-object v3, v5

    move v2, v12

    goto/16 :goto_2
.end method

.method private static a(Lorg/apache/http/HttpResponse;)V
    .locals 7

    .prologue
    const/16 v3, 0x400

    const/4 v6, -0x1

    .line 421
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 423
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_2

    .line 425
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 427
    :goto_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 428
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 429
    new-array v3, v3, [C

    .line 431
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 432
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_1

    .line 435
    :cond_0
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Ljava/io/Closeable;)V

    .line 437
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    const-string v1, "ToolStatsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 441
    const-string v0, "responseHeader"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 442
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 443
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 444
    new-instance v1, Ljava/io/IOException;

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :catch_0
    move-exception v0

    .line 448
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/duapps/ad/base/g;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 373
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mdu"

    const-string v6, "adsdk"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "rv"

    const-string v6, "1.0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ts"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "seq"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "stype"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 381
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 382
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 384
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/duapps/ad/c/b/c;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 385
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "s"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    const-string v3, "UTF-8"

    .line 391
    invoke-static {v1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    :try_start_1
    const-string v1, "behavior"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    new-instance v1, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/duapps/ad/stats/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 400
    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, p3, v3}, Lcom/duapps/ad/base/r;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 402
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 403
    const-string v3, "ToolStatsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    .line 405
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-static {v2}, Lcom/duapps/ad/stats/a;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :cond_0
    const/4 v0, 0x1

    .line 416
    invoke-static {v2}, Lcom/duapps/ad/base/r;->a(Lorg/apache/http/HttpResponse;)V

    :goto_1
    return v0

    .line 398
    :cond_1
    :try_start_2
    new-instance v1, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/duapps/ad/stats/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    .line 413
    :try_start_3
    const-string v3, "ToolStatsCore"

    const-string v4, "post failed."

    invoke-static {v3, v4, v1}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    invoke-static {v2}, Lcom/duapps/ad/base/r;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/duapps/ad/base/r;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/duapps/ad/base/r;->a(Lorg/apache/http/HttpResponse;)V

    throw v0

    .line 386
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Lcom/duapps/ad/stats/a;
    .locals 1

    .prologue
    .line 158
    invoke-static {p0}, Lcom/duapps/ad/stats/a;->a(Landroid/content/Context;)V

    .line 160
    sget-object v0, Lcom/duapps/ad/stats/a;->b:Lcom/duapps/ad/stats/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 181
    iget-object v0, p0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    :cond_0
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const-string v1, "ToolStatsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discard ls="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";rp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    const-string v1, "ToolStatsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rept = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 194
    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v2, "content"

    .line 196
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    .line 195
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 197
    const-string v2, "ls"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "stype"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/stats/a;->f:Landroid/content/Context;

    const/4 v3, 0x4

    .line 202
    invoke-static {v2, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    if-nez p3, :cond_1

    .line 211
    iget-object v0, p0, Lcom/duapps/ad/stats/a;->g:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v1, "ToolStatsCore"

    const-string v2, "mDatabase reportEvent() exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 217
    iget v2, p1, Landroid/os/Message;->what:I

    .line 218
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 240
    :goto_0
    return v0

    .line 221
    :pswitch_0
    iget-object v2, p0, Lcom/duapps/ad/stats/a;->g:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    invoke-direct {p0, p1}, Lcom/duapps/ad/stats/a;->a(Landroid/os/Message;)V

    .line 223
    iget v2, p0, Lcom/duapps/ad/stats/a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/duapps/ad/stats/a;->a:I

    .line 224
    iget v2, p0, Lcom/duapps/ad/stats/a;->a:I

    if-le v3, v2, :cond_0

    .line 225
    iget-object v1, p0, Lcom/duapps/ad/stats/a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 227
    :cond_0
    iput v1, p0, Lcom/duapps/ad/stats/a;->a:I

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v1, p0, Lcom/duapps/ad/stats/a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    iget-object v1, p0, Lcom/duapps/ad/stats/a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    iget-object v1, p0, Lcom/duapps/ad/stats/a;->g:Landroid/os/Handler;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
