.class Lcom/facebook/notifications/internal/activity/CardActivity$1;
.super Ljava/lang/Object;
.source "CardActivity.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/notifications/internal/activity/CardActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/facebook/notifications/internal/activity/CardActivity;


# direct methods
.method constructor <init>(Lcom/facebook/notifications/internal/activity/CardActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/facebook/notifications/internal/activity/CardActivity$1;->b:Lcom/facebook/notifications/internal/activity/CardActivity;

    iput-object p2, p0, Lcom/facebook/notifications/internal/activity/CardActivity$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    :try_start_0
    new-instance v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    iget-object v1, p0, Lcom/facebook/notifications/internal/activity/CardActivity$1;->b:Lcom/facebook/notifications/internal/activity/CardActivity;

    invoke-static {v1}, Lcom/facebook/notifications/internal/activity/CardActivity;->a(Lcom/facebook/notifications/internal/activity/CardActivity;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/notifications/internal/activity/CardActivity$1;->b:Lcom/facebook/notifications/internal/activity/CardActivity;

    invoke-static {v2}, Lcom/facebook/notifications/internal/activity/CardActivity;->b(Lcom/facebook/notifications/internal/activity/CardActivity;)Lcom/facebook/notifications/internal/asset/a;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/notifications/internal/activity/CardActivity$1;->b:Lcom/facebook/notifications/internal/activity/CardActivity;

    invoke-static {v3}, Lcom/facebook/notifications/internal/activity/CardActivity;->c(Lcom/facebook/notifications/internal/activity/CardActivity;)Lcom/facebook/notifications/internal/content/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;-><init>(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    iget-object v1, p0, Lcom/facebook/notifications/internal/activity/CardActivity$1;->a:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/notifications/internal/activity/CardActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/notifications/internal/activity/CardActivity$1$1;-><init>(Lcom/facebook/notifications/internal/activity/CardActivity$1;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-static {}, Lcom/facebook/notifications/internal/activity/CardActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error while parsing JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
