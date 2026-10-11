.class public Lcom/cmplay/util/ab;
.super Ljava/lang/Object;
.source "SignUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/ab$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    :try_start_0
    const-string v0, "utf-8"

    .line 37
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    invoke-virtual {p0}, Lcom/cmplay/util/ab$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {v3, v0}, Lcom/cmplay/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/cmplay/util/ab;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/cmplay/util/ab;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1, v0}, Lcom/cmplay/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullStackPianoTiles2&"

    invoke-static {v1, v2}, Lcom/cmplay/util/ab;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/cmplay/util/ab;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1, v0}, Lcom/cmplay/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 63
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 58
    :catch_2
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 60
    :catch_3
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 80
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_0

    .line 81
    const-string v4, "%20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    const/16 v5, 0x2a

    if-ne v4, v5, :cond_1

    .line 83
    const-string v4, "%2A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 133
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 134
    :cond_0
    const-string v0, ""

    .line 150
    :goto_0
    return-object v0

    .line 136
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    array-length v3, p0

    .line 139
    array-length v4, p0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, p0, v1

    .line 140
    const-string v6, "sig="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 139
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_3

    .line 146
    const/16 v5, 0x26

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 105
    array-length v3, v1

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v5, v1, v0

    .line 106
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 107
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 108
    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    aput-object v0, v3, v1

    .line 116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 119
    :goto_3
    array-length v0, v3

    if-ge v2, v0, :cond_4

    .line 120
    aget-object v1, v3, v2

    .line 121
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move-object v0, v3

    .line 124
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 164
    const-string v0, "HmacSHA1"

    .line 165
    const-string v1, "utf-8"

    .line 166
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 167
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 168
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
