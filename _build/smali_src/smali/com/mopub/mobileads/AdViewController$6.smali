.class Lcom/mopub/mobileads/AdViewController$6;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Lcom/mopub/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/common/ClientMetadata;)V
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
.field final synthetic a:Lcom/mopub/common/ClientMetadata;

.field final synthetic b:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/common/ClientMetadata;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$6;->b:Lcom/mopub/mobileads/AdViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController$6;->a:Lcom/mopub/common/ClientMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 334
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController$6;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 338
    :try_start_0
    const-string v0, "mpconf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 339
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 340
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 341
    const-string v3, "key"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    const-string v4, "st"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    const-string v5, "et"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 344
    iget-object v6, p0, Lcom/mopub/mobileads/AdViewController$6;->a:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v6}, Lcom/mopub/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 345
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 346
    const-string v7, "pubid"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 347
    const-string v8, "appid"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    const-string v8, "HB Load Config: key: %s, st: %s, et: %s, last_gaid: %s, pubid: %s, appid: %s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    const/4 v10, 0x3

    aput-object v6, v9, v10

    const/4 v10, 0x4

    aput-object v7, v9, v10

    const/4 v10, 0x5

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 349
    const/16 v8, 0x10

    invoke-static {v4, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    if-gt v4, v8, :cond_1

    const/16 v4, 0x10

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 350
    const-string v4, "dg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController$6;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v4}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/AdViewController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v2}, Lcom/mopub/dg/adapi/DGAdApi;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$6;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/AdViewController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/dg/adapi/DGAdApi;->getInstance(Landroid/content/Context;)Lcom/mopub/dg/adapi/DGAdApi;

    move-result-object v2

    nop

    nop

    nop

    .line 354
    :cond_0
    const-string v2, "ark"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$6;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/AdViewController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/mopub/nativesdk/SDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 359
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 360
    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController$6;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v4}, Lcom/mopub/mobileads/AdViewController;->g(Lcom/mopub/mobileads/AdViewController;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 361
    const-string v5, "cf_expires"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 368
    :cond_2
    return-void
.end method
