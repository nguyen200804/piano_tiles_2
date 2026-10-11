.class Lcom/cmplay/base/util/webview/ui/WebJsInterface$6;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/ui/WebJsInterface;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$toast:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$6;->this$0:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    iput-object p2, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$6;->val$toast:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$6;->val$toast:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 374
    return-void
.end method
