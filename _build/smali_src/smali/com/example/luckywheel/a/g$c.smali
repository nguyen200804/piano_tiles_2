.class public Lcom/example/luckywheel/a/g$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/luckywheel/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field protected final b:Lcom/example/luckywheel/a/g$b;

.field protected final c:Z


# direct methods
.method public constructor <init>(Lcom/example/luckywheel/a/g$b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/example/luckywheel/a/g$c;-><init>(Lcom/example/luckywheel/a/g$b;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/example/luckywheel/a/g$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/luckywheel/a/g$c;->b:Lcom/example/luckywheel/a/g$b;

    iput-boolean p2, p0, Lcom/example/luckywheel/a/g$c;->c:Z

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILjava/lang/String;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lcom/example/luckywheel/a/g$c;->b:Lcom/example/luckywheel/a/g$b;

    invoke-static {p3, p2, v0}, Lcom/example/luckywheel/a/g;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/example/luckywheel/a/g$b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {p3}, Lcom/example/luckywheel/a/g;->a(Ljava/io/Closeable;)V

    :goto_0
    const/16 v1, 0x194

    if-ne p1, v1, :cond_0

    const-string v1, "HttpClient"

    const-string v2, "on4xxError statusCode == 404"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "HttpClient"

    const-string v3, "Read error stream: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p3}, Lcom/example/luckywheel/a/g;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p3}, Lcom/example/luckywheel/a/g;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/example/luckywheel/a/g$c;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HttpClient"

    const-string v1, "default download"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4000

    :try_start_0
    new-array v0, v0, [B

    :cond_0
    invoke-virtual {p6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    invoke-static {p6}, Lcom/example/luckywheel/a/g;->a(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "HttpClient"

    const-string v2, "default download: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p6}, Lcom/example/luckywheel/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p6}, Lcom/example/luckywheel/a/g;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HttpClient"

    const-string v1, "default upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const-string v0, "Content-Length"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/example/luckywheel/a/g;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v0}, Lcom/example/luckywheel/a/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/example/luckywheel/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/example/luckywheel/a/g$c;->a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x190

    if-lt p2, v0, :cond_1

    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/example/luckywheel/a/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0}, Lcom/example/luckywheel/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/example/luckywheel/a/g$c;->a(ILjava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    const-string v0, "HttpClient"

    const-string v1, "onResponse throw UnknownHostException!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p1}, Lcom/example/luckywheel/a/g;->a(Ljava/net/HttpURLConnection;)V

    return-void
.end method
