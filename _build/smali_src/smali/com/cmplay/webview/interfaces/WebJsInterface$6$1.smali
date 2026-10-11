.class Lcom/cmplay/webview/interfaces/WebJsInterface$6$1;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/interfaces/WebJsInterface$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/webview/interfaces/WebJsInterface$6;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/interfaces/WebJsInterface$6;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$6$1;->a:Lcom/cmplay/webview/interfaces/WebJsInterface$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$6$1;->a:Lcom/cmplay/webview/interfaces/WebJsInterface$6;

    iget-object v0, v0, Lcom/cmplay/webview/interfaces/WebJsInterface$6;->b:Lcom/cmplay/webview/interfaces/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/webview/interfaces/WebJsInterface;->access$000(Lcom/cmplay/webview/interfaces/WebJsInterface;)Lcom/cmplay/webview/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$6$1;->a:Lcom/cmplay/webview/interfaces/WebJsInterface$6;

    iget-object v0, v0, Lcom/cmplay/webview/interfaces/WebJsInterface$6;->b:Lcom/cmplay/webview/interfaces/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/webview/interfaces/WebJsInterface;->access$000(Lcom/cmplay/webview/interfaces/WebJsInterface;)Lcom/cmplay/webview/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cmplay/webview/a/a;->a(I)V

    .line 236
    :cond_0
    return-void
.end method
