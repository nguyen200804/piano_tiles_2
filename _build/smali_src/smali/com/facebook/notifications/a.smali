.class public final Lcom/facebook/notifications/a;
.super Ljava/lang/Object;
.source "NotificationsManager.java"


# static fields
.field private static final a:Lcom/facebook/notifications/internal/utilities/f;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/notifications/internal/utilities/AssetHandlerEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/facebook/notifications/internal/utilities/f;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1, v2}, Lcom/facebook/notifications/internal/utilities/f;-><init>(III)V

    sput-object v0, Lcom/facebook/notifications/a;->a:Lcom/facebook/notifications/internal/utilities/f;

    .line 88
    const-class v0, Lcom/facebook/notifications/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/notifications/a;->b:Ljava/lang/String;

    .line 433
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/notifications/a;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)Landroid/content/Intent;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/asset/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/notifications/internal/content/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 101
    const-string v0, "fb_push_payload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "fb_push_card"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fb_push_payload"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    if-nez v2, :cond_1

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fb_push_card"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {v1}, Lcom/facebook/notifications/internal/a/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "version"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/notifications/internal/utilities/f;->a(Ljava/lang/String;)Lcom/facebook/notifications/internal/utilities/f;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_2

    sget-object v4, Lcom/facebook/notifications/a;->a:Lcom/facebook/notifications/internal/utilities/f;

    invoke-virtual {v1, v4}, Lcom/facebook/notifications/internal/utilities/f;->a(Lcom/facebook/notifications/internal/utilities/f;)I

    move-result v1

    if-lez v1, :cond_3

    .line 118
    :cond_2
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 121
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/facebook/notifications/internal/activity/CardActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v4, "fb_push_campaign"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v0, "fb_push_card_payload"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/Parcelable;

    .line 126
    sget-object v2, Lcom/facebook/notifications/a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 128
    const-string v2, "fb_push_card_asset_handlers"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 131
    new-instance v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-direct {v0, v3, p2, p3}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;-><init>(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)V

    .line 132
    const-string v2, "fb_push_card_configuration"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    move-object v0, v1

    .line 135
    goto :goto_0
.end method

.method public static a(IILandroid/content/Intent;)Lcom/facebook/notifications/NotificationCardResult;
    .locals 2
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 253
    const v1, 0xca4d

    if-eq p0, v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-object v0

    .line 256
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 260
    const-string v0, "fb_notification_card_result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/NotificationCardResult;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notification_push_payload_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 425
    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    .line 430
    :goto_0
    return v0

    .line 429
    :cond_0
    const v1, 0xca4d

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 430
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 169
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/facebook/notifications/a;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)Landroid/content/Intent;

    move-result-object v1

    .line 170
    if-nez v1, :cond_0

    .line 178
    :goto_0
    return v0

    .line 174
    :cond_0
    const v2, 0xca4d

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    sget-object v2, Lcom/facebook/notifications/a;->b:Ljava/lang/String;

    const-string v3, "Error while parsing JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
