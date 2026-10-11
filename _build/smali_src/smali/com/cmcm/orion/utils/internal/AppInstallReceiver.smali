.class public Lcom/cmcm/orion/utils/internal/AppInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v1

    .line 25
    if-nez v1, :cond_2

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/adsdk/e;->a(Landroid/content/Context;)Z

    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 33
    :cond_2
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_1
    invoke-static {}, Lcom/cmcm/orion/utils/internal/c;->a()Lcom/cmcm/orion/utils/internal/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/cmcm/orion/utils/internal/c;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->a()Lcom/cmcm/orion/utils/internal/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0

    .line 37
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 40
    :cond_4
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_2
    invoke-static {}, Lcom/cmcm/orion/utils/internal/c;->a()Lcom/cmcm/orion/utils/internal/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/utils/internal/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_5
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
