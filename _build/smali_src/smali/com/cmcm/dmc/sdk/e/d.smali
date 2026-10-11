.class public Lcom/cmcm/dmc/sdk/e/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/cmcm/dmc/sdk/e/d;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Lcom/cmcm/dmc/sdk/a/l;

.field private e:Z

.field private f:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cmcm/dmc/sdk/e/d;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/e/d;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/e/d;->a:Lcom/cmcm/dmc/sdk/e/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/d;->c:Z

    return-void
.end method

.method public static a()Lcom/cmcm/dmc/sdk/e/d;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/e/d;->a:Lcom/cmcm/dmc/sdk/e/d;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "action_flow"

    invoke-virtual {v0, v1, v2, p1}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->d()V

    new-instance v0, Lcom/cmcm/dmc/sdk/a/l;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/l;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/d;->d:Lcom/cmcm/dmc/sdk/a/l;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/d;->d:Lcom/cmcm/dmc/sdk/a/l;

    new-instance v1, Lcom/cmcm/dmc/sdk/e/d$1;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/e/d$1;-><init>(Lcom/cmcm/dmc/sdk/e/d;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcm/dmc/sdk/a/l;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/e/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->g()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/d;->d:Lcom/cmcm/dmc/sdk/a/l;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/l;->b()V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->e()V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->h()V

    return-void
.end method

.method private d()V
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->f()Lcom/cmcm/dmc/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/a;->c()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/e/d;->f:J

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readLong()J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    invoke-static {v4}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    :goto_0
    sget-object v2, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v3, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "start"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ts"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "end"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v4, v1

    :goto_2
    :try_start_4
    const-string v5, "action_flow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    move-wide v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v1

    :goto_3
    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v4

    move-object v4, v5

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v4, v5

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v4

    move-object v4, v5

    goto :goto_2
.end method

.method private e()V
    .locals 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/d;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->f()Lcom/cmcm/dmc/sdk/a/a;

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
    iget-wide v6, p0, Lcom/cmcm/dmc/sdk/e/d;->f:J

    invoke-virtual {v1, v6, v7}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    sget-object v0, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-wide v6, p0, Lcom/cmcm/dmc/sdk/e/d;->g:J

    invoke-virtual {v1, v6, v7}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v4, v3}, Lcom/cmcm/dmc/sdk/a/a;->a(Ljava/io/FileOutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/d;->e:Z
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
    const-string v3, "action_flow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save failed : "

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

.method private f()Lcom/cmcm/dmc/sdk/a/a;
    .locals 4

    new-instance v0, Lcom/cmcm/dmc/sdk/a/a;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->e()Ljava/io/File;

    move-result-object v2

    const-string v3, "action_flow.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/cmcm/dmc/sdk/a/a;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private g()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmcm/dmc/sdk/e/d;->g:J

    sget-object v1, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cmcm/dmc/sdk/e/d;->f:J

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    sget-object v0, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->f()Lcom/cmcm/dmc/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/a;->a()V

    :try_start_0
    sget-object v0, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->h()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReceiverActionFlow"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/d;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/e/d;->f:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ReceiverActionFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a5\u6536\u5230 action \uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/d;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "ts"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/cmcm/dmc/sdk/e/d;->b:Ljava/util/List;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/d;->e:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReceiverActionFlow"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/d;->c:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/cmcm/dmc/sdk/e/d;->c:Z

    const-string v0, "action_flow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action_flow setEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/d;->c()V

    goto :goto_0
.end method
