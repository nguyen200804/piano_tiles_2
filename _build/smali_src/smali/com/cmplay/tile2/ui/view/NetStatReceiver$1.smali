.class Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;
.super Landroid/os/Handler;
.source "NetStatReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/view/NetStatReceiver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/view/NetStatReceiver;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x3ec

    .line 56
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->b(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a(Lcom/cmplay/tile2/ui/view/NetStatReceiver;Z)Z

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 67
    :sswitch_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;->a()V

    goto :goto_0

    .line 70
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->removeMessages(I)V

    .line 71
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;->c()V

    goto :goto_0

    .line 75
    :sswitch_2
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->c(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)V

    goto :goto_0

    .line 78
    :sswitch_3
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;->d()V

    goto :goto_0

    .line 81
    :sswitch_4
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->d(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->c(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)V

    goto :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_3
    .end sparse-switch
.end method
