.class Lcom/mopub/mobileads/AdViewController$4;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Lcom/mopub/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdViewController;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 293
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController$4;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 297
    :try_start_0
    const-string v0, "conf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 298
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    const-string v1, "cfurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    const-string v1, "adurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    const-string v2, "enable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/AdViewController;Z)Z

    .line 301
    const-string v0, "AdUnit: %s\nUDID: %s\nConfig URL: %s\nHB URL: %s\nMEnabled: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    .line 302
    invoke-static {v3}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/AdViewController;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v3}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/AdViewController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v3}, Lcom/mopub/mobileads/AdViewController;->d(Lcom/mopub/mobileads/AdViewController;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v3}, Lcom/mopub/mobileads/AdViewController;->e(Lcom/mopub/mobileads/AdViewController;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v3}, Lcom/mopub/mobileads/AdViewController;->f(Lcom/mopub/mobileads/AdViewController;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 301
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->g(Lcom/mopub/mobileads/AdViewController;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x18

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 306
    const-string v1, "expires"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string v1, "enable"

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/AdViewController;->f(Lcom/mopub/mobileads/AdViewController;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 308
    const-string v1, "cf_url"

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/AdViewController;->d(Lcom/mopub/mobileads/AdViewController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    const-string v1, "hb_url"

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/AdViewController;->e(Lcom/mopub/mobileads/AdViewController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 311
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->f(Lcom/mopub/mobileads/AdViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/AdViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v1, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/common/ClientMetadata;)V

    .line 314
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v1, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/common/ClientMetadata;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$4;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/AdViewController;)V

    goto :goto_0
.end method
