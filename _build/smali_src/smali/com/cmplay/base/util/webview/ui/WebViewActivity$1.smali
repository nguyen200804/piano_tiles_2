.class Lcom/cmplay/base/util/webview/ui/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/ui/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/webview/ui/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/ui/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/webview/ui/WebViewActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity$1;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity$1;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewActivity;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->onBackPressed()V

    .line 77
    return-void
.end method
