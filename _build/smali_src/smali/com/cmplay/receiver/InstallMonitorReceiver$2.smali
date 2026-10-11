.class Lcom/cmplay/receiver/InstallMonitorReceiver$2;
.super Landroid/os/Handler;
.source "InstallMonitorReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/receiver/InstallMonitorReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/receiver/InstallMonitorReceiver;


# direct methods
.method constructor <init>(Lcom/cmplay/receiver/InstallMonitorReceiver;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cmplay/receiver/InstallMonitorReceiver$2;->a:Lcom/cmplay/receiver/InstallMonitorReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cmplay/receiver/InstallMonitorReceiver;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-static {}, Lcom/cmplay/d/a;->a()Lcom/cmplay/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/d/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/AppActivity;

    .line 61
    if-eqz v0, :cond_0

    .line 65
    iget-boolean v0, v0, Lcom/cmplay/tile2/ui/AppActivity;->a:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/cmplay/d/a;->a()Lcom/cmplay/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/d/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/cmplay/d/a;->a()Lcom/cmplay/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :cond_2
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/b/b;->e()V

    goto :goto_0
.end method
