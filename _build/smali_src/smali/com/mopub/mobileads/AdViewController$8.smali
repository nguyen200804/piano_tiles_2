.class Lcom/mopub/mobileads/AdViewController$8;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Lcom/mopub/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/common/ClientMetadata;)V
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
    .line 396
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$8;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 396
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController$8;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 400
    :try_start_0
    const-string v0, "ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 401
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 402
    new-instance v1, Ljava/lang/String;

    const-string v2, "html"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HB creative found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 405
    const-string v2, "Html-Response-Body"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v1, "Scrollable"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v1, "Redirect-Url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v1, "Clickthrough-Url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v1, "com_mopub_orientation"

    const-string v2, "p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v1, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {v1}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    .line 412
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$8;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/AdViewController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/network/AdResponse$Builder;->setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 413
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$8;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/network/AdResponse;)Lcom/mopub/network/AdResponse;

    .line 414
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController$8;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v1}, Lcom/mopub/mobileads/AdViewController;->h(Lcom/mopub/mobileads/AdViewController;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    const-string v2, "com.mopub.mobileads.HtmlInterstitial"

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mobileads/MoPubView;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 420
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    :goto_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$8;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/AdViewController;)V

    goto :goto_0

    .line 416
    :catch_1
    move-exception v0

    goto :goto_1
.end method
