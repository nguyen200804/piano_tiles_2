.class public Lcom/cmplay/util/WiredHeadStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiredHeadStateReceiver.java"


# static fields
.field public static a:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 21
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    sput-boolean v0, Lcom/cmplay/util/WiredHeadStateReceiver;->a:Z

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->notifyWiredHeadStateToNative(Z)V

    .line 38
    sput-boolean v1, Lcom/cmplay/util/WiredHeadStateReceiver;->a:Z

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 41
    invoke-static {v2}, Lcom/cmplay/util/NativeUtil;->notifyWiredHeadStateToNative(Z)V

    .line 42
    sput-boolean v2, Lcom/cmplay/util/WiredHeadStateReceiver;->a:Z

    goto :goto_0
.end method
