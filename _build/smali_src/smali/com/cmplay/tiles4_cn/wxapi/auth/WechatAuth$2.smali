.class Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;
.super Ljava/lang/Thread;
.source "WechatAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->accessUserInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmplay/sharebase/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$openid:Ljava/lang/String;

.field final synthetic val$resp:Lcom/cmplay/sharebase/a/d;


# direct methods
.method constructor <init>(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;Ljava/lang/String;Ljava/lang/String;Lcom/cmplay/sharebase/a/d;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    iput-object p2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$accessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$openid:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 165
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 166
    invoke-static {}, Lcom/cmplay/sharebase/f;->a()Lcom/cmplay/sharebase/f;

    move-result-object v1

    .line 167
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmplay/sharebase/f;->b(Landroid/content/Context;)J

    move-result-wide v2

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 170
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmplay/sharebase/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 173
    :cond_0
    const-string v0, "https://api.weixin.qq.com/sns/userinfo?access_token=%s&openid=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$accessToken:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$openid:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v1}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cmplay/wechat/R$string;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/cmplay/sharebase/a/d;->a(ZLjava/lang/String;)V

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v1}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cmplay/wechat/R$string;->data_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/cmplay/sharebase/a/d;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    const-string v0, "nickname"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/cmplay/wechat/R$string;->data_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/sharebase/a/d;->a(ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 230
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v1}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cmplay/wechat/R$string;->parse_json_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/cmplay/sharebase/a/d;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_4
    :try_start_1
    const-string v0, "unionid"

    const-string v4, ""

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    const-string v0, "headimgurl"

    const-string v5, ""

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 212
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "96"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 217
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 218
    const-string v6, "id"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v4, "name"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v3, "url"

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v0, "data"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cmplay/sharebase/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/cmplay/sharebase/f;->a(Landroid/content/Context;J)V

    .line 225
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->val$resp:Lcom/cmplay/sharebase/a/d;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/cmplay/sharebase/a/d;->a(ZLjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
