.class Lcom/cmplay/util/s$12;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/cmplay/util/s$12;->c:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$12;->a:I

    iput-object p3, p0, Lcom/cmplay/util/s$12;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 710
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v1

    .line 711
    if-eqz v1, :cond_0

    .line 713
    iget v0, p0, Lcom/cmplay/util/s$12;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 714
    const/4 v0, 0x3

    .line 721
    :goto_0
    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v2

    const-string v3, "feed_back_device_json"

    invoke-static {}, Lcom/cmplay/webview/d/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v2, p0, Lcom/cmplay/util/s$12;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/cmplay/webview/ui/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 724
    :cond_0
    return-void

    .line 716
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
