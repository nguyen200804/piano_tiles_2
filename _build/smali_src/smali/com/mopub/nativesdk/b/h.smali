.class public final Lcom/mopub/nativesdk/b/h;
.super Ljava/lang/Object;
.source "WEngine.java"


# static fields
.field private static a:J


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/webkit/WebView;

.field private d:Lcom/mopub/nativesdk/b/a;

.field private e:Lcom/mopub/nativesdk/b/o;

.field private f:Lcom/mopub/nativesdk/b/m;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, 0x3a98

    sput-wide v0, Lcom/mopub/nativesdk/b/h;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativesdk/b/h;->b:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/mopub/nativesdk/b/a;

    invoke-direct {v0}, Lcom/mopub/nativesdk/b/a;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    .line 55
    new-instance v0, Lcom/mopub/nativesdk/b/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/nativesdk/b/o;-><init>(B)V

    iput-object v0, p0, Lcom/mopub/nativesdk/b/h;->e:Lcom/mopub/nativesdk/b/o;

    .line 56
    new-instance v0, Lcom/mopub/nativesdk/b/m;

    invoke-direct {v0}, Lcom/mopub/nativesdk/b/m;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativesdk/b/h;->f:Lcom/mopub/nativesdk/b/m;

    .line 57
    return-void
.end method

.method static synthetic a()J
    .locals 2

    .prologue
    .line 29
    sget-wide v0, Lcom/mopub/nativesdk/b/h;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 29
    .line 2127
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mopub/nativesdk/b/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/nativesdk/b/h;->c:Landroid/webkit/WebView;

    .line 2128
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 2129
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 2131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2132
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 2135
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 2136
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 2137
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->c:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2141
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/mopub/nativesdk/b/j;

    invoke-direct {v1, p0}, Lcom/mopub/nativesdk/b/j;-><init>(Lcom/mopub/nativesdk/b/h;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2221
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/mopub/nativesdk/b/k;

    invoke-direct {v1, p0}, Lcom/mopub/nativesdk/b/k;-><init>(Lcom/mopub/nativesdk/b/h;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2239
    :goto_0
    return-void

    .line 2233
    :catch_0
    move-exception v0

    .line 2234
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2235
    iget-object v1, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    monitor-enter v1

    .line 2236
    :try_start_1
    iget-object v2, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mopub/nativesdk/b/a;->c:Z

    .line 2237
    iget-object v2, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    iput-object v0, v2, Lcom/mopub/nativesdk/b/a;->b:Ljava/lang/Throwable;

    .line 2238
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 29
    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinish\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    iget-object v1, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    monitor-enter v1

    .line 2255
    :try_start_0
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    iget-boolean v0, v0, Lcom/mopub/nativesdk/b/a;->c:Z

    if-nez v0, :cond_1

    .line 2256
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mopub/nativesdk/b/a;->c:Z

    .line 2257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    iput-object p1, v0, Lcom/mopub/nativesdk/b/a;->a:Ljava/lang/String;

    .line 2260
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    iput-object p2, v0, Lcom/mopub/nativesdk/b/a;->b:Ljava/lang/Throwable;

    .line 2262
    new-instance v0, Lcom/mopub/nativesdk/b/l;

    invoke-direct {v0, p0}, Lcom/mopub/nativesdk/b/l;-><init>(Lcom/mopub/nativesdk/b/h;)V

    .line 3117
    invoke-static {v0}, Lcom/mopub/nativesdk/d/s;->b(Ljava/lang/Runnable;)V

    .line 2274
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/m;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->f:Lcom/mopub/nativesdk/b/m;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mopub/nativesdk/b/h;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/mopub/nativesdk/b/h;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/o;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->e:Lcom/mopub/nativesdk/b/o;

    return-object v0
.end method

.method static synthetic e(Lcom/mopub/nativesdk/b/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/nativesdk/b/a;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mopub/nativesdk/b/a;->c:Z

    .line 73
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    iput-object p1, v0, Lcom/mopub/nativesdk/b/a;->a:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mopub/nativesdk/b/a;->b:Ljava/lang/Throwable;

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextUtils.isEmpty(url) || TextUtils.isEmpty(html): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/mopub/nativesdk/b/a;->b:Ljava/lang/Throwable;

    .line 81
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    .line 113
    :goto_0
    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    iget-boolean v0, v0, Lcom/mopub/nativesdk/b/a;->c:Z

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->f:Lcom/mopub/nativesdk/b/m;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/m;->b()V

    .line 88
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lcom/mopub/nativesdk/b/i;

    invoke-direct {v0, p0, p2, p1}, Lcom/mopub/nativesdk/b/i;-><init>(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-static {v0}, Lcom/mopub/nativesdk/d/s;->b(Ljava/lang/Runnable;)V

    .line 111
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->f:Lcom/mopub/nativesdk/b/m;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/m;->a()V

    .line 113
    iget-object v0, p0, Lcom/mopub/nativesdk/b/h;->d:Lcom/mopub/nativesdk/b/a;

    goto :goto_0
.end method
