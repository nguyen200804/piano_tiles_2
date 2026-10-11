.class public Lb/a/av;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sput-object v0, Lb/a/av;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 280
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 283
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 285
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 289
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 55
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 57
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 58
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_1
    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v0, "[^[a-z][A-Z][0-9][.][_]]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 321
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 322
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-static {v1}, Lb/a/av;->a(Ljava/io/OutputStream;)V

    .line 326
    return-void

    .line 323
    :catchall_0
    move-exception v0

    .line 324
    invoke-static {v1}, Lb/a/av;->a(Ljava/io/OutputStream;)V

    .line 325
    throw v0
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 354
    if-eqz p0, :cond_0

    .line 356
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lorg/apache/http/Header;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 362
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 368
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 369
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 368
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 84
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 87
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_1
    return-object v0

    .line 89
    :cond_0
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "helper"

    const-string v2, "getMD5 error"

    invoke-static {v1, v2, v0}, Lb/a/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 97
    const-string v0, ""

    goto :goto_1
.end method

.method public static b(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 301
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 304
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 308
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static c(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 343
    if-eqz p0, :cond_0

    .line 345
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 226
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
