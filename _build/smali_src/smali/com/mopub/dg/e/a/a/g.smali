.class final Lcom/mopub/dg/e/a/a/g;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/mopub/dg/e/a/a/e;


# direct methods
.method constructor <init>(Lcom/mopub/dg/e/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/g;->a:Lcom/mopub/dg/e/a/a/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/g;->a:Lcom/mopub/dg/e/a/a/e;

    invoke-static {v0}, Lcom/mopub/dg/e/a/a/e;->a(Lcom/mopub/dg/e/a/a/e;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const/high16 v6, 0x10000

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/mopub/dg/e/a/a/g;->a:Lcom/mopub/dg/e/a/a/e;

    invoke-static {p2}, Lcom/mopub/dg/e/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "https"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, v3, Lcom/mopub/dg/e/a/a/e;->f:Z

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/g;->a:Lcom/mopub/dg/e/a/a/e;

    iget-boolean v0, v0, Lcom/mopub/dg/e/a/a/e;->f:Z

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/mopub/dg/e/a/a/g;->a:Lcom/mopub/dg/e/a/a/e;

    invoke-static {p2}, Lcom/mopub/dg/e/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x800000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, v3, Lcom/mopub/dg/e/a/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v5, 0x10000

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.vending"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v3, Lcom/mopub/dg/e/a/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, v3, Lcom/mopub/dg/e/a/a/e;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_5
    move v1, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    if-nez v1, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, v3, Lcom/mopub/dg/e/a/a/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_8
    iget-boolean v0, v3, Lcom/mopub/dg/e/a/a/e;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/mopub/dg/e/a/a/e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/mopub/dg/e/a/a/e;->i:Landroid/view/WindowManager;

    iget-object v1, v3, Lcom/mopub/dg/e/a/a/e;->d:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_5
.end method
