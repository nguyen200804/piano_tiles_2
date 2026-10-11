.class Lcom/cmplay/webview/ui/WebViewLayout$4;
.super Ljava/lang/Object;
.source "WebViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/ui/WebViewLayout;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmplay/webview/ui/WebViewLayout;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/ui/WebViewLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/cmplay/webview/ui/WebViewLayout$4;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    iput-object p2, p0, Lcom/cmplay/webview/ui/WebViewLayout$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/webview/ui/WebViewLayout$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout$4;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    iget-object v0, v0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/webview/ui/WebViewLayout$4;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout$4;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    iget-object v0, v0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/webview/ui/WebViewLayout$4;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/webview/ui/WebViewLayout$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
