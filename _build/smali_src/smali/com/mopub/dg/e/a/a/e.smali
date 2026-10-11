.class public final Lcom/mopub/dg/e/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/webkit/WebView;

.field f:Z

.field g:Z

.field h:Landroid/widget/ProgressBar;

.field i:Landroid/view/WindowManager;

.field j:I

.field k:Landroid/os/Handler;

.field l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/mopub/dg/e/a/a/e;->g:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/mopub/dg/e/a/a/e;->j:I

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/e;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/dg/e/a/a/e;->f:Z

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/e;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/e;->e:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/mopub/dg/e/a/a/f;

    invoke-direct {v1, p0}, Lcom/mopub/dg/e/a/a/f;-><init>(Lcom/mopub/dg/e/a/a/e;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/dg/e/a/a/e;->h:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/e;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/e;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/mopub/dg/e/a/a/g;

    invoke-direct {v1, p0}, Lcom/mopub/dg/e/a/a/g;-><init>(Lcom/mopub/dg/e/a/a/e;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/mopub/dg/e/a/a/h;

    invoke-direct {v0, p0}, Lcom/mopub/dg/e/a/a/h;-><init>(Lcom/mopub/dg/e/a/a/e;)V

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/e;->l:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/mopub/dg/e/a/a/e;)V
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->i:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/e;->d:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_1
    return-void
.end method
