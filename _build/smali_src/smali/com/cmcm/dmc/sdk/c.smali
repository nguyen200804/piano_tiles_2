.class public Lcom/cmcm/dmc/sdk/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/cmcm/dmc/sdk/c;


# instance fields
.field private volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cmcm/dmc/sdk/c;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/c;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/c;->a:Lcom/cmcm/dmc/sdk/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmcm/dmc/sdk/c;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/c;->a:Lcom/cmcm/dmc/sdk/c;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-static {p1}, Lcom/cmcm/dmc/sdk/a/c;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/c;->b:Z

    if-nez v0, :cond_1

    const-string v0, "DmcContext"

    const-string v1, "call startup() first"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    const-string v0, "data_map"

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/cmcm/dmc/sdk/a/f;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to report : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v0

    const/16 v1, 0xa

    const-string v3, "reporter"

    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/dmc/sdk/g/j;->a(Z)V

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/cmcm/dmc/sdk/a;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmcm/dmc/sdk/c;->a(Landroid/content/Context;ILcom/cmcm/dmc/sdk/a;Lcom/cmcm/dmc/sdk/b;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized a(Landroid/content/Context;ILcom/cmcm/dmc/sdk/a;Lcom/cmcm/dmc/sdk/b;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/cmcm/dmc/sdk/c;->b:Z

    if-eqz v2, :cond_0

    const-string v1, "DmcContext"

    const-string v2, "retry to startup"

    invoke-static {v1, v2}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid parameters"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "dmc"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "DmcContext"

    const-string v2, "failed to initialize the root directory"

    invoke-static {v0, v2}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/cmcm/dmc/sdk/a/f;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "DmcContext"

    const-string v3, "DMC startup..."

    invoke-static {v1, v3}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "DMC"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/cmcm/dmc/sdk/a/b;

    invoke-direct {v1, p3, v2, p1, v3}, Lcom/cmcm/dmc/sdk/a/b;-><init>(Lcom/cmcm/dmc/sdk/a;Ljava/io/File;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {p1, v3, v2, v1}, Lcom/cmcm/dmc/sdk/a/c;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;Lcom/cmcm/dmc/sdk/a/b;)V

    const-string v3, "main_switch"

    const-string v4, "receiver_switch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_4

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v3

    const-string v4, "reporter"

    const-string v5, "interval_check_batch"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/cmcm/dmc/sdk/g/j;->a(J)V

    invoke-virtual {v3, p1, v2}, Lcom/cmcm/dmc/sdk/g/j;->a(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->b()V

    invoke-virtual {v1}, Lcom/cmcm/dmc/sdk/a/b;->a()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcm/dmc/sdk/c;->b:Z

    goto :goto_0

    :cond_3
    const-string v1, "DmcContext"

    const-string v3, "DMC log disabled"

    invoke-static {v1, v3}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "DmcContext"

    const-string v3, "don\'t start dmcSdk"

    invoke-static {v2, v3}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcm/dmc/sdk/a/b;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
