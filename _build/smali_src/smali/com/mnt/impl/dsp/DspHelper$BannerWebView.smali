.class public Lcom/mnt/impl/dsp/DspHelper$BannerWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field public a:Lcom/mnt/impl/dsp/c;

.field private b:Lcom/mnt/impl/dsp/b;

.field private c:J

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mnt/impl/dsp/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->d:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->e:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->a:Lcom/mnt/impl/dsp/c;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;J)J
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->c:J

    return-wide p1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Lcom/mnt/impl/dsp/b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->b:Lcom/mnt/impl/dsp/b;

    return-object v0
.end method

.method static synthetic b(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->c:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 129
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    sget-object v2, Lcom/mnt/impl/e;->an:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    sget-object v2, Lcom/mnt/impl/e;->ao:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 138
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Lcom/mnt/impl/dsp/c;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->a:Lcom/mnt/impl/dsp/c;

    return-object v0
.end method

.method static synthetic d(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setOnWebViewClickListener(Lcom/mnt/impl/dsp/b;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->b:Lcom/mnt/impl/dsp/b;

    .line 69
    return-void
.end method
