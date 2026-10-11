.class Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;
.super Ljava/lang/Thread;
.source "WechatAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->refreshToken(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

.field final synthetic val$isJustRefreshToken:Z


# direct methods
.method constructor <init>(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;Z)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    iput-boolean p2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->val$isJustRefreshToken:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 290
    invoke-static {}, Lcom/cmplay/sharebase/f;->a()Lcom/cmplay/sharebase/f;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v1}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$000(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/sharebase/f;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/cmplay/sharebase/f$a;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_0

    .line 293
    iget-object v2, v1, Lcom/cmplay/sharebase/f$a;->c:Ljava/lang/String;

    .line 294
    const-string v3, "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=%s&grant_type=refresh_token&refresh_token=%s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v5}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$000(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {}, Lcom/cmplay/sharebase/e;->a()Lcom/cmplay/sharebase/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmplay/sharebase/e;->d()Lcom/cmplay/sharebase/a/a;

    move-result-object v3

    .line 297
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->val$isJustRefreshToken:Z

    if-nez v0, :cond_0

    .line 299
    invoke-interface {v3, v8}, Lcom/cmplay/sharebase/a/a;->a(I)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v4, "errcode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    iget-boolean v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->val$isJustRefreshToken:Z

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$300(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)V

    goto :goto_0

    .line 308
    :cond_2
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 309
    const-string v2, "access_token"

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmplay/sharebase/f$a;->a:Ljava/lang/String;

    .line 310
    const-string v2, "refresh_token"

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmplay/sharebase/f$a;->c:Ljava/lang/String;

    .line 311
    const-string v2, "openid"

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmplay/sharebase/f$a;->d:Ljava/lang/String;

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v2, "expires_in"

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/cmplay/sharebase/f$a;->b:J

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/cmplay/sharebase/f$a;->f:J

    .line 314
    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v4}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$000(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lcom/cmplay/sharebase/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmplay/sharebase/f$a;)V

    .line 316
    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->val$isJustRefreshToken:Z

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/cmplay/sharebase/a/a;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 321
    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;->val$isJustRefreshToken:Z

    if-nez v0, :cond_0

    .line 322
    invoke-interface {v3, v8}, Lcom/cmplay/sharebase/a/a;->a(I)V

    goto :goto_0
.end method
