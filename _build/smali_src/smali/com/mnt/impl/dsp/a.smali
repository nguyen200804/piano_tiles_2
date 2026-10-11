.class public final Lcom/mnt/impl/dsp/a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;


# direct methods
.method public constructor <init>(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v0}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->c(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Lcom/mnt/impl/dsp/c;

    move-result-object v0

    .line 4099
    iget v0, v0, Lcom/mnt/impl/dsp/c;->b:I

    .line 105
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v0}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->c(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Lcom/mnt/impl/dsp/c;

    move-result-object v0

    .line 4111
    iget-object v0, v0, Lcom/mnt/impl/dsp/c;->c:Ljava/lang/String;

    .line 107
    invoke-static {p2, v0}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v0}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->a(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Lcom/mnt/impl/dsp/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v2}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->b(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->a(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;J)J

    .line 88
    iget-object v0, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v0}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->c(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Lcom/mnt/impl/dsp/c;

    move-result-object v0

    .line 1115
    iget-object v0, v0, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 1165
    iget v0, v0, Lcom/mnt/impl/dsp/c$a;->c:I

    .line 89
    iget-object v1, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v1}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->c(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Lcom/mnt/impl/dsp/c;

    move-result-object v1

    .line 2115
    iget-object v1, v1, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 2157
    iget-object v1, v1, Lcom/mnt/impl/dsp/c$a;->d:Ljava/lang/String;

    .line 90
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v0}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->c(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Lcom/mnt/impl/dsp/c;

    move-result-object v0

    .line 3115
    iget-object v0, v0, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 3157
    iget-object v0, v0, Lcom/mnt/impl/dsp/c$a;->d:Ljava/lang/String;

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/mnt/impl/e/b;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/mnt/impl/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 93
    iget-object v2, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v2}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->d(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V

    .line 95
    new-instance v0, Lcom/mnt/impl/e/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v5}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->e(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v5, v1

    move-object v7, p2

    invoke-direct/range {v0 .. v12}, Lcom/mnt/impl/e/a;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;I)V

    .line 96
    iget-object v1, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v1}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->d(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mnt/impl/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mnt/impl/b/a;->a(Lcom/mnt/impl/e/a;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/dsp/a;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-static {v0}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->a(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)Lcom/mnt/impl/dsp/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mnt/impl/dsp/b;->a(Ljava/lang/String;)V

    .line 100
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
