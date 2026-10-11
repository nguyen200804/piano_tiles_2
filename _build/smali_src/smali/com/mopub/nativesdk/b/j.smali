.class final Lcom/mopub/nativesdk/b/j;
.super Landroid/webkit/WebViewClient;
.source "WEngine.java"


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/b/h;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/b/h;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoadResource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageStarted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v0, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->d(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/o;->a()V

    .line 148
    iget-object v0, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->d(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/o;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativesdk/b/n;

    iget-object v2, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mopub/nativesdk/b/n;-><init>(Lcom/mopub/nativesdk/b/h;B)V

    invoke-static {}, Lcom/mopub/nativesdk/b/h;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mopub/nativesdk/b/o;->a(Ljava/lang/Runnable;J)V

    .line 150
    iget-object v0, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->e(Lcom/mopub/nativesdk/b/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0, p2}, Lcom/mopub/nativesdk/b/h;->b(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->e(Lcom/mopub/nativesdk/b/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0, p2}, Lcom/mopub/nativesdk/b/h;->b(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    :cond_1
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->d(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/o;->a()V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError: errno = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n onReceivedError\uff1a, description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failingUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v0, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceivedError: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", failingUrl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/mopub/nativesdk/b/h;->a(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 215
    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 218
    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shouldOverrideUrlLoading: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v2, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v2}, Lcom/mopub/nativesdk/b/h;->d(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/nativesdk/b/o;->a()V

    .line 1052
    invoke-static {p2}, Lcom/mopub/nativesdk/d/p;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/mopub/nativesdk/d/p;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/mopub/nativesdk/d/p;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 174
    :goto_0
    if-eqz v2, :cond_3

    .line 176
    invoke-static {p2}, Lcom/mopub/nativesdk/d/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v1, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "success"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p2, v2}, Lcom/mopub/nativesdk/b/h;->a(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 1052
    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->d(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/o;

    move-result-object v0

    new-instance v2, Lcom/mopub/nativesdk/b/n;

    iget-object v3, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    invoke-direct {v2, v3, v1}, Lcom/mopub/nativesdk/b/n;-><init>(Lcom/mopub/nativesdk/b/h;B)V

    invoke-static {}, Lcom/mopub/nativesdk/b/h;->a()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/mopub/nativesdk/b/o;->a(Ljava/lang/Runnable;J)V

    move v0, v1

    .line 181
    goto :goto_1

    .line 187
    :cond_3
    invoke-static {p2}, Lcom/mopub/nativesdk/d/p;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "success"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p2, v2}, Lcom/mopub/nativesdk/b/h;->a(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/mopub/nativesdk/b/j;->a:Lcom/mopub/nativesdk/b/h;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "unknow"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p2, v2}, Lcom/mopub/nativesdk/b/h;->a(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
