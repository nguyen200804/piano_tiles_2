.class public Lcom/cmplay/base/util/webview/encode/SnsSigCheck;
.super Ljava/lang/Object;
.source "SnsSigCheck.java"


# static fields
.field private static final CONTENT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final HMAC_ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field private static final TAG:Ljava/lang/String; = "SnsSigCheck"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static codePayValue(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 159
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    invoke-static {v1}, Lcom/cmplay/base/util/webview/encode/SnsSigCheck;->encodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method public static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/webview/encode/OpensnsException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Lcom/cmplay/base/util/webview/encode/OpensnsException;

    const/16 v2, 0x70c

    invoke-direct {v1, v2, v0}, Lcom/cmplay/base/util/webview/encode/OpensnsException;-><init>(ILjava/lang/Exception;)V

    throw v1
.end method

.method public static encodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v0, "[0-9a-zA-Z!*\\(\\)]"

    .line 176
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 182
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 184
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 185
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 188
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 189
    if-nez v5, :cond_0

    .line 190
    invoke-static {v1}, Lcom/cmplay/base/util/webview/encode/SnsSigCheck;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 206
    const-string v1, ""

    .line 207
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 209
    aget-byte v1, v2, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    return-object v1
.end method

.method public static makeSig(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url_path"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/webview/encode/OpensnsException;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x70c

    .line 65
    .line 68
    :try_start_0
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 70
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 74
    invoke-static {p0, p1, p2}, Lcom/cmplay/base/util/webview/encode/SnsSigCheck;->makeSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/encode/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lcom/cmplay/base/util/webview/encode/OpensnsException;

    invoke-direct {v1, v4, v0}, Lcom/cmplay/base/util/webview/encode/OpensnsException;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 86
    :catch_1
    move-exception v0

    .line 88
    new-instance v1, Lcom/cmplay/base/util/webview/encode/OpensnsException;

    invoke-direct {v1, v4, v0}, Lcom/cmplay/base/util/webview/encode/OpensnsException;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 90
    :catch_2
    move-exception v0

    .line 92
    new-instance v1, Lcom/cmplay/base/util/webview/encode/OpensnsException;

    invoke-direct {v1, v4, v0}, Lcom/cmplay/base/util/webview/encode/OpensnsException;-><init>(ILjava/lang/Exception;)V

    throw v1
.end method

.method public static makeSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/webview/encode/OpensnsException;
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 108
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/cmplay/base/util/webview/encode/SnsSigCheck;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 118
    aget-object v0, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v0, v2, v1

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    .line 122
    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/webview/encode/SnsSigCheck;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static verifySig(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url_path"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;
    .param p4, "sig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/webview/encode/OpensnsException;
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "sig"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p2}, Lcom/cmplay/base/util/webview/encode/SnsSigCheck;->codePayValue(Ljava/util/Map;)V

    .line 140
    invoke-static {p0, p1, p2, p3}, Lcom/cmplay/base/util/webview/encode/SnsSigCheck;->makeSig(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
