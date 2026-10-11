.class public Lcom/ijinshan/cloudconfig/d/b;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public static a(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 186
    if-nez p0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 194
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 200
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 205
    :catch_0
    move-exception v3

    .line 207
    :goto_2
    if-eqz v2, :cond_2

    .line 209
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 213
    :cond_2
    :goto_3
    if-eqz v1, :cond_0

    .line 215
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 216
    :catch_1
    move-exception v1

    goto :goto_0

    .line 202
    :cond_3
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 203
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v0, v3

    .line 207
    :cond_4
    if-eqz v2, :cond_5

    .line 209
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 213
    :cond_5
    :goto_4
    if-eqz v1, :cond_0

    .line 215
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 216
    :catch_2
    move-exception v1

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_5
    if-eqz v2, :cond_6

    .line 209
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 213
    :cond_6
    :goto_6
    if-eqz v1, :cond_7

    .line 215
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 217
    :cond_7
    :goto_7
    throw v0

    .line 210
    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_6

    .line 216
    :catch_6
    move-exception v1

    goto :goto_7

    .line 207
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 205
    :catch_7
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_2

    :catch_8
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 226
    const-string v0, "zzb_cloud"

    const-string v1, "loadJsonFromFile"

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/d/b;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 288
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 291
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    .line 295
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    .line 296
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 304
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v1

    .line 307
    :catch_0
    move-exception v1

    .line 308
    :goto_2
    return v0

    .line 299
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 301
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 304
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 306
    const/4 v0, 0x1

    goto :goto_2

    .line 302
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public static a(Lorg/json/JSONObject;Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 235
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 237
    :try_start_0
    invoke-static {v0, p1}, Lcom/ijinshan/cloudconfig/d/b;->a(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 239
    if-eqz v0, :cond_0

    .line 241
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 239
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 241
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 243
    :cond_1
    :goto_1
    throw v1

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 249
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ijinshan/cloudconfig/d/b;->a(Lorg/json/JSONObject;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
