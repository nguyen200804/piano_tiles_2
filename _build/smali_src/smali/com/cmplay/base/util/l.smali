.class public Lcom/cmplay/base/util/l;
.super Ljava/lang/Object;
.source "Md5Util.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    .line 62
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 63
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/l;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-string v0, "0123456789abcdef"

    .line 79
    array-length v1, p0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 82
    const-string v3, "0123456789abcdef"

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, "0123456789abcdef"

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
