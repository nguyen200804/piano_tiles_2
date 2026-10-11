.class Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$1;
.super Ljava/lang/Object;
.source "MsgBoxNetworkStateViewFlipper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 39
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$1;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$1;->this$0:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->access$000(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)Z

    .line 44
    return-void
.end method
