.class public Lcom/cmplay/tile2/ui/AccessTokenChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessTokenChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AccessToken;

    .line 29
    if-nez v0, :cond_1

    .line 30
    const-string v0, "AccessTokenReceiver"

    const-string v1, "facebook token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/cmplay/util/NativeUtil;->notifyTokenChangedOnGLThread(ILjava/lang/String;)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string v1, "AccessTokenReceiver"

    const-string v2, "facebook token is changend!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmplay/util/NativeUtil;->notifyTokenChangedOnGLThread(ILjava/lang/String;)V

    goto :goto_0
.end method
