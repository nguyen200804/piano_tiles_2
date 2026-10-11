.class Lcom/cmplay/base/util/webview/ui/WebJsInterface$4;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/ui/WebJsInterface;->registerShareCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

.field final synthetic val$callback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$4;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    iput-object p2, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$4;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$4;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->access$000(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$4;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->access$000(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$4;->val$callback:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;->shareCallBack(Ljava/lang/String;)V

    .line 306
    :cond_0
    return-void
.end method
