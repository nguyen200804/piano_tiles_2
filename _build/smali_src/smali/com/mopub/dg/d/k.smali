.class public final Lcom/mopub/dg/d/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/mopub/dg/d/m;)V
    .locals 1

    new-instance v0, Lcom/mopub/dg/d/l;

    invoke-direct {v0, p1, p0}, Lcom/mopub/dg/d/l;-><init>(Lcom/mopub/dg/d/m;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mopub/dg/d/l;->start()V

    return-void
.end method

.method static b(Ljava/lang/String;Lcom/mopub/dg/d/m;)Ljava/util/ArrayList;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lcom/mopub/dg/d/m;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v6

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-interface {p1}, Lcom/mopub/dg/d/m;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    move-object v0, v1

    goto :goto_1

    :cond_4
    :try_start_7
    invoke-interface {p1, v2}, Lcom/mopub/dg/d/m;->a(Ljava/util/ArrayList;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_5
    :goto_5
    move-object v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_6
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_7
    :goto_7
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_3
.end method
