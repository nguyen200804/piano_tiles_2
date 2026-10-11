.class Lcom/cmplay/base/util/webview/ui/WebViewLayout$1;
.super Ljava/lang/Object;
.source "WebViewLayout.java"

# interfaces
.implements Lcom/cmplay/base/util/webview/ui/IRequestLoad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/ui/WebViewLayout;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$1;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$1;->this$0:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->access$000(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)V

    .line 112
    return-void
.end method
