.class final Lcom/cmcm/orion/picks/webview/PicksBrowser$2;
.super Landroid/webkit/WebChromeClient;
.source "PicksBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/webview/PicksBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/webview/PicksBrowser;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/webview/PicksBrowser;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser$2;->a:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser$2;->a:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser$2;->a:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->setProgress(I)V

    .line 136
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser$2;->a:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->d()Lcom/cmcm/orion/picks/impl/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser$2;->a:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a(Lcom/cmcm/orion/picks/webview/PicksBrowser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser$2;->a:Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->b(Lcom/cmcm/orion/picks/webview/PicksBrowser;)Z

    .line 140
    invoke-static {}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->d()Lcom/cmcm/orion/picks/impl/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/orion/picks/impl/a$a;->d_()V

    .line 143
    :cond_0
    return-void
.end method
