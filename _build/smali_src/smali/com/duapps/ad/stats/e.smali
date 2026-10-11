.class public abstract Lcom/duapps/ad/stats/e;
.super Ljava/lang/Object;
.source "ToolClickHandlerBase.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static c:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field protected a:Landroid/os/Handler;

.field protected volatile b:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/Toast;

.field private f:Z

.field private g:Lcom/duapps/ad/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/e;->a:Landroid/os/Handler;

    .line 66
    :cond_0
    return-void
.end method

.method private a(Lcom/duapps/ad/stats/f;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 200
    const-string v4, "id"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    const-string v5, "id="

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 202
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-lez v5, :cond_2

    .line 204
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 205
    const-string v2, "(id=[^&]*)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 207
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    const-string v3, "BaseClickHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Url contains & :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-lez v5, :cond_1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direct url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 230
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 208
    goto :goto_0

    .line 213
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 215
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 216
    const-string v2, "?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 226
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 227
    const-string v3, "BaseClickHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Url contains & :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v5, :cond_8

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direct url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v2

    goto :goto_1

    .line 218
    :cond_4
    const-string v2, "?"

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    move v2, v0

    .line 219
    :goto_4
    if-eqz v2, :cond_6

    .line 220
    const-string v2, "id="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move v2, v1

    .line 218
    goto :goto_4

    .line 222
    :cond_6
    const-string v2, "&"

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_7

    const-string v2, "id="

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v2, "&id="

    goto :goto_5

    :cond_8
    move v0, v1

    .line 227
    goto :goto_3
.end method

.method static synthetic a(Lcom/duapps/ad/stats/e;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->e:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/stats/e;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/duapps/ad/stats/e;->e:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic b(Lcom/duapps/ad/stats/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 271
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    const-string v1, "http://market.android.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://market.android.com"

    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://play.google.com"

    .line 277
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://play.google.com"

    .line 278
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "market://"

    .line 279
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static declared-synchronized d()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    .prologue
    .line 283
    const-class v1, Lcom/duapps/ad/stats/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duapps/ad/stats/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/duapps/ad/stats/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :goto_0
    monitor-exit v1

    return-object v0

    .line 287
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 288
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 289
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 291
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 292
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 293
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 294
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 295
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0xfa0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 296
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.protocol.max-redirects"

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 297
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "compatibility"

    invoke-static {v2, v3}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    sget-object v3, Lcom/duapps/ad/base/i;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 299
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 300
    sput-object v0, Lcom/duapps/ad/stats/e;->c:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->g:Lcom/duapps/ad/e;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lcom/duapps/ad/e;->a()V

    .line 84
    :cond_0
    return-void
.end method

.method public a(Lcom/duapps/ad/e;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/duapps/ad/stats/e;->g:Lcom/duapps/ad/e;

    .line 77
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/duapps/ad/stats/e$1;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/stats/e$1;-><init>(Lcom/duapps/ad/stats/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/duapps/ad/stats/e;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->g:Lcom/duapps/ad/e;

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/duapps/ad/e;->b()V

    .line 91
    :cond_0
    return-void
.end method

.method protected b(Lcom/duapps/ad/stats/f;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "BaseClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Goto installed App: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/h;->b(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    .line 114
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/c/b/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "Network Error."

    invoke-virtual {p0, v0}, Lcom/duapps/ad/stats/e;->a(Ljava/lang/String;)V

    .line 127
    const-string v0, "BaseClickHandler"

    const-string v1, "Please check you network and try again."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected c(Lcom/duapps/ad/stats/f;)V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/stats/e;->a(Z)V

    .line 119
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "BaseClickHandler"

    const-string v1, "No network."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/stats/e;->c()V

    .line 123
    return-void
.end method

.method public declared-synchronized e()Z
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/duapps/ad/stats/e;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 1

    .prologue
    .line 313
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/duapps/ad/stats/e;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected f(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "BaseClickHandler"

    const-string v1, "An apk link."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/e;->g(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method protected g(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/high16 v6, 0x10000

    .line 137
    iget-boolean v0, p0, Lcom/duapps/ad/stats/e;->b:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "BaseClickHandler"

    const-string v1, "Has already report"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/stats/e;->b:Z

    .line 143
    if-nez p2, :cond_2

    .line 144
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const-string v0, "BaseClickHandler"

    const-string v1, "startBrowser: url is null"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/h;->c(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    .line 149
    const-string v0, "BaseClickHandler"

    const-string v1, "Please check you network and try again."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 158
    if-nez v1, :cond_4

    .line 160
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const-string v0, "BaseClickHandler"

    const-string v1, "Goto browser failed."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_3
    const-string v0, "No browser or Google Play installed"

    invoke-virtual {p0, v0}, Lcom/duapps/ad/stats/e;->a(Ljava/lang/String;)V

    .line 164
    const-string v0, "BaseClickHandler"

    const-string v1, "No browser or Google Play installed"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/h;->c(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    goto :goto_0

    .line 168
    :cond_4
    const-string v2, "BaseClickHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultInfo.activityInfo.packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 174
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 178
    const-string v7, "BaseClickHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "for loop browser : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", actInfo.packageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    :goto_1
    if-nez v0, :cond_7

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 186
    :cond_7
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 189
    const-string v0, "BaseClickHandler"

    const-string v1, "Goto browser"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_8
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 192
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/h;->d(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    .line 193
    invoke-virtual {p0}, Lcom/duapps/ad/stats/e;->f()V

    goto/16 :goto_0

    :cond_9
    move-object v0, v2

    goto :goto_1
.end method

.method protected h(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-boolean v0, p0, Lcom/duapps/ad/stats/e;->b:Z

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "BaseClickHandler"

    const-string v1, "Has already report"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/stats/e;->b:Z

    .line 240
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/stats/e;->a(Lcom/duapps/ad/stats/f;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 252
    :goto_1
    iget-object v1, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, p2, v3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    const-string v0, "com.android.vending"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    :try_start_1
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const-string v0, "BaseClickHandler"

    const-string v3, "Goto Play"

    invoke-static {v0, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 260
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/h;->e(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    const-string v1, "BaseClickHandler"

    const-string v3, "Goto Play failed:"

    invoke-static {v1, v3, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :cond_2
    iput-boolean v2, p0, Lcom/duapps/ad/stats/e;->b:Z

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/e;->g(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :catch_1
    move-exception v1

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 247
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/duapps/ad/stats/e;->d:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
