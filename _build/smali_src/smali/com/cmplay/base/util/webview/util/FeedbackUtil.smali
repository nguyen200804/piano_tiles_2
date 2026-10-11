.class public Lcom/cmplay/base/util/webview/util/FeedbackUtil;
.super Ljava/lang/Object;
.source "FeedbackUtil.java"


# static fields
.field public static final CN:I = 0x1

.field public static final OU:I = 0x2

.field public static final URL_CN:Ljava/lang/String; = "https://tuc.ijinshan.com/report"

.field public static final URL_OU:Ljava/lang/String; = "https://tuc.ksmobile.net/report"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeedbackUrl(I)Ljava/lang/String;
    .locals 1
    .param p0, "productId"    # I

    .prologue
    .line 27
    const-string v0, "https://tuc.ksmobile.net/report"

    .line 28
    packed-switch p0, :pswitch_data_0

    .line 38
    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    const-string v0, "https://tuc.ijinshan.com/report"

    goto :goto_0

    .line 33
    :pswitch_1
    const-string v0, "https://tuc.ksmobile.net/report"

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static postFeedback(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 51
    :cond_0
    sget v3, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mFeedbackAppId:I

    .line 52
    const-string v2, ""

    const-string v0, ""

    const-string v1, ""

    .line 54
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v1, "contact"

    const-string v6, ""

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    :try_start_1
    const-string v2, "feedback_id"

    sget v6, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mFeedbackAppId:I

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 57
    :try_start_2
    const-string v3, "feedback_msg"

    const-string v6, ""

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 61
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string v5, "app_id"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v2, "chanel"

    const-string v5, "0"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "type"

    const-string v5, "feedback"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v2, "model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "sysversion"

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v2, "uuid"

    invoke-static {v4}, Lcom/cmplay/base/util/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "version"

    invoke-static {v4}, Lcom/cmplay/base/util/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "contact"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "syslang"

    invoke-static {v4}, Lcom/cmplay/base/util/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n \u5305\u540d\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "content"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget v0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mFeedbackProductId:I

    invoke-static {v0}, Lcom/cmplay/base/util/webview/util/FeedbackUtil;->getFeedbackUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/cmplay/base/util/webview/util/NetworkUtil;->getInstance()Lcom/cmplay/base/util/webview/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/cmplay/base/util/webview/util/NetworkUtil;->post(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 58
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move v2, v3

    move-object v3, v7

    .line 59
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 58
    :catch_1
    move-exception v2

    move-object v7, v2

    move v2, v3

    move-object v3, v7

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2
.end method
