.class Lcom/cmplay/webview/interfaces/WebJsInterface$11;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/interfaces/WebJsInterface;->closeLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/webview/ui/WebViewActivity;

.field final synthetic b:Lcom/cmplay/webview/interfaces/WebJsInterface;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Lcom/cmplay/webview/ui/WebViewActivity;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$11;->b:Lcom/cmplay/webview/interfaces/WebJsInterface;

    iput-object p2, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$11;->a:Lcom/cmplay/webview/ui/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$11;->a:Lcom/cmplay/webview/ui/WebViewActivity;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$11;->a:Lcom/cmplay/webview/ui/WebViewActivity;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewActivity;->b()Lcom/cmplay/webview/ui/WebViewLayout;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewLayout;->b()V

    .line 514
    :cond_0
    return-void
.end method
