.class public Lcom/cmplay/base/util/webview/ui/WebJsInterface;
.super Ljava/lang/Object;
.source "WebJsInterface.java"


# static fields
.field public static final API_VERSION:Ljava/lang/String; = "api_version"

.field public static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final DEVICE_ID:Ljava/lang/String; = "did"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final IMEI:Ljava/lang/String; = "imei"


# instance fields
.field private mCallBack:Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;

.field private mContext:Landroid/content/Context;

.field private refActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmplay/base/util/webview/ui/WebJsInterface;-><init>(Landroid/app/Activity;Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mCallBack:Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mCallBack:Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public JumpToYoutube(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 408
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 409
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 412
    :cond_0
    return-void
.end method

.method public closeLoading()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;

    .line 352
    new-instance v1, Lcom/cmplay/base/util/webview/ui/WebJsInterface$5;

    invoke-direct {v1, p0, v0}, Lcom/cmplay/base/util/webview/ui/WebJsInterface$5;-><init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;Lcom/cmplay/base/util/webview/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public closeWebView()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 282
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 285
    :cond_1
    const-string v0, "ly"

    const-string v1, "webjs closeWebView"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public copyToClipboard(Ljava/lang/String;)V
    .locals 2
    .param p1, "exchangeCode"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 331
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    return-void
.end method

.method public createSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 236
    const-string v0, ""

    .line 242
    :goto_0
    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 239
    if-eqz v0, :cond_1

    .line 240
    invoke-static {v0, p1}, Lcom/cmplay/base/util/webview/encode/UrlEncoder;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public doH5Report(I)V
    .locals 0
    .param p1, "actionCode"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 231
    return-void
.end method

.method public getActDeviceInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/util/WebUtils;->createActDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-static {v0, p1}, Lcom/cmplay/base/util/webview/encode/UrlEncoder;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDeviceinfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/util/WebUtils;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 162
    const-string v0, ""

    return-object v0
.end method

.method public getFeedbackDeviceinfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/base/util/webview/util/WebUtils;->getFeedbackDeviceinfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_device_info()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    invoke-static {v0}, Lcom/cmplay/base/util/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const-string v0, ""

    .line 127
    :cond_0
    :try_start_0
    const-string v2, "app_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v0, "api_version"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v0, "did"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v0, "device_type"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v0, "imei"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public go2Google(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 146
    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/base/util/k;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method public hideWaitingView()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 192
    if-eqz v0, :cond_0

    .line 193
    new-instance v1, Lcom/cmplay/base/util/webview/ui/WebJsInterface$3;

    invoke-direct {v1, p0}, Lcom/cmplay/base/util/webview/ui/WebJsInterface$3;-><init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    :cond_0
    return-void
.end method

.method public isClickLike(I)Z
    .locals 1
    .param p1, "msgId"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public isGetExchangeCode(Z)V
    .locals 1
    .param p1, "isGetCode"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 222
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 223
    :cond_0
    return-void
.end method

.method public isInstallApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/base/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNewUser()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x2

    return v0
.end method

.method public isPkInstall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/base/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWifiAvailable()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/base/util/m;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public jumpToLevel(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 386
    const-string v0, "WebJsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpToLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 388
    if-eqz v0, :cond_0

    .line 389
    invoke-static {v0, p1}, Lcom/cmplay/base/util/webview/broadcast/GameBroadcast;->jumpToLevel(Landroid/content/Context;I)V

    .line 392
    :cond_0
    return-void
.end method

.method public login()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 106
    return-void
.end method

.method public openApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lcom/cmplay/base/util/webview/ui/WebJsInterface$2;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/base/util/webview/ui/WebJsInterface$2;-><init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/base/util/d;->a(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public openFacebook(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/base/util/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public postFeedbackData(Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;

    .line 338
    if-eqz v0, :cond_0

    .line 339
    const-string v1, "WebJsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postFeedbackData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {v0, p1}, Lcom/cmplay/base/util/webview/broadcast/GameBroadcast;->PostFeedbackData(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method

.method public registerLoginCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/cmplay/base/util/webview/ui/WebJsInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/base/util/webview/ui/WebJsInterface$1;-><init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerShareCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 299
    if-eqz v0, :cond_0

    .line 300
    new-instance v1, Lcom/cmplay/base/util/webview/ui/WebJsInterface$4;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/base/util/webview/ui/WebJsInterface$4;-><init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerStatusCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "backgroundCallback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 416
    const-string v0, "playable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebJsInterface.registerCloseCallback   js\u8fd4\u56de\u7684\u56de\u8c03\u5e94\u7528\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 421
    if-eqz v0, :cond_0

    .line 422
    new-instance v1, Lcom/cmplay/base/util/webview/ui/WebJsInterface$7;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/base/util/webview/ui/WebJsInterface$7;-><init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public reportLoginBtnClick()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 317
    return-void
.end method

.method public reportLoginBtnPV()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 313
    return-void
.end method

.method public saveEmailKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 156
    return-void
.end method

.method public saveGameLicenseFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "gamePkg"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/base/util/webview/util/WebUtils;->createGameLicenseFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public sendPrize(III)V
    .locals 3
    .param p1, "sence"    # I
    .param p2, "id"    # I
    .param p3, "count"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 396
    const-string v0, "WebJsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sence = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sendPrize id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 398
    if-eqz v0, :cond_0

    .line 399
    invoke-static {v0, p1, p2, p3}, Lcom/cmplay/base/util/webview/broadcast/GameBroadcast;->sendPrize(Landroid/content/Context;III)V

    .line 401
    :cond_0
    return-void
.end method

.method public shareToFacebook(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 291
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 369
    if-eqz v0, :cond_0

    .line 370
    new-instance v1, Lcom/cmplay/base/util/webview/ui/WebJsInterface$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/cmplay/base/util/webview/ui/WebJsInterface$6;-><init>(Lcom/cmplay/base/util/webview/ui/WebJsInterface;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 377
    :cond_0
    return-void
.end method
