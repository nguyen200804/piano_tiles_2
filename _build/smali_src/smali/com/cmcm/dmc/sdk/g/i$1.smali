.class Lcom/cmcm/dmc/sdk/g/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/g/i;->a(Ljava/lang/String;Ljava/io/File;Lcom/cmcm/dmc/sdk/g/j$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmcm/dmc/sdk/g/j$c;

.field final synthetic d:Lcom/cmcm/dmc/sdk/g/i;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/g/i;Ljava/io/File;Ljava/lang/String;Lcom/cmcm/dmc/sdk/g/j$c;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/i$1;->d:Lcom/cmcm/dmc/sdk/g/i;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/g/i$1;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/cmcm/dmc/sdk/g/i$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmcm/dmc/sdk/g/i$1;->c:Lcom/cmcm/dmc/sdk/g/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "#post data begin#"

    invoke-static {v0, v4}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/i$1;->a:Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v5, p0, Lcom/cmcm/dmc/sdk/g/i$1;->b:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x2710

    :try_start_2
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/g/i$1;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    const-string v5, "Send File Size : %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v3, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v4

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_2
    invoke-static {}, Lcom/cmcm/dmc/sdk/g/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#post data end#"

    invoke-static {v0, v2}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/i$1;->d:Lcom/cmcm/dmc/sdk/g/i;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/i;->a(Lcom/cmcm/dmc/sdk/g/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/cmcm/dmc/sdk/g/i$1$1;

    invoke-direct {v2, p0, v1}, Lcom/cmcm/dmc/sdk/g/i$1$1;-><init>(Lcom/cmcm/dmc/sdk/g/i$1;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v5, "Http Response Code : %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_2

    const/16 v5, 0xca

    if-ne v3, v5, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-static {v4}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_3
    invoke-static {v4}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_1
.end method
