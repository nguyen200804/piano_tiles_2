.class public Lcom/cmplay/webview/ui/WebViewEx;
.super Landroid/webkit/WebView;
.source "WebViewEx.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 18
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 19
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 20
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 38
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 39
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 40
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 28
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 29
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 30
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
