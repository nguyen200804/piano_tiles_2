.class public Lcom/example/luckywheel/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/a/g$c;,
        Lcom/example/luckywheel/a/g$a;,
        Lcom/example/luckywheel/a/g$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;JILcom/example/luckywheel/a/g$b;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long p2, v0

    :cond_0
    instance-of v0, p5, Lcom/example/luckywheel/a/g$a;

    if-eqz v0, :cond_2

    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    move-object v0, p5

    check-cast v0, Lcom/example/luckywheel/a/g$a;

    :goto_0
    new-array v1, p4, [B

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_3

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v2, v4

    if-eqz v0, :cond_1

    invoke-interface {v0, v2, v3, p2, p3}, Lcom/example/luckywheel/a/g$a;->a(JJ)V

    :cond_1
    invoke-static {p5}, Lcom/example/luckywheel/a/g;->a(Lcom/example/luckywheel/a/g$b;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    return-wide v2
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/example/luckywheel/a/g$b;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v4, 0x4000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/example/luckywheel/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JILcom/example/luckywheel/a/g$b;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, p0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;JLcom/example/luckywheel/a/g$b;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/high16 v0, 0x40000

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, v1, p2, p3, p4}, Lcom/example/luckywheel/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/example/luckywheel/a/g$b;)J

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/example/luckywheel/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/example/luckywheel/a/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Lcom/example/luckywheel/a/g$b;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/example/luckywheel/a/g;->a(Ljava/io/InputStream;Ljava/lang/String;JLcom/example/luckywheel/a/g$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v0, v3, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "UTF-8"

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-static {v0, p1}, Lcom/example/luckywheel/a/g;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/example/luckywheel/a/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/example/luckywheel/a/b;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/example/luckywheel/a/g$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/example/luckywheel/a/b;

    invoke-direct {v0}, Lcom/example/luckywheel/a/b;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpClient"

    const-string v2, "close: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/example/luckywheel/a/g$c;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/example/luckywheel/a/g$c;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x5

    move v4, v1

    move-object v1, v3

    :goto_0
    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {p2, v2}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    const-string v2, "Accept-Encoding"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v5, "Accept-Encoding"

    iget-boolean v2, p3, Lcom/example/luckywheel/a/g$c;->c:Z

    if-eqz v2, :cond_7

    const-string v2, "gzip, identity"

    :goto_1
    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p0, p1, p2, p4, p5}, Lcom/example/luckywheel/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz v1, :cond_2

    const/16 v5, 0x3b

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const-string v6, "Cookie"

    const/4 v7, -0x1

    if-ne v5, v7, :cond_8

    :goto_2
    invoke-virtual {v2, v6, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    instance-of v1, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_3

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    invoke-virtual {p3, v1}, Lcom/example/luckywheel/a/g$c;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_3
    const-string v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "DELETE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "MOVE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p3, v2}, Lcom/example/luckywheel/a/g$c;->a(Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    :goto_3
    const/16 v5, 0x12e

    if-eq v1, v5, :cond_6

    const/16 v5, 0x12d

    if-eq v1, v5, :cond_6

    const/16 v5, 0x12f

    if-ne v1, v5, :cond_a

    :cond_6
    :try_start_3
    const-string v5, "Location"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    const-string v1, "Set-Cookie"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v2, p0}, Lcom/example/luckywheel/a/g$c;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p3, v2}, Lcom/example/luckywheel/a/g$c;->b(Ljava/net/HttpURLConnection;)V

    add-int/lit8 v2, v4, -0x1

    if-gtz v2, :cond_c

    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "HTTP error or redirect too many times"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :try_start_4
    const-string v2, "identity"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v6, "authentication challenge"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    goto :goto_3

    :cond_9
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    :goto_4
    invoke-virtual {p3, v2}, Lcom/example/luckywheel/a/g$c;->b(Ljava/net/HttpURLConnection;)V

    throw v1

    :cond_a
    :try_start_6
    invoke-virtual {p3, v2, v1}, Lcom/example/luckywheel/a/g$c;->a(Ljava/net/HttpURLConnection;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_b

    const/16 v3, 0x12c

    if-lt v1, v3, :cond_b

    :cond_b
    invoke-virtual {p3, v2}, Lcom/example/luckywheel/a/g$c;->b(Ljava/net/HttpURLConnection;)V

    return-void

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :cond_c
    move v4, v2

    goto/16 :goto_0
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpClient"

    const-string v2, "disconnect: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/net/HttpURLConnection;J)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v0, "delegate"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0, p1, p2}, Lcom/example/luckywheel/a/g;->a(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const-string v0, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "httpsEngine"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0, p1, p2}, Lcom/example/luckywheel/a/g;->a(Ljava/net/HttpURLConnection;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_1
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_1
    const-string v0, "delegate"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0, p1}, Lcom/example/luckywheel/a/g;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    const-string v0, "httpsEngine"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0, p1}, Lcom/example/luckywheel/a/g;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Length"

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/example/luckywheel/a/g;->a(Ljava/net/HttpURLConnection;J)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/example/luckywheel/a/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "*/*"

    :cond_2
    return-object v0
.end method
