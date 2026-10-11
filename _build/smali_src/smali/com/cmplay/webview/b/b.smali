.class public Lcom/cmplay/webview/b/b;
.super Ljava/lang/Object;
.source "Md5Util.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 10
    .line 14
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/webview/b/b;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 19
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v0, "0123456789abcdef"

    .line 34
    array-length v1, p0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 39
    const-string v3, "0123456789abcdef"

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    const-string v3, "0123456789abcdef"

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
