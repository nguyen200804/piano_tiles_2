.class public Lcom/cmplay/receiver/InstallMonitorServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallMonitorServiceReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 26
    if-nez p2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "key_gameproblem_isresume"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const-string v1, "card_install:"

    invoke-static {v1}, Lcom/cmplay/util/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v1, "scene_type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 45
    const-string v3, "reward_counts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 46
    const-string v4, "pkg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/cmplay/util/v;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    if-eq v1, v5, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    :cond_2
    if-lt v3, v5, :cond_0

    .line 52
    invoke-static {p1, v1, v3}, Lcom/cmplay/util/ac;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method
