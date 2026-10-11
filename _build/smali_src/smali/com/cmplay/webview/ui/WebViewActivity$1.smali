.class Lcom/cmplay/webview/ui/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/facebook/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/ui/WebViewActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/g",
        "<",
        "Lcom/facebook/login/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/webview/ui/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/ui/WebViewActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/cmplay/webview/ui/WebViewActivity$1;->a:Lcom/cmplay/webview/ui/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity$1;->a:Lcom/cmplay/webview/ui/WebViewActivity;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cmplay/webview/broadcast/GameBroadcast;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity$1;->a:Lcom/cmplay/webview/ui/WebViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewActivity;->a(Z)V

    .line 160
    return-void
.end method

.method public a(Lcom/facebook/i;)V
    .locals 3

    .prologue
    .line 167
    const-string v0, "unknow facebook login error!"

    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/facebook/i;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/cmplay/webview/ui/WebViewActivity$1;->a:Lcom/cmplay/webview/ui/WebViewActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/cmplay/webview/broadcast/GameBroadcast;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity$1;->a:Lcom/cmplay/webview/ui/WebViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewActivity;->a(Z)V

    .line 173
    return-void
.end method

.method public a(Lcom/facebook/login/f;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity$1;->a:Lcom/cmplay/webview/ui/WebViewActivity;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cmplay/webview/broadcast/GameBroadcast;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 151
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 147
    check-cast p1, Lcom/facebook/login/f;

    invoke-virtual {p0, p1}, Lcom/cmplay/webview/ui/WebViewActivity$1;->a(Lcom/facebook/login/f;)V

    return-void
.end method
