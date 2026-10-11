.class public abstract Lcom/cmplay/internalpush/video/a/c;
.super Ljava/net/HttpURLConnection;
.source "VideoHttpUrlConnection.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/internalpush/video/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/cmplay/internalpush/video/a/c;->b:Ljava/lang/String;

    .line 54
    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/cmplay/internalpush/video/a/c;->a:Ljava/lang/String;

    .line 57
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x61a8

    .line 29
    invoke-static {p0}, Lcom/cmplay/internalpush/video/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is improperly encoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/cmplay/internalpush/video/a/c;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 42
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 45
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/cmplay/internalpush/video/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 47
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 49
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, ""

    .line 111
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/cmplay/internalpush/video/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is improperly encoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    invoke-static {p0}, Lcom/cmplay/internalpush/video/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {p0}, Lcom/cmplay/internalpush/video/a/c;->e(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 111
    :goto_1
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 119
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 133
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static e(Ljava/lang/String;)Ljava/net/URI;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 148
    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    throw v0
.end method
