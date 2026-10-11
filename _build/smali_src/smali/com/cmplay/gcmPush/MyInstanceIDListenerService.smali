.class public Lcom/cmplay/gcmPush/MyInstanceIDListenerService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "MyInstanceIDListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "GCM_MyInstanceIDLS"

    const-string v1, "MyInstanceIDListenerService.onTokenRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/gcmPush/RegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/cmplay/gcmPush/MyInstanceIDListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    return-void
.end method
