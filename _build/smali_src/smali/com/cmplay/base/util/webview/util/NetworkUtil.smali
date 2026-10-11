.class public Lcom/cmplay/base/util/webview/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field public static final NATIVE_ERROR:I = 0x258

.field public static final SOCKET_TIMEOUT:I = 0x25a

.field private static final SO_SOCKET_TIMEOUT:I = 0x2710

.field public static final UNKNOWN_HOST:I = 0x259

.field private static sInstance:Lcom/cmplay/base/util/webview/util/NetworkUtil;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/base/util/webview/util/NetworkUtil;Lorg/apache/http/client/methods/HttpPost;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/util/NetworkUtil;
    .param p1, "x1"    # Lorg/apache/http/client/methods/HttpPost;
    .param p2, "x2"    # Ljava/util/HashMap;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/cmplay/base/util/webview/util/NetworkUtil;->addMultipartEntityToHttpPost(Lorg/apache/http/client/methods/HttpPost;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cmplay/base/util/webview/util/NetworkUtil;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/util/NetworkUtil;
    .param p1, "x1"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/webview/util/NetworkUtil;->closeHttpClientConnection(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    return-void
.end method

.method private addMultipartEntityToHttpPost(Lorg/apache/http/client/methods/HttpPost;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "m"    # Lorg/apache/http/client/methods/HttpPost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpPost;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_2
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized closeHttpClientConnection(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 129
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/cmplay/base/util/webview/util/NetworkUtil;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/cmplay/base/util/webview/util/NetworkUtil;->sInstance:Lcom/cmplay/base/util/webview/util/NetworkUtil;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lcom/cmplay/base/util/webview/util/NetworkUtil;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/cmplay/base/util/webview/util/NetworkUtil;->sInstance:Lcom/cmplay/base/util/webview/util/NetworkUtil;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/cmplay/base/util/webview/util/NetworkUtil;

    invoke-direct {v0}, Lcom/cmplay/base/util/webview/util/NetworkUtil;-><init>()V

    sput-object v0, Lcom/cmplay/base/util/webview/util/NetworkUtil;->sInstance:Lcom/cmplay/base/util/webview/util/NetworkUtil;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lcom/cmplay/base/util/webview/util/NetworkUtil;->sInstance:Lcom/cmplay/base/util/webview/util/NetworkUtil;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    .prologue
    const/16 v1, 0x2710

    .line 135
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 136
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 137
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 138
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 139
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 140
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/util/NetworkUtil;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 141
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 143
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    .line 147
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .line 149
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 150
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 151
    new-instance v0, Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory;

    invoke-direct {v0, p0, v2}, Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory;-><init>(Lcom/cmplay/base/util/webview/util/NetworkUtil;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 154
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 153
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public post(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/util/NetworkUtil;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;-><init>(Lcom/cmplay/base/util/webview/util/NetworkUtil;Ljava/lang/String;Ljava/util/HashMap;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
