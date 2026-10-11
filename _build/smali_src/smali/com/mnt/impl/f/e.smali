.class public final Lcom/mnt/impl/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/mnt/impl/e;->gf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mnt/impl/f/e;->a:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/mnt/impl/f/e;->b:I

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    const-string v1, ""

    .line 165
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/mnt/impl/f/e;->b:I

    if-ge v0, v2, :cond_0

    .line 166
    invoke-direct/range {p0 .. p5}, Lcom/mnt/impl/f/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    :cond_0
    return-object v1

    .line 171
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/mnt/impl/f/e;->a:I

    mul-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 266
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    const-string v0, ""

    .line 275
    :goto_0
    return-object v0

    .line 269
    :cond_1
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 270
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 273
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 78
    .line 83
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 86
    const v2, 0x2bf20

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 87
    const v2, 0xea60

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 88
    sget-object v2, Lcom/mnt/impl/e;->gg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 90
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 111
    invoke-static {v1}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v1}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v5}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v0, v1

    .line 118
    :goto_0
    return-object v0

    .line 93
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 94
    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 96
    :try_start_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 98
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    .line 102
    :catch_0
    move-exception v2

    move-object v7, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v0

    move-object v0, v7

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    .line 103
    invoke-static {p1}, Lcom/mnt/impl/b/k;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-static {p1}, Lcom/mnt/impl/b/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 111
    :cond_2
    invoke-static {v3}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v2}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v4}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 114
    if-eqz v5, :cond_3

    .line 115
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v0, v1

    .line 118
    goto :goto_0

    .line 100
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v1

    .line 111
    invoke-static {v4}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v3}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v5}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 114
    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v0, v1

    .line 100
    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v2, v1

    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 111
    invoke-static {v4}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v3}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v5}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 114
    if-eqz v2, :cond_6

    .line 115
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    move-object v0, v1

    .line 109
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v5, v1

    move-object v2, v1

    :goto_4
    invoke-static {v4}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v1}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v5}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 114
    if-eqz v2, :cond_7

    .line 115
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    .line 111
    :catchall_1
    move-exception v2

    move-object v4, v1

    move-object v5, v1

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v4, v1

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v4, v1

    move-object v1, v3

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v1, v2

    move-object v2, v5

    move-object v5, v4

    move-object v4, v3

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v1, v3

    goto :goto_4

    .line 108
    :catch_2
    move-exception v2

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v4, v1

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v4, v1

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    .line 102
    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    goto/16 :goto_2

    :catch_7
    move-exception v2

    move-object v3, v1

    move-object v4, v1

    move-object v5, v0

    move-object v0, v2

    move-object v2, v1

    goto/16 :goto_2

    :catch_8
    move-exception v2

    move-object v3, v1

    move-object v4, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v1

    goto/16 :goto_2

    :catch_9
    move-exception v2

    move-object v4, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v1

    goto/16 :goto_2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 184
    .line 186
    const-string v2, ""

    .line 190
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/mnt/impl/f/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lcom/mnt/impl/e;->gh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/f/e;->c:Ljava/lang/String;

    .line 194
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    sget-object v1, Lcom/mnt/impl/e;->gi:Ljava/lang/String;

    const-string v3, "*/*"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v1, Lcom/mnt/impl/e;->gj:Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/e;->gk:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v1, Lcom/mnt/impl/e;->gl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 201
    sget-object v1, Lcom/mnt/impl/e;->gm:Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/e;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v1, Lcom/mnt/impl/e;->go:Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/e;->gp:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    sget-object v1, Lcom/mnt/impl/e;->gq:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 209
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 210
    if-lez p4, :cond_3

    move v3, p4

    .line 211
    :goto_0
    if-lez p5, :cond_4

    move v1, p5

    .line 212
    :goto_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 213
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 214
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 216
    new-instance v3, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    :try_start_2
    invoke-virtual {v3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 229
    :goto_2
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 231
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 232
    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 233
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 242
    :catch_0
    move-exception v1

    move-object v6, v0

    move-object v8, v3

    move-object v0, v1

    move-object v1, v2

    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    .line 243
    invoke-static {p1}, Lcom/mnt/impl/b/k;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 244
    invoke-static {p1}, Lcom/mnt/impl/b/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 245
    invoke-direct/range {v0 .. v5}, Lcom/mnt/impl/f/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v1

    .line 250
    invoke-static {v8}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v7}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 252
    if-eqz v6, :cond_2

    .line 253
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_2
    :goto_5
    return-object v1

    .line 210
    :cond_3
    const v1, 0x2bf20

    move v3, v1

    goto :goto_0

    .line 211
    :cond_4
    const v1, 0xea60

    goto :goto_1

    .line 235
    :cond_5
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 236
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 237
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    .line 238
    :try_start_5
    sget-object v2, Lcom/mnt/impl/e;->gr:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 239
    invoke-static {v1}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v1

    .line 250
    :cond_6
    invoke-static {v3}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v7}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 252
    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 250
    :cond_7
    invoke-static {v8}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v7}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 252
    if-eqz v6, :cond_2

    .line 253
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 248
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v7

    move-object v2, v7

    :goto_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 250
    invoke-static {v3}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v7}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 252
    if-eqz v2, :cond_2

    .line 253
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 250
    :catchall_0
    move-exception v0

    move-object v6, v7

    move-object v3, v7

    :goto_7
    invoke-static {v3}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v7}, Lcom/mnt/impl/f/e;->a(Ljava/io/Closeable;)V

    .line 252
    if-eqz v6, :cond_8

    .line 253
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    .line 250
    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v3, v7

    move-object v0, v1

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v8

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v6, v2

    goto :goto_7

    .line 248
    :catch_2
    move-exception v1

    move-object v3, v7

    move-object v9, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_6

    :catch_3
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_6

    :catch_4
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_6

    .line 242
    :catch_5
    move-exception v0

    move-object v6, v7

    move-object v1, v2

    move-object v8, v7

    goto/16 :goto_4

    :catch_6
    move-exception v1

    move-object v6, v0

    move-object v8, v7

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_4

    :catch_7
    move-exception v2

    move-object v6, v0

    move-object v8, v3

    move-object v0, v2

    goto/16 :goto_4

    :cond_9
    move-object v3, v7

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    const-string v1, ""

    .line 56
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/mnt/impl/f/e;->b:I

    if-ge v0, v2, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/mnt/impl/f/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    return-object v1

    .line 62
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/mnt/impl/f/e;->a:I

    mul-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 180
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p2}, Lcom/mnt/impl/f/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 152
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-static {p2}, Lcom/mnt/impl/f/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v5, v4

    .line 147
    invoke-direct/range {v0 .. v5}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
