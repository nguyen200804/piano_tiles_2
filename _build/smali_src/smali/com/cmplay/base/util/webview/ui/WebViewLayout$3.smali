.class Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/ui/WebViewLayout;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->access$100(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->showDataMode()V

    .line 159
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->showNetErrorMode()V

    .line 150
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->access$102(Lcom/cmplay/base/util/webview/ui/WebViewLayout;Z)Z

    .line 151
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->access$300(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->access$300(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 209
    :cond_0
    return-object v1

    .line 197
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->access$300(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->access$300(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->access$400(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/cmplay/base/util/webview/util/FileUtil;->isExistsUrlFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->access$400(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/cmplay/base/util/webview/util/FileUtil;->getUrlFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/cmplay/base/util/webview/util/FileUtil;->getUrlFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 166
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 172
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "http://"

    .line 176
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 181
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->access$200(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)Landroid/app/Activity;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 182
    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 188
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 185
    :catch_2
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1
.end method
