.class final Lcom/mopub/dg/e/a/a/j;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/mopub/dg/e/a/a/i;


# direct methods
.method constructor <init>(Lcom/mopub/dg/e/a/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    iget-boolean v0, v0, Lcom/mopub/dg/e/a/a/i;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mopub/dg/e/a/a/i;->f:Z

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    iget-boolean v0, v0, Lcom/mopub/dg/e/a/a/i;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mopub/dg/e/a/a/i;->g:Z

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mopub/dg/e/a/a/i;->f:Z

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    iget v1, v1, Lcom/mopub/dg/e/a/a/i;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mopub/dg/e/a/a/i;->i:I

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    iget-boolean v0, v0, Lcom/mopub/dg/e/a/a/i;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    iput-boolean v4, v0, Lcom/mopub/dg/e/a/a/i;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    iput-boolean v3, v0, Lcom/mopub/dg/e/a/a/i;->f:Z

    if-nez p2, :cond_1

    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    if-eqz p2, :cond_6

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "play.google.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "market.android.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v4

    :goto_1
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    iput-boolean v4, v0, Lcom/mopub/dg/e/a/a/i;->e:Z

    iget-object v5, p0, Lcom/mopub/dg/e/a/a/j;->a:Lcom/mopub/dg/e/a/a/i;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v0, "&"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v1, ""

    const-string v0, ""

    move v2, v3

    :goto_2
    array-length v8, v7

    if-ge v2, v8, :cond_7

    aget-object v8, v7, v2

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    if-le v9, v4, :cond_4

    aget-object v9, v8, v3

    const-string v10, "id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    aget-object v1, v8, v4

    :cond_3
    const-string v10, "referrer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    aget-object v0, v8, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :try_start_0
    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v2

    invoke-virtual {v2, v1, p2, v0}, Lcom/mopub/dg/e/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/mopub/dg/e/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v5, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v5, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/mopub/dg/e/a/a/i;->d:Z

    const-string v0, "http://adbsc.krmobi.com/dzzb"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "pkg"

    iget-object v3, v5, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "8"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adid"

    iget-object v3, v5, Lcom/mopub/dg/e/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "jt"

    iget v3, v5, Lcom/mopub/dg/e/a/a/i;->i:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "refer"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/mopub/dg/e/a/a/i;->h:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lcom/mopub/dg/e/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V

    iget-object v0, v5, Lcom/mopub/dg/e/a/a/i;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getInstance(Landroid/content/Context;)Lcom/mopub/dg/adapi/DGAdApi;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    const-string v1, "Preload_Success"

    iget-object v2, v5, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "Preload_Success"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    :cond_a
    :goto_3
    move v3, v4

    goto/16 :goto_0

    :cond_b
    const-string v0, "http://adbsc.krmobi.com/dzzb"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "gpk"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpk"

    iget-object v3, v5, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v3, "1"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v5, Lcom/mopub/dg/e/a/a/i;->h:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v2}, Lcom/mopub/dg/e/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/mopub/dg/d/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_c
    if-eqz p1, :cond_d

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_d
    move v3, v4

    goto/16 :goto_0
.end method
