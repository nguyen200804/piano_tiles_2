.class Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;
.super Ljava/lang/Object;
.source "MsgBoxNetworkStateViewFlipper.java"

# interfaces
.implements Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->registNetReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectingTimeOut()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->access$500(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V

    .line 123
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->toNoNetMode()V

    .line 124
    return-void
.end method

.method public onNetConnected()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->access$500(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V

    .line 115
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->access$600(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)Lcom/cmplay/base/util/webview/ui/IRequestLoad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->access$600(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)Lcom/cmplay/base/util/webview/ui/IRequestLoad;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/base/util/webview/ui/IRequestLoad;->load()V

    .line 118
    :cond_0
    return-void
.end method

.method public onNetConnecting()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->access$400(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V

    .line 110
    return-void
.end method

.method public onWifiDisabled()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->access$300(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V

    .line 105
    return-void
.end method

.method public onWifiEnabled()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->access$200(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V

    .line 100
    return-void
.end method
