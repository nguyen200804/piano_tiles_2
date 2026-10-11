.class Lcom/cmplay/webview/interfaces/WebJsInterface$3;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/interfaces/WebJsInterface;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmplay/webview/interfaces/WebJsInterface;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$3;->c:Lcom/cmplay/webview/interfaces/WebJsInterface;

    iput-object p2, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$3;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 598
    return-void
.end method
