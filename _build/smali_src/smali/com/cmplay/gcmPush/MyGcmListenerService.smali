.class public Lcom/cmplay/gcmPush/MyGcmListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "MyGcmListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 112
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/gcmPush/MyGcmListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 116
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "default"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "push"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    .line 123
    :try_start_0
    const-string v1, "fb_push_card"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "alert"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 125
    const-string v1, "title"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    const-string v1, "title"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 128
    :goto_1
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const v6, 0x7f050026

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 132
    :goto_2
    :try_start_2
    const-string v2, "body"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    const-string v2, "body"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 146
    :goto_3
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 147
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f020135

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, -0xd4b29e

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v3, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 162
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/cmplay/gcmPush/MyGcmListenerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 163
    sget v2, Lcom/cmplay/notification/c;->c:I

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 135
    :cond_1
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 137
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 138
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 139
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 140
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 139
    :catch_2
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_5

    :catch_3
    move-exception v2

    goto :goto_5

    .line 137
    :catch_4
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_4

    :cond_2
    move-object v1, v2

    goto/16 :goto_2

    :cond_3
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private b(Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 172
    if-nez p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    invoke-static {p1}, Lcom/cmplay/gcmPush/a;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 177
    const-string v2, "key_push_campaign_id"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 189
    :cond_2
    if-nez v0, :cond_0

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "key_push_campaign_id"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    invoke-direct {p0, p2}, Lcom/cmplay/gcmPush/MyGcmListenerService;->b(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/h/b;->b()Lcom/facebook/appevents/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/appevents/a;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cmplay/gcmPush/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    invoke-static {p2}, Lcom/cmplay/gcmPush/a;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "function_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/h/b;->b()Lcom/facebook/appevents/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/appevents/a;->a(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0, v0}, Lcom/cmplay/gcmPush/MyGcmListenerService;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method
