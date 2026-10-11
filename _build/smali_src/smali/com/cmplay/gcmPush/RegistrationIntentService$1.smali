.class Lcom/cmplay/gcmPush/RegistrationIntentService$1;
.super Ljava/lang/Object;
.source "RegistrationIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/gcmPush/RegistrationIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/gcmPush/RegistrationIntentService;


# direct methods
.method constructor <init>(Lcom/cmplay/gcmPush/RegistrationIntentService;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cmplay/gcmPush/RegistrationIntentService$1;->a:Lcom/cmplay/gcmPush/RegistrationIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 49
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    .line 59
    const-string v2, "539372864957"

    const-string v3, "GCM"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v2, "RegIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GCM Registration Token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {v0}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmplay/h/b;->d()V

    .line 69
    iget-object v2, p0, Lcom/cmplay/gcmPush/RegistrationIntentService$1;->a:Lcom/cmplay/gcmPush/RegistrationIntentService;

    invoke-static {v2, v0}, Lcom/cmplay/gcmPush/RegistrationIntentService;->a(Lcom/cmplay/gcmPush/RegistrationIntentService;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/cmplay/gcmPush/RegistrationIntentService$1;->a:Lcom/cmplay/gcmPush/RegistrationIntentService;

    invoke-static {v2, v0}, Lcom/cmplay/gcmPush/RegistrationIntentService;->b(Lcom/cmplay/gcmPush/RegistrationIntentService;Ljava/lang/String;)V

    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "sentTokenToServer"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "registrationComplete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 88
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v2, "RegIntentService"

    const-string v3, "Failed to complete token refresh"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sentTokenToServer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
