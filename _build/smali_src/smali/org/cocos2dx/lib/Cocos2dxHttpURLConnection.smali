.class public Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;
.super Ljava/lang/Object;
.source "Cocos2dxHttpURLConnection.java"


# static fields
.field private static final POST_METHOD:Ljava/lang/String; = "POST"

.field private static final PUT_METHOD:Ljava/lang/String; = "PUT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addRequestHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static combinCookies(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "hostDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    const-string v9, "FALSE"

    .line 326
    const-string v5, "/"

    .line 327
    const-string v4, "FALSE"

    .line 328
    const/4 v3, 0x0

    .line 329
    const/4 v2, 0x0

    .line 330
    const/4 v1, 0x0

    .line 331
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    .end local p1    # "hostDomain":Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 332
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 333
    array-length v12, v11

    const/4 v1, 0x0

    move v7, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    :goto_1
    if-ge v7, v12, :cond_6

    aget-object v13, v11, v7

    .line 334
    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 335
    const/4 v15, -0x1

    if-ne v15, v14, :cond_1

    .line 333
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 338
    :cond_1
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v15, v16

    .line 339
    const-string v13, "expires"

    const/4 v14, 0x0

    aget-object v14, v15, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 340
    const/4 v1, 0x1

    aget-object v1, v15, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->str2Seconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 341
    :cond_2
    const-string v13, "path"

    const/4 v14, 0x0

    aget-object v14, v15, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 342
    const/4 v5, 0x1

    aget-object v5, v15, v5

    goto :goto_2

    .line 343
    :cond_3
    const-string v13, "secure"

    const/4 v14, 0x0

    aget-object v14, v15, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 344
    const/4 v4, 0x1

    aget-object v4, v15, v4

    goto :goto_2

    .line 345
    :cond_4
    const-string v13, "domain"

    const/4 v14, 0x0

    aget-object v14, v15, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 346
    const/4 v6, 0x1

    aget-object v6, v15, v6

    goto :goto_2

    .line 347
    :cond_5
    const-string v13, "version"

    const/4 v14, 0x0

    aget-object v14, v15, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "max-age"

    const/4 v14, 0x0

    aget-object v14, v15, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 350
    const/4 v2, 0x0

    aget-object v3, v15, v2

    .line 351
    const/4 v2, 0x1

    aget-object v2, v15, v2

    goto/16 :goto_2

    .line 355
    :cond_6
    if-nez v6, :cond_7

    .line 356
    const-string v6, "none"

    .line 359
    :cond_7
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const/16 v7, 0x9

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const/16 v7, 0x9

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const/16 v7, 0x9

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/16 v7, 0x9

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v7, "\t"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v7, "\t"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const/16 v7, 0xa

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 p1, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    .line 373
    goto/16 :goto_0

    .line 375
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static connect(Ljava/net/HttpURLConnection;)I
    .locals 3
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "cocos2d-x debug info"

    const-string v2, "come in connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v1, "cocos2d-x debug info"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static createHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "linkURL"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 74
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "Cocos2dxHttpURLConnection exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static disconnect(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    return-void
.end method

.method static getResponseCode(Ljava/net/HttpURLConnection;)I
    .locals 3
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 284
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 288
    :goto_0
    return v0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    const-string v2, "Cocos2dxHttpURLConnection exception"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getResponseContent(Ljava/net/HttpURLConnection;)[B
    .locals 5
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 264
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 265
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 267
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 270
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    const-string v1, "Cocos2dxHttpURLConnection exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 272
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 273
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static getResponseHeaderByIdx(Ljava/net/HttpURLConnection;I)Ljava/lang/String;
    .locals 4
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .param p1, "idx"    # I

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 203
    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-object v2

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 210
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    if-ne v1, p1, :cond_2

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    if-nez v1, :cond_1

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, ","

    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v2, v0

    .line 223
    goto :goto_0

    .line 216
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, ","

    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 220
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 221
    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method static getResponseHeaderByKey(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 227
    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-object v2

    .line 231
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    const-string v1, "set-cookie"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->combinCookies(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 249
    goto :goto_0

    .line 243
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, ","

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method static getResponseHeaderByKeyInt(Ljava/net/HttpURLConnection;Ljava/lang/String;)I
    .locals 1
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static getResponseHeaders(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 5
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 182
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 183
    if-nez v1, :cond_1

    .line 184
    const/4 v2, 0x0

    .line 198
    :cond_0
    return-object v2

    .line 187
    :cond_1
    const-string v0, ""

    .line 189
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    if-nez v1, :cond_2

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, ","

    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 196
    goto :goto_0

    .line 194
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, ","

    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static getResponseMessage(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 294
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "Cocos2dxHttpURLConnection exception"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strInterVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    .line 307
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    const/4 v0, 0x0

    .line 309
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_1
    if-nez v0, :cond_2

    .line 314
    const-string v0, ""

    .line 316
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const/4 v0, 0x1

    move v1, v0

    .line 318
    goto :goto_1

    .line 319
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static sendRequest(Ljava/net/HttpURLConnection;[B)V
    .locals 2
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .param p1, "byteArray"    # [B

    .prologue
    .line 170
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 173
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v1, "Cocos2dxHttpURLConnection exception"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setReadAndConnectTimeout(Ljava/net/HttpURLConnection;II)V
    .locals 0
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "readMiliseconds"    # I
    .param p2, "connectMiliseconds"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 86
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 87
    return-void
.end method

.method static setRequestMethod(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 92
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "Cocos2dxHttpURLConnection exception"

    invoke-virtual {v0}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setVerifySSL(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 6
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "sslFilename"    # Ljava/lang/String;

    .prologue
    .line 102
    instance-of v1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v1, :cond_0

    .line 143
    .end local p0    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    return-void

    .line 106
    .restart local p0    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_0
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 110
    .end local p0    # "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v1

    .line 118
    :goto_1
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 121
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ca="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 125
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 127
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 128
    const-string v3, "ca"

    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 131
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 136
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 137
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 139
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    const-string v2, "Cocos2dxHttpURLConnection exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_1
    :try_start_1
    const-string v1, "assets/"

    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v1

    goto/16 :goto_1
.end method

.method private static str2Seconds(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "strTime"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 380
    const-wide/16 v0, 0x0

    .line 383
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEE, dd-MMM-yy hh:mm:ss zzz"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 384
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 385
    :catch_0
    move-exception v2

    .line 386
    const-string v3, "Cocos2dxHttpURLConnection exception"

    invoke-virtual {v2}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
