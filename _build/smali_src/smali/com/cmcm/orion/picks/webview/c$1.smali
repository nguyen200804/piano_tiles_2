.class final Lcom/cmcm/orion/picks/webview/c$1;
.super Landroid/os/Handler;
.source "ParseWebViewUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/webview/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/webview/c;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/webview/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cmcm/orion/picks/webview/c$1;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$1;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->a(Lcom/cmcm/orion/picks/webview/c;)Z

    .line 67
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/c$1;->a:Lcom/cmcm/orion/picks/webview/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/cmcm/orion/picks/webview/e;

    invoke-static {v1, v0}, Lcom/cmcm/orion/picks/webview/c;->a(Lcom/cmcm/orion/picks/webview/c;Lcom/cmcm/orion/picks/webview/e;)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$1;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->b(Lcom/cmcm/orion/picks/webview/c;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c$1;->a:Lcom/cmcm/orion/picks/webview/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/c;->b(Lcom/cmcm/orion/picks/webview/c;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
