.class public Lcom/cmplay/webview/interfaces/WebJsInterface;
.super Ljava/lang/Object;
.source "WebJsInterface.java"


# static fields
.field public static final API_VERSION:Ljava/lang/String; = "api_version"

.field public static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final DEVICE_ID:Ljava/lang/String; = "did"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final IMEI:Ljava/lang/String; = "imei"

.field private static final TYPE_COIN:I = 0x1

.field private static final TYPE_DIAMOND:I = 0x3

.field private static final TYPE_LIFE:I = 0x2


# instance fields
.field private mCallBack:Lcom/cmplay/webview/a/a;

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

.field vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmplay/webview/interfaces/WebJsInterface;-><init>(Landroid/app/Activity;Lcom/cmplay/webview/a/a;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/cmplay/webview/a/a;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/cmplay/webview/a/a;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    .line 79
    :cond_0
    iput-object p2, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->mCallBack:Lcom/cmplay/webview/a/a;

    .line 80
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->vibrator:Landroid/os/Vibrator;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/webview/interfaces/WebJsInterface;)Lcom/cmplay/webview/a/a;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/webview/interfaces/WebJsInterface;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->mCallBack:Lcom/cmplay/webview/a/a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmplay/webview/interfaces/WebJsInterface;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/webview/interfaces/WebJsInterface;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public closeLoading()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/webview/ui/WebViewActivity;

    .line 505
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$11;

    invoke-direct {v1, p0, v0}, Lcom/cmplay/webview/interfaces/WebJsInterface$11;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Lcom/cmplay/webview/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 516
    return-void
.end method

.method public closeWebView()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 381
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public copyExchangeCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "exchangeCode"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 301
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 304
    if-eqz v0, :cond_0

    .line 305
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$8;

    invoke-direct {v1, p0, v0}, Lcom/cmplay/webview/interfaces/WebJsInterface$8;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    :cond_0
    return-void
.end method

.method public copyToClipboard(Ljava/lang/String;)V
    .locals 2
    .param p1, "exchangeCode"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 480
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 482
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_0
    return-void
.end method

.method public createSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 337
    const-string v0, ""

    .line 343
    :goto_0
    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 340
    if-eqz v0, :cond_1

    .line 341
    invoke-static {v0, p1}, Lcom/cmplay/webview/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 343
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
    .line 332
    return-void
.end method

.method public getAccelerometerSensorValues()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 660
    const-string v0, ""

    .line 678
    :goto_0
    return-object v0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 663
    instance-of v1, v0, Lcom/cmplay/webview/ui/WebViewActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 666
    :cond_2
    check-cast v0, Lcom/cmplay/webview/ui/WebViewActivity;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewActivity;->c()Landroid/hardware/SensorEvent;

    move-result-object v0

    .line 667
    if-nez v0, :cond_3

    .line 668
    const-string v0, ""

    goto :goto_0

    .line 670
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 672
    :try_start_0
    const-string v2, "x"

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 673
    const-string v2, "y"

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 674
    const-string v2, "z"

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v0, v0, v3

    float-to-double v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 675
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 678
    const-string v0, ""

    goto :goto_0
.end method

.method public getActDeviceInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Lcom/cmplay/webview/d/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 368
    if-eqz v0, :cond_0

    .line 369
    invoke-static {v0, p1}, Lcom/cmplay/webview/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getBestScore(I)Ljava/lang/String;
    .locals 3
    .param p1, "mid"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 739
    if-gtz p1, :cond_0

    .line 740
    const-string v0, "0"

    .line 748
    :goto_0
    return-object v0

    .line 742
    :cond_0
    invoke-static {}, Lcom/cmplay/util/b/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/b/c;

    .line 744
    iget v2, v0, Lcom/cmplay/util/b/c;->b:I

    if-ne v2, p1, :cond_1

    .line 745
    iget v0, v0, Lcom/cmplay/util/b/c;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method public getDeviceinfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/cmplay/webview/d/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiamonds()I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 499
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "diamond_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEmailKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 219
    const-string v0, ""

    return-object v0
.end method

.method public getFeedbackDeviceinfo()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 494
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "feed_back_device_json"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicData()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 277
    const-string v0, ""

    return-object v0
.end method

.method public getTodayPlayTimes(I)I
    .locals 4
    .param p1, "mid"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 760
    invoke-static {p1}, Lcom/cmplay/util/NativeUtil;->getTodayPlayTimes(I)I

    move-result v0

    .line 761
    const-string v1, "JsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTodayPlayTimes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/webview/ipc/a/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_device_info()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 177
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 178
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 179
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/util/v;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    if-nez v0, :cond_0

    .line 181
    const-string v0, ""

    .line 184
    :cond_0
    :try_start_0
    const-string v2, "app_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v0, "api_version"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    const-string v0, "did"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v0, "device_type"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v0, "imei"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
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
    .line 201
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 203
    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 206
    :cond_0
    return-void
.end method

.method public gotoPage(ILjava/lang/String;)V
    .locals 1
    .param p1, "pageId"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 767
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/cmplay/webview/broadcast/GameBroadcast;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 768
    return-void
.end method

.method public hasAccelerometerSensor()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 650
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_0

    .line 652
    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    .line 734
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideWaitingView()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 257
    if-eqz v0, :cond_0

    .line 258
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$7;

    invoke-direct {v1, p0}, Lcom/cmplay/webview/interfaces/WebJsInterface$7;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 267
    :cond_0
    return-void
.end method

.method public initGameSound(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "soundData"    # Ljava/lang/String;
    .param p2, "callbackName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 605
    const/4 v1, 0x0

    .line 606
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 608
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 609
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 613
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 614
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 615
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_0

    .line 616
    const-string v8, ""

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 617
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 618
    invoke-static {v0, v8}, Lcom/cmplay/webview/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 623
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 628
    :cond_3
    :goto_2
    invoke-static {}, Lcom/cmplay/webview/c/a;->a()Lcom/cmplay/webview/c/a;

    move-result-object v0

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    new-instance v3, Lcom/cmplay/webview/interfaces/WebJsInterface$4;

    invoke-direct {v3, p0, p2}, Lcom/cmplay/webview/interfaces/WebJsInterface$4;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/cmplay/webview/c/a;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/cmplay/webview/c/a$a;)V

    .line 636
    return-void

    .line 625
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public isClickLike(I)Z
    .locals 1
    .param p1, "msgId"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public isGetExchangeCode(Z)V
    .locals 1
    .param p1, "isGetCode"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 322
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 323
    :cond_0
    return-void
.end method

.method public isInstallApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 472
    invoke-static {p1}, Lcom/cmplay/util/e;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLoginGameCenter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/webview/ipc/a/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public isNewUser()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x2

    return v0
.end method

.method public isPkInstall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/util/v;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSongUnlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "songIds"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 532
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/webview/broadcast/GameBroadcast;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 536
    if-eqz v0, :cond_0

    .line 537
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$12;

    invoke-direct {v1, p0, p2}, Lcom/cmplay/webview/interfaces/WebJsInterface$12;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 547
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isWifiAvailable()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/t;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public jumpToSongPage(Ljava/lang/String;)V
    .locals 2
    .param p1, "songId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 581
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    :try_start_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/webview/broadcast/GameBroadcast;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public login()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 164
    return-void
.end method

.method public openApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lcom/cmplay/webview/interfaces/WebJsInterface$6;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/webview/interfaces/WebJsInterface$6;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method public playSound(Ljava/lang/String;Ljava/lang/String;FI)Z
    .locals 3
    .param p1, "instrument"    # Ljava/lang/String;
    .param p2, "soundName"    # Ljava/lang/String;
    .param p3, "volume"    # F
    .param p4, "duration"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 640
    const-string v0, "mys"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play sound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {}, Lcom/cmplay/webview/c/a;->a()Lcom/cmplay/webview/c/a;

    move-result-object v0

    .line 642
    invoke-virtual {v0, p1, p2}, Lcom/cmplay/webview/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmplay/webview/c/a;->a(Ljava/lang/String;Ljava/lang/String;FI)Z

    move-result v0

    .line 645
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postFeedbackData(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 488
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "feed_back_json"

    invoke-virtual {v0, v1, p1}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/broadcast/GameBroadcast;->c(Landroid/content/Context;)V

    .line 490
    return-void
.end method

.method public queryMoney()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 689
    const-string v0, ""

    .line 706
    :goto_0
    return-object v0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 692
    instance-of v1, v0, Lcom/cmplay/webview/ui/WebViewActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 697
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 699
    :try_start_0
    const-string v1, "m"

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v2

    const-string v3, "coin_count"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 700
    const-string v1, "l"

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v2

    const-string v3, "life_count"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 701
    const-string v1, "d"

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v2

    const-string v3, "diamond_count"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :goto_1
    const-string v1, "ymymym"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryMoney : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 702
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public registerLoginCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 138
    if-eqz v0, :cond_0

    .line 139
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$5;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/webview/interfaces/WebJsInterface$5;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerReturnKeyCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "ymymym"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReturnKeyCallback  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/webview/interfaces/WebJsInterface$1;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerShareCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 434
    if-eqz v0, :cond_0

    .line 435
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$10;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/webview/interfaces/WebJsInterface$10;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public reportLoginBtnClick()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 464
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    invoke-static {v0}, Lcom/cmplay/webview/broadcast/GameBroadcast;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public reportLoginBtnPV()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 452
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    invoke-static {v0}, Lcom/cmplay/webview/broadcast/GameBroadcast;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public saveEmailKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 213
    return-void
.end method

.method public saveGameLicenseFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "gamePkg"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 348
    invoke-static {p1}, Lcom/cmplay/webview/d/d;->a(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public sendPrize(Ljava/lang/String;)V
    .locals 2
    .param p1, "prize"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 389
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-static {v0, p1}, Lcom/cmplay/webview/broadcast/GameBroadcast;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method public shareToFacebook(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 400
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/cmplay/webview/interfaces/WebJsInterface$9;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 425
    const-string v0, "ly"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareToFacebook = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 593
    if-eqz v0, :cond_0

    .line 594
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/cmplay/webview/interfaces/WebJsInterface$3;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 601
    :cond_0
    return-void
.end method

.method public songHasBeenPlayed(I)Z
    .locals 4
    .param p1, "mid"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 753
    invoke-static {p1}, Lcom/cmplay/util/q;->b(I)Z

    move-result v0

    .line 754
    const-string v1, "JsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "songHasBeenPlayed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return v0
.end method

.method public unlockSong(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 557
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/webview/broadcast/GameBroadcast;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->refActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 562
    if-eqz v0, :cond_0

    .line 563
    new-instance v1, Lcom/cmplay/webview/interfaces/WebJsInterface$2;

    invoke-direct {v1, p0, p2}, Lcom/cmplay/webview/interfaces/WebJsInterface$2;-><init>(Lcom/cmplay/webview/interfaces/WebJsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public vibrate(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 716
    :cond_0
    const-string v0, "ymymym"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrate  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 718
    const-string v1, "ymymym"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 720
    array-length v2, v1

    .line 721
    new-array v3, v2, [J

    .line 723
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 724
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/interfaces/WebJsInterface;->vibrator:Landroid/os/Vibrator;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method

.method public webJumpSongPage(III)V
    .locals 1
    .param p1, "songId"    # I
    .param p2, "moneyType"    # I
    .param p3, "moneyNum"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 520
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1, p3, p2}, Lcom/cmplay/webview/broadcast/GameBroadcast;->a(Landroid/content/Context;III)V

    .line 521
    return-void
.end method
