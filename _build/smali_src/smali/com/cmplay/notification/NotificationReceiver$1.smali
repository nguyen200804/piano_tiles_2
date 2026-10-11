.class Lcom/cmplay/notification/NotificationReceiver$1;
.super Ljava/lang/Object;
.source "NotificationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/notification/NotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/notification/NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/cmplay/notification/NotificationReceiver;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cmplay/notification/NotificationReceiver$1;->a:Lcom/cmplay/notification/NotificationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "mys"

    const-string v1, "NotificationReceiver checkAndShowNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method
