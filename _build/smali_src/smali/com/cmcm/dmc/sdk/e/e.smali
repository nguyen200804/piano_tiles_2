.class public Lcom/cmcm/dmc/sdk/e/e;
.super Lcom/cmcm/dmc/sdk/e/b;

# interfaces
.implements Lcom/cmcm/dmc/sdk/a/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/dmc/sdk/e/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cmcm/dmc/sdk/a/o;

.field private b:Lcom/cmcm/dmc/sdk/a/l;

.field private c:Z

.field private d:J

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/cmcm/dmc/sdk/e/e$a;

.field private k:J

.field private l:J

.field private volatile m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/b;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/e;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/e;J)J
    .locals 1

    iput-wide p1, p0, Lcom/cmcm/dmc/sdk/e/e;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/e;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method private a(Ljava/util/Map;Ljava/lang/Long;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/Long;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    div-long/2addr v8, v10

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->j()V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcm/dmc/sdk/e/e;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/e/e;J)J
    .locals 1

    iput-wide p1, p0, Lcom/cmcm/dmc/sdk/e/e;->l:J

    return-wide p1
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/e/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->i()V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->k()Lcom/cmcm/dmc/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/a;->c()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cmcm/dmc/sdk/e/e;->d:J

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->g:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string v3, "ReceiverAppRunInfoList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_2
    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method static synthetic c(Lcom/cmcm/dmc/sdk/e/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/e;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/cmcm/dmc/sdk/e/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/cmcm/dmc/sdk/e/e;->k:J

    return-wide v0
.end method

.method static synthetic e(Lcom/cmcm/dmc/sdk/e/e;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private i()V
    .locals 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/e;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->k()Lcom/cmcm/dmc/sdk/a/a;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Lcom/cmcm/dmc/sdk/a/a;->b()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v6, p0, Lcom/cmcm/dmc/sdk/e/e;->d:J

    invoke-virtual {v1, v6, v7}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/cmcm/dmc/sdk/a/a;->a(Ljava/io/FileOutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/e;->c:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string v3, "ReceiverAppRunInfoList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/cmcm/dmc/sdk/a/a;->b(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_2
    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private j()V
    .locals 8

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cmcm/dmc/sdk/e/e;->d:J

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->k()Lcom/cmcm/dmc/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/a;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "begin_time"

    iget-wide v4, p0, Lcom/cmcm/dmc/sdk/e/e;->d:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "end_time"

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/dmc/sdk/e/e;->a(Ljava/util/Map;Ljava/lang/Long;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "runCount"

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/dmc/sdk/e/e;->a(Ljava/util/Map;Ljava/lang/Long;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "runTime"

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/dmc/sdk/e/e;->a(Ljava/util/Map;Ljava/lang/Long;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "runTimeOffScreen"

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/e/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->l()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReceiverAppRunInfoList"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private k()Lcom/cmcm/dmc/sdk/a/a;
    .locals 4

    new-instance v0, Lcom/cmcm/dmc/sdk/a/a;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->e()Ljava/io/File;

    move-result-object v2

    const-string v3, "running_with_duration.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/cmcm/dmc/sdk/a/a;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/e;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/e/e;->d:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private m()V
    .locals 2

    new-instance v0, Lcom/cmcm/dmc/sdk/e/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmcm/dmc/sdk/e/e$a;-><init>(Lcom/cmcm/dmc/sdk/e/e;Lcom/cmcm/dmc/sdk/e/e$1;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->j:Lcom/cmcm/dmc/sdk/e/e$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/e/e;->j:Lcom/cmcm/dmc/sdk/e/e$a;

    invoke-virtual {p0, v1, v0}, Lcom/cmcm/dmc/sdk/e/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->j:Lcom/cmcm/dmc/sdk/e/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->j:Lcom/cmcm/dmc/sdk/e/e$a;

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/e/e;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmcm/dmc/sdk/e/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmcm/dmc/sdk/e/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmcm/dmc/sdk/e/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v2, 0x36ee80

    div-long v12, v10, v2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmcm/dmc/sdk/e/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmcm/dmc/sdk/e/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmcm/dmc/sdk/e/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1c

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmcm/dmc/sdk/e/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    const-wide/32 v6, 0x36ee80

    div-long v14, v4, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_3
    cmp-long v4, v14, v12

    if-nez v4, :cond_7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cmcm/dmc/sdk/e/e;->k:J

    const-wide/32 v4, 0x36ee80

    div-long v16, v2, v4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cmcm/dmc/sdk/e/e;->l:J

    const-wide/32 v4, 0x36ee80

    div-long v18, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmcm/dmc/sdk/e/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1b

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmcm/dmc/sdk/e/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    :goto_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_4
    cmp-long v3, v14, v12

    if-nez v3, :cond_d

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v10

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v2

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    cmp-long v7, v8, v14

    if-lez v7, :cond_1a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v7, v8, v14

    if-gez v7, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1a

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v14, v2

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v2, v5

    :goto_6
    move-object v5, v2

    goto :goto_5

    :cond_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    const-wide/32 v4, 0x36ee80

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    const-wide/32 v8, 0x36ee80

    rem-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v14

    :goto_7
    cmp-long v2, v4, v12

    if-gez v2, :cond_8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v6, 0x36ee80

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_7

    :cond_8
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v4, 0x36ee80

    rem-long v4, v10, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_9
    move-object v5, v2

    :cond_a
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_c

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cmcm/dmc/sdk/e/e;->c:Z

    invoke-static {}, Lcom/cmcm/dmc/sdk/e/d;->a()Lcom/cmcm/dmc/sdk/e/d;

    move-result-object v2

    const-string v3, "run"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/cmcm/dmc/sdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-wide/16 v2, 0x0

    goto :goto_8

    :cond_d
    const-wide/32 v6, 0x36ee80

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    const-wide/32 v20, 0x36ee80

    rem-long v8, v8, v20

    sub-long/2addr v6, v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v2

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v7, v8, v20

    if-gez v7, :cond_19

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    move-wide/from16 v20, v0

    cmp-long v7, v8, v20

    if-lez v7, :cond_19

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x36ee80

    add-long v20, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cmcm/dmc/sdk/e/e;->h:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x36ee80

    rem-long v22, v22, v24

    sub-long v20, v20, v22

    cmp-long v7, v8, v20

    if-gez v7, :cond_19

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v20, v2

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v2, v5

    :goto_b
    move-object v5, v2

    goto :goto_a

    :cond_e
    move-object v5, v2

    :cond_f
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_11

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v14

    move-wide v8, v2

    :goto_d
    cmp-long v2, v8, v12

    if-gez v2, :cond_14

    const-wide/32 v2, 0x36ee80

    cmp-long v5, v16, v14

    if-ltz v5, :cond_12

    cmp-long v5, v16, v8

    if-gez v5, :cond_12

    cmp-long v5, v18, v8

    if-lez v5, :cond_12

    const-wide/16 v6, 0x0

    :cond_10
    :goto_e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-lez v3, :cond_13

    :goto_f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    move-wide v8, v2

    goto :goto_d

    :cond_11
    const-wide/16 v2, 0x0

    goto :goto_c

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v6, v2

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmcm/dmc/sdk/e/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_17

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/32 v22, 0x36ee80

    div-long v20, v20, v22

    cmp-long v20, v20, v8

    if-nez v20, :cond_17

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/32 v22, 0x36ee80

    div-long v20, v20, v22

    cmp-long v20, v20, v8

    if-nez v20, :cond_17

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v20, v2

    sub-long/2addr v6, v2

    move-wide v2, v6

    :goto_11
    move-wide v6, v2

    goto :goto_10

    :cond_13
    const-wide/16 v6, 0x0

    goto :goto_f

    :cond_14
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_16

    cmp-long v2, v16, v12

    if-gez v2, :cond_16

    cmp-long v2, v18, v12

    if-nez v2, :cond_16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v2, 0x36ee80

    rem-long v2, v10, v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/cmcm/dmc/sdk/e/e;->l:J

    const-wide/32 v8, 0x36ee80

    rem-long/2addr v6, v8

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_15

    const-wide/32 v2, 0x36ee80

    rem-long v2, v10, v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/cmcm/dmc/sdk/e/e;->l:J

    const-wide/32 v8, 0x36ee80

    rem-long/2addr v6, v8

    sub-long/2addr v2, v6

    :goto_12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_15
    const-wide/16 v2, 0x0

    goto :goto_12

    :cond_16
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v6, 0x36ee80

    rem-long v6, v10, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_17
    move-wide v2, v6

    goto :goto_11

    :cond_18
    move-wide v6, v2

    goto/16 :goto_e

    :cond_19
    move-object v2, v5

    goto/16 :goto_b

    :cond_1a
    move-object v2, v5

    goto/16 :goto_6

    :cond_1b
    move-object v4, v2

    goto/16 :goto_4

    :cond_1c
    move-object v3, v2

    goto/16 :goto_2
.end method

.method public b()V
    .locals 4

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->m()V

    new-instance v0, Lcom/cmcm/dmc/sdk/a/o;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/o;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->a:Lcom/cmcm/dmc/sdk/a/o;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/o;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-virtual {v0, p0}, Lcom/cmcm/dmc/sdk/a/o;->a(Lcom/cmcm/dmc/sdk/a/n;)V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->c()V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->j()V

    new-instance v0, Lcom/cmcm/dmc/sdk/a/l;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/l;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->b:Lcom/cmcm/dmc/sdk/a/l;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->b:Lcom/cmcm/dmc/sdk/a/l;

    new-instance v1, Lcom/cmcm/dmc/sdk/e/e$2;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/e/e$2;-><init>(Lcom/cmcm/dmc/sdk/e/e;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcm/dmc/sdk/a/l;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "running_with_duration"

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/o;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->i()V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->l()V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->b:Lcom/cmcm/dmc/sdk/a/l;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/l;->b()V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/o;->a()V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/e;->n()V

    goto :goto_0
.end method
