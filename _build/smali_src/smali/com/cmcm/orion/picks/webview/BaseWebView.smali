.class public Lcom/cmcm/orion/picks/webview/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# static fields
.field private static b:Z


# instance fields
.field protected a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmcm/orion/picks/webview/BaseWebView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/webview/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x13

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1063
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 2051
    :cond_0
    new-instance v0, Lcom/cmcm/orion/picks/webview/f;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/webview/f;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 31
    sget-boolean v0, Lcom/cmcm/orion/picks/webview/BaseWebView;->b:Z

    if-nez v0, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 2101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v9, :cond_1

    .line 2103
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2104
    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2108
    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2110
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2111
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2113
    const/16 v1, 0x7d5

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2114
    const v1, 0x1000018

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2117
    const/4 v1, -0x2

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2118
    const v1, 0x800033

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2119
    const-string v1, "window"

    invoke-virtual {v6, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2122
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :cond_1
    sput-boolean v8, Lcom/cmcm/orion/picks/webview/BaseWebView;->b:Z

    .line 36
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_3

    .line 37
    invoke-static {v8}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 52
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 55
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 56
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 59
    :cond_5
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/webview/BaseWebView;->a:Z

    .line 2127
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->removeAllViews()V

    .line 85
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 86
    return-void

    .line 2131
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2132
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
