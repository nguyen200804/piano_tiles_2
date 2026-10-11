.class Lcom/cmplay/internalpush/t$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/t;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/t;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmplay/internalpush/t$1;->a:Lcom/cmplay/internalpush/t;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cmplay/internalpush/t$1;->a:Lcom/cmplay/internalpush/t;

    invoke-static {v0}, Lcom/cmplay/internalpush/t;->a(Lcom/cmplay/internalpush/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/cmplay/internalpush/t$1;->a:Lcom/cmplay/internalpush/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/t;->a(Lcom/cmplay/internalpush/t;Z)Z

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "wifi"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 67
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/cmplay/internalpush/t$1;->a:Lcom/cmplay/internalpush/t;

    invoke-static {v0}, Lcom/cmplay/internalpush/t;->b(Lcom/cmplay/internalpush/t;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmplay/internalpush/t$1$1;

    invoke-direct {v1, p0}, Lcom/cmplay/internalpush/t$1$1;-><init>(Lcom/cmplay/internalpush/t$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
