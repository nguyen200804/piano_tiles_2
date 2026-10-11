.class Lcom/cmplay/webview/interfaces/WebJsInterface$8;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/interfaces/WebJsInterface;->copyExchangeCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/cmplay/webview/interfaces/WebJsInterface;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$8;->b:Lcom/cmplay/webview/interfaces/WebJsInterface;

    iput-object p2, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$8;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$8;->a:Landroid/app/Activity;

    const v1, 0x7f05003f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    return-void
.end method
