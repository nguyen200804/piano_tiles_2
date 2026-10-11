.class Lcom/cmplay/cloud/d$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/cloud/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/cloud/d;


# direct methods
.method constructor <init>(Lcom/cmplay/cloud/d;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cmplay/cloud/d$1;->a:Lcom/cmplay/cloud/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cmplay/cloud/d$1;->a:Lcom/cmplay/cloud/d;

    invoke-static {v0}, Lcom/cmplay/cloud/d;->a(Lcom/cmplay/cloud/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/cmplay/cloud/d$1;->a:Lcom/cmplay/cloud/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/cloud/d;->a(Lcom/cmplay/cloud/d;Z)Z

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 46
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 52
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    new-instance v1, Lcom/cmplay/cloud/d$1$1;

    invoke-direct {v1, p0}, Lcom/cmplay/cloud/d$1$1;-><init>(Lcom/cmplay/cloud/d$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmplay/tile2/GameApp;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
