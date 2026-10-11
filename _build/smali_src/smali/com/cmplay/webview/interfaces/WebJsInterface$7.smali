.class Lcom/cmplay/webview/interfaces/WebJsInterface$7;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/interfaces/WebJsInterface;->hideWaitingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/webview/interfaces/WebJsInterface;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/interfaces/WebJsInterface;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$7;->a:Lcom/cmplay/webview/interfaces/WebJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$7;->a:Lcom/cmplay/webview/interfaces/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/webview/interfaces/WebJsInterface;->access$000(Lcom/cmplay/webview/interfaces/WebJsInterface;)Lcom/cmplay/webview/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$7;->a:Lcom/cmplay/webview/interfaces/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/webview/interfaces/WebJsInterface;->access$000(Lcom/cmplay/webview/interfaces/WebJsInterface;)Lcom/cmplay/webview/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/webview/a/a;->a()V

    .line 264
    :cond_0
    return-void
.end method
