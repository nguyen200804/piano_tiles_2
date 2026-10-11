.class public Lcom/cmplay/base/util/o;
.super Ljava/lang/Object;
.source "ParseUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/o$a;,
        Lcom/cmplay/base/util/o$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/cmplay/base/util/o$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/base/util/o;->b:Lcom/cmplay/base/util/o$b;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/base/util/o;->b:Lcom/cmplay/base/util/o$b;

    .line 50
    iput-object p1, p0, Lcom/cmplay/base/util/o;->a:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 142
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 143
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 145
    const-string v2, "getUserAgentString"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 147
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 147
    return-object v0

    .line 149
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/base/util/o;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/o;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/cmplay/base/util/o;->b:Lcom/cmplay/base/util/o$b;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/cmplay/base/util/o;->b:Lcom/cmplay/base/util/o$b;

    invoke-interface {v0, p1}, Lcom/cmplay/base/util/o$b;->a(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/cmplay/base/util/o;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/cmplay/base/util/o;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 127
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/cmplay/base/util/o;->a:Landroid/content/Context;

    const-string v1, "android.webkit.WebSettings"

    const-string v2, "android.webkit.WebView"

    invoke-direct {p0, v0, v1, v2}, Lcom/cmplay/base/util/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 130
    :try_start_2
    iget-object v0, p0, Lcom/cmplay/base/util/o;->a:Landroid/content/Context;

    const-string v1, "android.webkit.WebSettingsClassic"

    const-string v2, "android.webkit.WebViewClassic"

    invoke-direct {p0, v0, v1, v2}, Lcom/cmplay/base/util/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 131
    :catch_2
    move-exception v0

    .line 132
    new-instance v1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/cmplay/base/util/o;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 4

    .prologue
    const/16 v3, 0x2710

    .line 63
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 65
    const-string v1, "http.useragent"

    invoke-virtual {p0}, Lcom/cmplay/base/util/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 67
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 68
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 70
    new-instance v0, Lcom/cmplay/base/util/o$1;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/o$1;-><init>(Lcom/cmplay/base/util/o;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 83
    new-instance v2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 84
    const/4 v0, 0x0

    .line 86
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 90
    :catch_1
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_0

    .line 92
    :catch_2
    move-exception v1

    .line 93
    invoke-virtual {v1}, Ljava/net/ConnectException;->printStackTrace()V

    goto :goto_0

    .line 94
    :catch_3
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 96
    :catch_4
    move-exception v1

    .line 97
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 98
    :catch_5
    move-exception v1

    .line 99
    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;->printStackTrace()V

    goto :goto_0

    .line 100
    :catch_6
    move-exception v1

    .line 101
    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    goto :goto_0

    .line 102
    :catch_7
    move-exception v1

    .line 103
    invoke-virtual {v1}, Lorg/apache/http/NoHttpResponseException;->printStackTrace()V

    goto :goto_0

    .line 104
    :catch_8
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 106
    :catch_9
    move-exception v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 108
    :catch_a
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/cmplay/base/util/o$b;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmplay/base/util/o;->b:Lcom/cmplay/base/util/o$b;

    .line 58
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/cmplay/base/util/o$a;
    .locals 3

    .prologue
    .line 245
    new-instance v0, Lcom/cmplay/base/util/o$a;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/o$a;-><init>(Lcom/cmplay/base/util/o;)V

    .line 246
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/o$a;->c([Ljava/lang/Object;)Lcom/cmplay/base/util/c;

    .line 247
    return-object v0
.end method
