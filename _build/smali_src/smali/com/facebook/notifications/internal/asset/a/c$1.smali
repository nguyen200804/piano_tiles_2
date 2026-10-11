.class Lcom/facebook/notifications/internal/asset/a/c$1;
.super Ljava/lang/Object;
.source "ContentDownloader.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/a/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/notifications/internal/asset/a/c;->a(Ljava/net/URL;Lcom/facebook/notifications/internal/asset/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/notifications/internal/asset/a/c$a;

.field final synthetic b:Ljava/net/URL;

.field final synthetic c:Lcom/facebook/notifications/internal/asset/a/c;


# direct methods
.method constructor <init>(Lcom/facebook/notifications/internal/asset/a/c;Lcom/facebook/notifications/internal/asset/a/c$a;Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/notifications/internal/asset/a/c$1;->c:Lcom/facebook/notifications/internal/asset/a/c;

    iput-object p2, p0, Lcom/facebook/notifications/internal/asset/a/c$1;->a:Lcom/facebook/notifications/internal/asset/a/c$a;

    iput-object p3, p0, Lcom/facebook/notifications/internal/asset/a/c$1;->b:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/net/URL;)[B
    .locals 9
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x1000

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_3

    .line 98
    if-eqz v1, :cond_0

    .line 99
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 102
    :cond_0
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0

    .line 105
    :catch_0
    move-exception v2

    .line 106
    invoke-static {}, Lcom/facebook/notifications/internal/asset/a/c;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to close streams"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 75
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 76
    if-ne v3, v7, :cond_e

    .line 80
    :goto_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 81
    const/16 v2, 0x1000

    :try_start_5
    new-array v2, v2, [B

    .line 84
    :goto_3
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 85
    if-ne v5, v7, :cond_7

    .line 92
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v1

    .line 98
    if-eqz v4, :cond_4

    .line 99
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 102
    :cond_4
    if-eqz v3, :cond_5

    .line 103
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 109
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    move-object v0, v1

    goto :goto_1

    .line 89
    :cond_7
    const/4 v6, 0x0

    :try_start_7
    invoke-virtual {v3, v2, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    .line 93
    :catch_1
    move-exception v2

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v8

    .line 94
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/facebook/notifications/internal/asset/a/c;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to download content for url "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 98
    if-eqz v3, :cond_8

    .line 99
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 102
    :cond_8
    if-eqz v2, :cond_9

    .line 103
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 109
    :cond_9
    :goto_6
    if-eqz v4, :cond_a

    .line 110
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    move-object v0, v1

    goto :goto_1

    .line 105
    :catch_2
    move-exception v2

    .line 106
    invoke-static {}, Lcom/facebook/notifications/internal/asset/a/c;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to close streams"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 105
    :catch_3
    move-exception v0

    .line 106
    invoke-static {}, Lcom/facebook/notifications/internal/asset/a/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to close streams"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 97
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 98
    :goto_7
    if-eqz v3, :cond_b

    .line 99
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 102
    :cond_b
    if-eqz v2, :cond_c

    .line 103
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 109
    :cond_c
    :goto_8
    if-eqz v4, :cond_d

    .line 110
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v0

    .line 105
    :catch_4
    move-exception v1

    .line 106
    invoke-static {}, Lcom/facebook/notifications/internal/asset/a/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to close streams"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 97
    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v3, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v1

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_7

    .line 93
    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_5

    :catch_6
    move-exception v2

    move-object v3, v1

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v3, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto/16 :goto_5

    :cond_e
    move v2, v3

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/c$1;->a:Lcom/facebook/notifications/internal/asset/a/c$a;

    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a/c$1;->b:Ljava/net/URL;

    iget-object v2, p0, Lcom/facebook/notifications/internal/asset/a/c$1;->b:Ljava/net/URL;

    invoke-direct {p0, v2}, Lcom/facebook/notifications/internal/asset/a/c$1;->a(Ljava/net/URL;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/notifications/internal/asset/a/c$a;->a(Ljava/net/URL;[B)V

    .line 118
    return-void
.end method
