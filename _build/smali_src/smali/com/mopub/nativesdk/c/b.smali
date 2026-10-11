.class final Lcom/mopub/nativesdk/c/b;
.super Ljava/lang/Object;
.source "AbsHttpLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/mopub/nativesdk/c/a;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/c/a;I)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    iput p2, p0, Lcom/mopub/nativesdk/c/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 114
    const/4 v1, 0x0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-static {v0}, Lcom/mopub/nativesdk/c/a;->a(Lcom/mopub/nativesdk/c/a;)Lcom/mopub/nativesdk/c/c;

    move-result-object v0

    const/16 v3, 0x65

    invoke-virtual {v0, v3}, Lcom/mopub/nativesdk/c/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 119
    iget v3, p0, Lcom/mopub/nativesdk/c/b;->a:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 120
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    iget-object v0, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/c/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "REQUEST URL: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    iget-object v1, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-virtual {v1}, Lcom/mopub/nativesdk/c/a;->a()I

    move-result v1

    .line 165
    if-eq v1, v5, :cond_0

    if-eq v1, v2, :cond_0

    move v1, v2

    .line 170
    :cond_0
    if-ne v1, v5, :cond_1

    .line 171
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 172
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 173
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    iget-boolean v2, v2, Lcom/mopub/nativesdk/c/a;->a:Z

    if-eqz v2, :cond_3

    .line 187
    iget-object v1, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-static {v1}, Lcom/mopub/nativesdk/c/a;->a(Lcom/mopub/nativesdk/c/a;)Lcom/mopub/nativesdk/c/c;

    move-result-object v1

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Lcom/mopub/nativesdk/c/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 188
    iget v2, p0, Lcom/mopub/nativesdk/c/b;->a:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 189
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 263
    :cond_2
    :goto_0
    return-void

    .line 194
    :cond_3
    const/16 v2, 0x4e20

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 195
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 198
    if-ne v1, v5, :cond_4

    .line 199
    iget-object v1, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-virtual {v1}, Lcom/mopub/nativesdk/c/a;->c()[B

    move-result-object v1

    .line 200
    if-eqz v1, :cond_4

    .line 201
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 202
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 203
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 204
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 207
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 212
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_5

    .line 213
    iget-object v2, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-static {v2}, Lcom/mopub/nativesdk/c/a;->a(Lcom/mopub/nativesdk/c/a;)Lcom/mopub/nativesdk/c/c;

    move-result-object v2

    const/16 v4, 0x6f

    invoke-virtual {v2, v4}, Lcom/mopub/nativesdk/c/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 214
    iget v4, p0, Lcom/mopub/nativesdk/c/b;->a:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http respond status code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "http respond status code is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ! url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 258
    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 222
    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    iget-boolean v1, v1, Lcom/mopub/nativesdk/c/a;->a:Z

    if-eqz v1, :cond_6

    .line 223
    iget-object v1, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-static {v1}, Lcom/mopub/nativesdk/c/a;->a(Lcom/mopub/nativesdk/c/a;)Lcom/mopub/nativesdk/c/c;

    move-result-object v1

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Lcom/mopub/nativesdk/c/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 224
    iget v2, p0, Lcom/mopub/nativesdk/c/b;->a:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 225
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 229
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 230
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 231
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 233
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 234
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 243
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 244
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-static {v2}, Lcom/mopub/nativesdk/c/a;->a(Lcom/mopub/nativesdk/c/a;)Lcom/mopub/nativesdk/c/c;

    move-result-object v2

    const/16 v3, 0x6e

    invoke-virtual {v2, v3}, Lcom/mopub/nativesdk/c/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 245
    iget v3, p0, Lcom/mopub/nativesdk/c/b;->a:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 246
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http connect time out ! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    if-eqz v1, :cond_2

    .line 260
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 237
    :cond_7
    :try_start_6
    iget-object v1, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/mopub/nativesdk/c/a;->a(Ljava/util/Map;[B)Ljava/lang/Object;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-static {v2}, Lcom/mopub/nativesdk/c/a;->a(Lcom/mopub/nativesdk/c/a;)Lcom/mopub/nativesdk/c/c;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/mopub/nativesdk/c/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 239
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget v1, p0, Lcom/mopub/nativesdk/c/b;->a:I

    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 241
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 258
    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 248
    :catch_1
    move-exception v0

    .line 252
    :goto_3
    :try_start_7
    iget-object v2, p0, Lcom/mopub/nativesdk/c/b;->b:Lcom/mopub/nativesdk/c/a;

    invoke-static {v2}, Lcom/mopub/nativesdk/c/a;->a(Lcom/mopub/nativesdk/c/a;)Lcom/mopub/nativesdk/c/c;

    move-result-object v2

    const/16 v3, 0x6f

    invoke-virtual {v2, v3}, Lcom/mopub/nativesdk/c/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 253
    iget v3, p0, Lcom/mopub/nativesdk/c/b;->a:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 255
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 258
    if-eqz v1, :cond_2

    .line 260
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 258
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_8

    .line 260
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    .line 258
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 248
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 243
    :catch_3
    move-exception v0

    goto/16 :goto_2
.end method
