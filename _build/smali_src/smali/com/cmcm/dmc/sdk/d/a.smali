.class public Lcom/cmcm/dmc/sdk/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Thread;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/cmcm/dmc/sdk/d/a;->e:I

    return-void
.end method

.method private a()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/cmcm/dmc/sdk/d/a;->d:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v4, p0, Lcom/cmcm/dmc/sdk/d/a;->e:I

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v4, p0, Lcom/cmcm/dmc/sdk/d/a;->e:I

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/d/a;->a(Ljava/net/HttpURLConnection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/cmcm/dmc/sdk/d/a;->a(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v4, 0x1000

    :try_start_3
    new-array v4, v4, [B

    :cond_4
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-gtz v5, :cond_6

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {p0, v0, v4, v6, v5}, Lcom/cmcm/dmc/sdk/d/a;->a(Ljava/net/HttpURLConnection;[BII)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_5
    const-string v4, "HttpDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to download : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/d/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/d/a;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/d/a;->d:Ljava/lang/String;

    iput p2, p0, Lcom/cmcm/dmc/sdk/d/a;->e:I

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/d/a;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/d/a;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmcm/dmc/sdk/d/a$1;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/d/a$1;-><init>(Lcom/cmcm/dmc/sdk/d/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/d/a;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/d/a;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cmcm/dmc/sdk/d/a;->b(Z)V

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/d/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/d/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/net/HttpURLConnection;[BII)Z
    .locals 1

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/d/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/cmcm/dmc/sdk/d/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/d/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/d/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2710

    invoke-virtual {p0, p1, v0}, Lcom/cmcm/dmc/sdk/d/a;->a(Ljava/lang/String;I)V

    return-void
.end method
