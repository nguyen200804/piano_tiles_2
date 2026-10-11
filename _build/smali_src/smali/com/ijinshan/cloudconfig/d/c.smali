.class public Lcom/ijinshan/cloudconfig/d/c;
.super Ljava/lang/Object;
.source "NetUtil.java"


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;III)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    const-class v4, Lcom/ijinshan/cloudconfig/d/c;

    monitor-enter v4

    .line 246
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    move-object v0, v1

    .line 318
    :cond_1
    :goto_0
    monitor-exit v4

    return-object v0

    .line 254
    :cond_2
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a:Z

    .line 256
    if-ne p3, v2, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 258
    const-string v0, "zzb_cloud"

    const-string v2, "\u8bf7\u6c42\u7248\u672c\u9b54\u65b9\u53f7"

    invoke-static {v0, v2}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    const-string v5, "1"

    const-string v6, ""

    invoke-static {v0, v2, v5, v6}, Lcom/ijinshan/cloudconfig/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :cond_3
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 265
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 266
    const-string v2, "Charset"

    const-string v5, "utf8"

    invoke-virtual {v0, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 269
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 271
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 273
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 274
    const/16 v5, 0xc8

    if-lt v2, v5, :cond_9

    const/16 v5, 0xcf

    if-gt v2, v5, :cond_9

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    const/16 v2, 0x400

    new-array v6, v2, [C

    .line 280
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 281
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 283
    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {v2, v6}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    if-ltz v7, :cond_6

    .line 284
    if-lez v7, :cond_4

    .line 285
    add-int/2addr v3, v7

    .line 286
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 296
    :catch_0
    move-exception v3

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 297
    :goto_2
    const/4 v3, 0x1

    :try_start_4
    sput-boolean v3, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 300
    if-eqz v0, :cond_5

    .line 302
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 306
    :cond_5
    :goto_3
    if-eqz v1, :cond_c

    .line 308
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v2

    .line 314
    :goto_4
    if-nez v0, :cond_1

    .line 315
    add-int/lit8 v0, p2, -0x1

    :try_start_7
    invoke-static {p0, p1, v0, p3}, Lcom/ijinshan/cloudconfig/d/c;->a(Ljava/lang/String;III)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    goto/16 :goto_0

    .line 289
    :cond_6
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 290
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v1

    .line 291
    :try_start_9
    const-string v3, "zzb_cloud"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jsondata="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_7
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 300
    :goto_5
    if-eqz v0, :cond_8

    .line 302
    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 306
    :cond_8
    :goto_6
    if-eqz v1, :cond_c

    .line 308
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v0, v2

    .line 310
    goto :goto_4

    .line 294
    :cond_9
    const/4 v2, 0x1

    :try_start_c
    sput-boolean v2, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v2, v1

    goto :goto_5

    .line 309
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 310
    goto :goto_4

    .line 309
    :catch_2
    move-exception v0

    move-object v0, v2

    .line 310
    goto :goto_4

    .line 300
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_7
    if-eqz v1, :cond_a

    .line 302
    :try_start_d
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 306
    :cond_a
    :goto_8
    if-eqz v2, :cond_b

    .line 308
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 310
    :cond_b
    :goto_9
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 244
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 303
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_8

    .line 309
    :catch_6
    move-exception v1

    goto :goto_9

    .line 300
    :catchall_2
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_7

    :catchall_4
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_7

    .line 296
    :catch_7
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_2

    :catch_8
    move-exception v2

    move-object v2, v1

    goto/16 :goto_2

    :catch_9
    move-exception v3

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_2

    :cond_c
    move-object v0, v2

    goto/16 :goto_4
.end method
