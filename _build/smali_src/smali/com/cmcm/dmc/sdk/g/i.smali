.class public Lcom/cmcm/dmc/sdk/g/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/cmcm/dmc/sdk/g/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/dmc/sdk/g/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/i;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/g/i;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/g/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/i;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/g/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "oslanguage"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    const-string v2, "timezone"

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/a/q;->j(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/i;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v1, "receiverOn"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/g/i;->e:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "bootTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/dmc/sdk/g/i;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/cmcm/dmc/sdk/g/i;->c:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/g/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/dmc/sdk/g/i;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/cmcm/dmc/sdk/g/i;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Ljava/io/File;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/io/File;)Lcom/cmcm/dmc/sdk/g/j$b;

    move-result-object v3

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/k;->a()Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v2

    const-string v4, "report_sequence"

    invoke-virtual {v2, v4}, Lcom/cmcm/dmc/sdk/a/k;->b(Ljava/lang/String;)I

    move-result v2

    const-string v4, "{\"SequenceID\":\"%s\","

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/cmcm/dmc/sdk/a/f;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\"env\":\"%s\","

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/cmcm/dmc/sdk/a/f;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/cmcm/dmc/sdk/g/i;->c()V

    const-string v2, "\"header\":"

    invoke-virtual {v3, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/cmcm/dmc/sdk/g/i;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    const-string v2, ",\"extras\":"

    invoke-virtual {v3, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/cmcm/dmc/sdk/g/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    const-string v2, ",\"body\":["

    invoke-virtual {v3, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    const-string v2, "ver"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "proto"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "timestamp"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "guid"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "data"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, ","

    invoke-virtual {v3, v10}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/json/JSONStringer;

    invoke-direct {v11}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string v12, "version"

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v14, v13

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    const-string v12, "protocol"

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v14, v13

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    const-string v12, "timestamp"

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    const-string v12, "guid"

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    const-string v10, "type"

    invoke-virtual {v11, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    const-string v10, "data"

    invoke-virtual {v11, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    invoke-virtual {v11}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    invoke-virtual {v11}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cmcm/dmc/sdk/g/j$b;->a()I

    move-result v10

    move/from16 v0, p3

    if-le v10, v0, :cond_1

    :cond_3
    const-string v2, "]}"

    invoke-virtual {v3, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    return-object v9

    :catchall_0
    move-exception v2

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    throw v2
.end method

.method public a(Lcom/cmcm/dmc/sdk/g/h;Ljava/io/File;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/io/File;)Lcom/cmcm/dmc/sdk/g/j$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/k;->a()Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v2

    const-string v3, "report_sequence"

    invoke-virtual {v2, v3}, Lcom/cmcm/dmc/sdk/a/k;->b(Ljava/lang/String;)I

    move-result v2

    const-string v3, "{\"SequenceID\":\"%s\","

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/cmcm/dmc/sdk/a/f;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\"env\":\"%s\","

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/cmcm/dmc/sdk/a/f;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/i;->c()V

    const-string v2, "\"header\":"

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/cmcm/dmc/sdk/g/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    const-string v2, ",\"extras\":"

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    const-string v2, ",\"body\":["

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    const-wide/32 v4, 0x1ea618

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    const-string v3, "protocol"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    const-wide/32 v4, 0xf4240

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    const-string v3, "timestamp"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cmcm/dmc/sdk/g/h;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    const-string v3, "guid"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cmcm/dmc/sdk/g/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cmcm/dmc/sdk/g/h;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    invoke-virtual {p1}, Lcom/cmcm/dmc/sdk/g/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/g/j$b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/cmcm/dmc/sdk/g/c;->a()Lcom/cmcm/dmc/sdk/g/c$a;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cmcm/dmc/sdk/g/c$a;->b([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/io/File;Lcom/cmcm/dmc/sdk/g/j$c;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmcm/dmc/sdk/g/i$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/cmcm/dmc/sdk/g/i$1;-><init>(Lcom/cmcm/dmc/sdk/g/i;Ljava/io/File;Ljava/lang/String;Lcom/cmcm/dmc/sdk/g/j$c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/i;->e:Ljava/util/List;

    return-void
.end method
