.class Lcom/cmplay/webview/interfaces/WebJsInterface$9;
.super Ljava/lang/Object;
.source "WebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/interfaces/WebJsInterface;->shareToFacebook(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmplay/webview/interfaces/WebJsInterface;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$9;->c:Lcom/cmplay/webview/interfaces/WebJsInterface;

    iput-object p2, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$9;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 403
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$9;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$9;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    .line 406
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/cmplay/webview/interfaces/WebJsInterface$9;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 407
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 408
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 410
    const-string v1, "img_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    :goto_0
    const-string v5, "https://fb.me/1651596795087685"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_1
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/h/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_0
    return-void

    .line 412
    :cond_1
    :try_start_1
    const-string v0, "title_halloween"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    const-string v0, "text_halloween"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 414
    const-string v0, "url_halloween"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
