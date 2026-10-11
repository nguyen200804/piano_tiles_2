.class Lcom/cmplay/base/util/webview/ui/WebJsInterface$5;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/ui/WebJsInterface;->closeLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

.field final synthetic val$activity:Lcom/cmplay/base/util/webview/ui/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;Lcom/cmplay/base/util/webview/ui/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$5;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    iput-object p2, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$5;->val$activity:Lcom/cmplay/base/util/webview/ui/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$5;->val$activity:Lcom/cmplay/base/util/webview/ui/WebViewActivity;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$5;->val$activity:Lcom/cmplay/base/util/webview/ui/WebViewActivity;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->getLayout()Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->hideLoadingView()V

    .line 361
    :cond_0
    return-void
.end method
