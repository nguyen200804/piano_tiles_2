.class Lcom/cmplay/webview/interfaces/WebJsInterface$6;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/interfaces/WebJsInterface;->openApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/webview/interfaces/WebJsInterface;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$6;->b:Lcom/cmplay/webview/interfaces/WebJsInterface;

    iput-object p2, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$6;->b:Lcom/cmplay/webview/interfaces/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/webview/interfaces/WebJsInterface;->access$100(Lcom/cmplay/webview/interfaces/WebJsInterface;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 228
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$6;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$6;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cmplay/util/v;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$6$1;

    invoke-direct {v1, p0}, Lcom/cmplay/webview/interfaces/WebJsInterface$6$1;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    :cond_0
    return-void
.end method
