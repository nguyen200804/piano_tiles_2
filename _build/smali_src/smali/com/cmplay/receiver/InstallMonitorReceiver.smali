.class public Lcom/cmplay/receiver/InstallMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallMonitorReceiver.java"


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/cmplay/receiver/InstallMonitorReceiver;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    new-instance v0, Lcom/cmplay/receiver/InstallMonitorReceiver$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cmplay/receiver/InstallMonitorReceiver$2;-><init>(Lcom/cmplay/receiver/InstallMonitorReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/receiver/InstallMonitorReceiver;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/cmplay/receiver/InstallMonitorReceiver;->a:I

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    if-nez p2, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/cmplay/receiver/InstallMonitorReceiver$1;

    invoke-direct {v1, p0, v0}, Lcom/cmplay/receiver/InstallMonitorReceiver$1;-><init>(Lcom/cmplay/receiver/InstallMonitorReceiver;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V

    .line 43
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/cmplay/receiver/InstallMonitorReceiver;->b:Landroid/os/Handler;

    sget v2, Lcom/cmplay/receiver/InstallMonitorReceiver;->a:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 45
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/cmplay/receiver/InstallMonitorReceiver;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
