.class final Lcom/mnt/impl/f/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mnt/impl/f/o$c;

.field private synthetic b:Lcom/mnt/impl/f/o$a;


# direct methods
.method constructor <init>(Lcom/mnt/impl/f/o$c;Lcom/mnt/impl/f/o$a;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    iput-object p2, p0, Lcom/mnt/impl/f/q;->b:Lcom/mnt/impl/f/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 90
    iget-object v0, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    .line 1060
    iget-object v0, v0, Lcom/mnt/impl/f/o$c;->b:Landroid/webkit/WebView;

    .line 90
    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    .line 2060
    iget-object v2, v2, Lcom/mnt/impl/f/o$c;->a:Landroid/content/Context;

    .line 91
    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 3060
    iput-object v1, v0, Lcom/mnt/impl/f/o$c;->b:Landroid/webkit/WebView;

    .line 92
    iget-object v0, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    .line 4060
    iget-object v0, v0, Lcom/mnt/impl/f/o$c;->b:Landroid/webkit/WebView;

    .line 92
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 94
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    sget-object v1, Lcom/mnt/impl/e;->gt:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    .line 5060
    iget-object v0, v0, Lcom/mnt/impl/f/o$c;->b:Landroid/webkit/WebView;

    .line 97
    sget-object v1, Lcom/mnt/impl/e;->gu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    .line 6060
    iget-object v0, v0, Lcom/mnt/impl/f/o$c;->b:Landroid/webkit/WebView;

    .line 98
    sget-object v1, Lcom/mnt/impl/e;->gv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    .line 7060
    iget-object v0, v0, Lcom/mnt/impl/f/o$c;->b:Landroid/webkit/WebView;

    .line 99
    sget-object v1, Lcom/mnt/impl/e;->gw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    .line 8060
    iget-object v0, v0, Lcom/mnt/impl/f/o$c;->b:Landroid/webkit/WebView;

    .line 101
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 102
    iget-object v0, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    .line 9060
    iget-object v0, v0, Lcom/mnt/impl/f/o$c;->b:Landroid/webkit/WebView;

    .line 102
    new-instance v1, Lcom/mnt/impl/f/o$b;

    iget-object v2, p0, Lcom/mnt/impl/f/q;->b:Lcom/mnt/impl/f/o$a;

    .line 9325
    iget-object v2, v2, Lcom/mnt/impl/f/o$a;->b:Lcom/mnt/impl/f/o$a$a;

    .line 102
    new-instance v3, Lcom/mnt/impl/f/r;

    invoke-direct {v3, p0}, Lcom/mnt/impl/f/r;-><init>(Lcom/mnt/impl/f/q;)V

    invoke-direct {v1, v2, v3}, Lcom/mnt/impl/f/o$b;-><init>(Lcom/mnt/impl/f/o$a$a;Lcom/mnt/impl/f/o$b$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iget-object v0, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    .line 10060
    iget-object v0, v0, Lcom/mnt/impl/f/o$c;->b:Landroid/webkit/WebView;

    .line 109
    new-instance v1, Lcom/mnt/impl/f/s;

    invoke-direct {v1}, Lcom/mnt/impl/f/s;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 135
    iget-object v0, p0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    .line 11060
    iget-object v0, v0, Lcom/mnt/impl/f/o$c;->b:Landroid/webkit/WebView;

    .line 135
    iget-object v1, p0, Lcom/mnt/impl/f/q;->b:Lcom/mnt/impl/f/o$a;

    .line 11321
    iget-object v1, v1, Lcom/mnt/impl/f/o$a;->a:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    return-void
.end method
