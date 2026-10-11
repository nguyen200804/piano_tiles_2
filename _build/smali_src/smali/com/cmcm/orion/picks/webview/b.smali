.class final Lcom/cmcm/orion/picks/webview/b;
.super Landroid/webkit/WebViewClient;
.source "BrowserWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/webview/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cmcm/orion/picks/webview/b$a;

.field private b:Lcom/cmcm/orion/picks/webview/PicksBrowser;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cmcm/orion/picks/webview/PicksBrowser;)V
    .locals 0
    .param p1    # Lcom/cmcm/orion/picks/webview/PicksBrowser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/cmcm/orion/picks/webview/b$a;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cmcm/orion/picks/webview/b;->a:Lcom/cmcm/orion/picks/webview/b$a;

    .line 89
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->browser_left_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->browser_right_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->browser_unleft_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->browser_unright_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 70
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->b()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->browser_unright_arrow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    :goto_0
    return v0

    .line 36
    :cond_0
    const-string v0, "market:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0, v3}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 38
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->a:Lcom/cmcm/orion/picks/webview/b$a;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->a:Lcom/cmcm/orion/picks/webview/b$a;

    invoke-interface {v0}, Lcom/cmcm/orion/picks/webview/b$a;->a()V

    :cond_1
    :goto_1
    move v0, v1

    .line 64
    goto :goto_0

    .line 41
    :cond_2
    const-string v0, "intent:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 44
    iget-object v2, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_3

    .line 45
    const-string v2, "browser_fallback_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v2, "market:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 49
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->a:Lcom/cmcm/orion/picks/webview/b$a;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->a:Lcom/cmcm/orion/picks/webview/b$a;

    invoke-interface {v0}, Lcom/cmcm/orion/picks/webview/b$a;->a()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 54
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v2, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->startActivity(Landroid/content/Intent;)V

    .line 55
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->finish()V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/b;->b:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->c()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
