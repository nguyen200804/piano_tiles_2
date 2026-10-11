.class public final Lcom/mopub/dg/e/a/a/i;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Landroid/content/Context;

.field i:I

.field private j:Landroid/webkit/WebView;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Landroid/os/Handler;

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mopub/dg/e/a/a/i;->c:Z

    iput-boolean v1, p0, Lcom/mopub/dg/e/a/a/i;->d:Z

    iput-boolean v1, p0, Lcom/mopub/dg/e/a/a/i;->e:Z

    iput-boolean v2, p0, Lcom/mopub/dg/e/a/a/i;->f:Z

    iput-boolean v1, p0, Lcom/mopub/dg/e/a/a/i;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/i;->h:Landroid/content/Context;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/mopub/dg/e/a/a/i;->m:I

    iput v1, p0, Lcom/mopub/dg/e/a/a/i;->i:I

    iput-object p2, p0, Lcom/mopub/dg/e/a/a/i;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/i;->h:Landroid/content/Context;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/i;->j:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/i;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/i;->j:Landroid/webkit/WebView;

    new-instance v1, Lcom/mopub/dg/e/a/a/j;

    invoke-direct {v1, p0}, Lcom/mopub/dg/e/a/a/j;-><init>(Lcom/mopub/dg/e/a/a/i;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/mopub/dg/e/a/a/k;

    invoke-direct {v0, p0}, Lcom/mopub/dg/e/a/a/k;-><init>(Lcom/mopub/dg/e/a/a/i;)V

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/i;->o:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/i;->j:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/i;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/i;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/i;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/i;->l:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/dg/e/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V

    :cond_0
    :try_start_0
    const-string v0, "http://adbsc.krmobi.com/dzzb"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "pkg"

    iget-object v3, p0, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "7"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adid"

    iget-object v3, p0, Lcom/mopub/dg/e/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/mopub/dg/e/a/a/i;->h:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lcom/mopub/dg/e/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/i;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getInstance(Landroid/content/Context;)Lcom/mopub/dg/adapi/DGAdApi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    const-string v1, "Preload_Start"

    iget-object v2, p0, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "Preload_Start"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/i;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/i;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/i;->o:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mopub/dg/e/a/a/i;->m:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/mopub/dg/d/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
