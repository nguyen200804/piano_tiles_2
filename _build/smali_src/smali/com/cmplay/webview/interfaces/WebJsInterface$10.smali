.class Lcom/cmplay/webview/interfaces/WebJsInterface$10;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/interfaces/WebJsInterface;->registerShareCallback(Ljava/lang/String;)V
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
    .line 435
    iput-object p1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$10;->b:Lcom/cmplay/webview/interfaces/WebJsInterface;

    iput-object p2, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$10;->b:Lcom/cmplay/webview/interfaces/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/webview/interfaces/WebJsInterface;->access$000(Lcom/cmplay/webview/interfaces/WebJsInterface;)Lcom/cmplay/webview/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$10;->b:Lcom/cmplay/webview/interfaces/WebJsInterface;

    invoke-static {v0}, Lcom/cmplay/webview/interfaces/WebJsInterface;->access$000(Lcom/cmplay/webview/interfaces/WebJsInterface;)Lcom/cmplay/webview/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$10;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cmplay/webview/a/a;->b(Ljava/lang/String;)V

    .line 441
    :cond_0
    return-void
.end method
