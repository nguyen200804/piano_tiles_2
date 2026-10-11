.class final Lcom/cmcm/orion/picks/webview/c$2;
.super Landroid/webkit/WebViewClient;
.source "ParseWebViewUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/webview/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/webview/c;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/webview/c;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 160
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->c(Lcom/cmcm/orion/picks/webview/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    invoke-static {p2}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/orion/picks/webview/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 170
    :goto_1
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v1}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/orion/picks/webview/e;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p2}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_1
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 112
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->c(Lcom/cmcm/orion/picks/webview/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->a(Lcom/cmcm/orion/picks/webview/c;)Z

    .line 128
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/orion/picks/webview/e;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p2}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v1}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 131
    :cond_3
    invoke-static {p2}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    if-eqz p1, :cond_4

    .line 133
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->a(Lcom/cmcm/orion/picks/webview/c;)Z

    .line 136
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/orion/picks/webview/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v1}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/orion/picks/webview/e;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p2}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v1}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 143
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->c(Lcom/cmcm/orion/picks/webview/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->a(Lcom/cmcm/orion/picks/webview/c;)Z

    .line 152
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/cmcm/orion/picks/webview/e;

    add-int/lit16 v3, p2, 0x7d0

    invoke-direct {v2, v3, p4}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/c$2;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v1}, Lcom/cmcm/orion/picks/webview/c;->d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
