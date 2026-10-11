.class Lcom/cmplay/base/util/webview/ui/WebJsInterface$2;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/ui/WebJsInterface;->openApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$2;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    iput-object p2, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$2;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->access$100(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 171
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$2;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->access$200(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/base/util/n;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 174
    :cond_0
    return-void
.end method
