.class public Lcom/cmplay/notification/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    new-instance v0, Lcom/cmplay/notification/NotificationReceiver$1;

    invoke-direct {v0, p0}, Lcom/cmplay/notification/NotificationReceiver$1;-><init>(Lcom/cmplay/notification/NotificationReceiver;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method
