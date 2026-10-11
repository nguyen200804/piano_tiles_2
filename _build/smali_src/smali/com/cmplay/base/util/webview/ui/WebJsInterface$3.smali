.class Lcom/cmplay/base/util/webview/ui/WebJsInterface$3;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/ui/WebJsInterface;->hideWaitingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->access$000(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$3;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->access$000(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;->showWebView()V

    .line 199
    :cond_0
    return-void
.end method
