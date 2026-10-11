.class public Lcom/cmplay/webview/broadcast/WebBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "WebBroadcast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    const-string v1, "com.cmplay.webview.broadcast.webbroadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "login_callback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :try_start_0
    const-string v0, "state"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ipc/a/b;->d(Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string v1, "com.cmplay.webview.broadcast.webbroadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "share_callback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    const-string v1, "com.cmplay.webview.broadcast.webbroadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "songlock_callback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 68
    const-string v0, "zzb"

    const-string v1, "onReceive------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/webview/ui/WebViewActivity;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewActivity;->b()Lcom/cmplay/webview/ui/WebViewLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "login_callback"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    sget-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/webview/ui/WebViewActivity;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewActivity;->b()Lcom/cmplay/webview/ui/WebViewLayout;

    move-result-object v0

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/webview/ipc/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewLayout;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "share_callback"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    sget-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/webview/ui/WebViewActivity;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewActivity;->b()Lcom/cmplay/webview/ui/WebViewLayout;

    move-result-object v0

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/webview/ipc/a/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewLayout;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "songlock_callback"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/webview/ui/WebViewActivity;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewActivity;->b()Lcom/cmplay/webview/ui/WebViewLayout;

    move-result-object v0

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/webview/ipc/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewLayout;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
