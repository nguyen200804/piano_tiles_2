.class Lcom/cmplay/receiver/InstallMonitorReceiver$1;
.super Ljava/lang/Object;
.source "InstallMonitorReceiver.java"

# interfaces
.implements Lcom/cmplay/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/receiver/InstallMonitorReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/receiver/InstallMonitorReceiver;


# direct methods
.method constructor <init>(Lcom/cmplay/receiver/InstallMonitorReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cmplay/receiver/InstallMonitorReceiver$1;->b:Lcom/cmplay/receiver/InstallMonitorReceiver;

    iput-object p2, p0, Lcom/cmplay/receiver/InstallMonitorReceiver$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cmplay/receiver/InstallMonitorReceiver$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->appInstallNotify(Ljava/lang/String;)V

    .line 40
    return-void
.end method
