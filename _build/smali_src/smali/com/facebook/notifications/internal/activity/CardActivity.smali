.class public Lcom/facebook/notifications/internal/activity/CardActivity;
.super Landroid/app/Activity;
.source "CardActivity.java"

# interfaces
.implements Lcom/facebook/notifications/internal/view/a$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/notifications/internal/asset/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private e:Lcom/facebook/notifications/internal/content/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private f:Lcom/facebook/notifications/internal/a/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private g:Lcom/facebook/notifications/internal/view/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/facebook/notifications/internal/activity/CardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/notifications/internal/activity/CardActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/facebook/notifications/internal/activity/CardActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/notifications/internal/activity/CardActivity;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/notifications/internal/activity/CardActivity;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/activity/CardActivity;->a(Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V

    return-void
.end method

.method private a(Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V
    .locals 6

    .prologue
    .line 194
    new-instance v0, Lcom/facebook/notifications/internal/view/d;

    iget-object v2, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->d:Lcom/facebook/notifications/internal/asset/a;

    iget-object v3, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->e:Lcom/facebook/notifications/internal/content/a;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/notifications/internal/view/d;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/view/a$a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->g:Lcom/facebook/notifications/internal/view/d;

    .line 195
    iget-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->g:Lcom/facebook/notifications/internal/view/d;

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/activity/CardActivity;->setContentView(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method static synthetic b(Lcom/facebook/notifications/internal/activity/CardActivity;)Lcom/facebook/notifications/internal/asset/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->d:Lcom/facebook/notifications/internal/asset/a;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 148
    iget-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->c:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 149
    sget-object v0, Lcom/facebook/notifications/internal/activity/CardActivity;->a:Ljava/lang/String;

    const-string v1, "No card payload is available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 156
    iget-object v1, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->c:Lorg/json/JSONObject;

    const-string v2, "backdropColor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->a(Ljava/lang/String;)I

    move-result v1

    .line 158
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 161
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 162
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/facebook/notifications/internal/activity/CardActivity;->setContentView(Landroid/view/View;)V

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->c:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->d:Lcom/facebook/notifications/internal/asset/a;

    iget-object v2, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->c:Lorg/json/JSONObject;

    new-instance v3, Lcom/facebook/notifications/internal/activity/CardActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/notifications/internal/activity/CardActivity$1;-><init>(Lcom/facebook/notifications/internal/activity/CardActivity;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/notifications/internal/asset/a;->a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$c;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/notifications/internal/activity/CardActivity;)Lcom/facebook/notifications/internal/content/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->e:Lcom/facebook/notifications/internal/content/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/notifications/internal/view/ActionButton$a;Landroid/net/Uri;)V
    .locals 3
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    iget-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->f:Lcom/facebook/notifications/internal/a/a;

    iget-object v1, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/notifications/internal/a/a;->a(Lcom/facebook/notifications/internal/view/ActionButton$a;Ljava/lang/String;)V

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    const-string v1, "fb_notification_card_result"

    new-instance v2, Lcom/facebook/notifications/NotificationCardResult;

    invoke-direct {v2, p2}, Lcom/facebook/notifications/NotificationCardResult;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/notifications/internal/activity/CardActivity;->setResult(ILandroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/activity/CardActivity;->finish()V

    .line 215
    if-nez p2, :cond_0

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/activity/CardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    const-string v1, "fb_notification_card_result"

    new-instance v2, Lcom/facebook/notifications/NotificationCardResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/facebook/notifications/NotificationCardResult;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 202
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/notifications/internal/activity/CardActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/activity/CardActivity;->finish()V

    .line 204
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    new-instance v0, Lcom/facebook/notifications/internal/asset/a;

    invoke-direct {v0, p0}, Lcom/facebook/notifications/internal/asset/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->d:Lcom/facebook/notifications/internal/asset/a;

    .line 96
    new-instance v0, Lcom/facebook/notifications/internal/content/a;

    invoke-direct {v0, p0}, Lcom/facebook/notifications/internal/content/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->e:Lcom/facebook/notifications/internal/content/a;

    .line 97
    new-instance v0, Lcom/facebook/notifications/internal/a/a;

    invoke-direct {v0, p0}, Lcom/facebook/notifications/internal/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->f:Lcom/facebook/notifications/internal/a/a;

    .line 99
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/activity/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 100
    const-string v0, "fb_push_campaign"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->b:Ljava/lang/String;

    .line 102
    const-string v0, "fb_push_card_payload"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    const-string v0, "fb_push_card_configuration"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    .line 104
    const-string v2, "fb_push_card_asset_handlers"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 106
    array-length v6, v5

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v1, v5, v3

    .line 107
    instance-of v2, v1, Lcom/facebook/notifications/internal/utilities/AssetHandlerEntry;

    if-nez v2, :cond_0

    .line 106
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 112
    :cond_0
    :try_start_0
    check-cast v1, Lcom/facebook/notifications/internal/utilities/AssetHandlerEntry;

    .line 113
    invoke-virtual {v1}, Lcom/facebook/notifications/internal/utilities/AssetHandlerEntry;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/notifications/internal/asset/a$b;

    .line 115
    iget-object v7, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->d:Lcom/facebook/notifications/internal/asset/a;

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/utilities/AssetHandlerEntry;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/facebook/notifications/internal/asset/a;->a(Ljava/lang/String;Lcom/facebook/notifications/internal/asset/a$b;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    sget-object v2, Lcom/facebook/notifications/internal/activity/CardActivity;->a:Ljava/lang/String;

    const-string v7, "Error while instantiating asset handler"

    invoke-static {v2, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 118
    :catch_1
    move-exception v1

    .line 119
    sget-object v2, Lcom/facebook/notifications/internal/activity/CardActivity;->a:Ljava/lang/String;

    const-string v7, "Error while instantiating asset handler"

    invoke-static {v2, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 124
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->c:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 129
    :goto_2
    if-nez v0, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/facebook/notifications/internal/activity/CardActivity;->b()V

    .line 134
    :goto_3
    return-void

    .line 125
    :catch_2
    move-exception v1

    .line 126
    sget-object v2, Lcom/facebook/notifications/internal/activity/CardActivity;->a:Ljava/lang/String;

    const-string v3, "Error parsing JSON payload"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 132
    :cond_2
    invoke-direct {p0, v0}, Lcom/facebook/notifications/internal/activity/CardActivity;->a(Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    iget-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->d:Lcom/facebook/notifications/internal/asset/a;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/asset/a;->a()V

    .line 141
    iget-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->c:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->d:Lcom/facebook/notifications/internal/asset/a;

    iget-object v1, p0, Lcom/facebook/notifications/internal/activity/CardActivity;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/facebook/notifications/internal/asset/a;->b(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
