.class public Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;
.super Ljava/lang/Object;
.source "WechatAuth.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WechatAuth"

.field private static final URL_ACCESS_USER_INFO:Ljava/lang/String; = "https://api.weixin.qq.com/sns/userinfo?access_token=%s&openid=%s"

.field private static final URL_REFRESH_TOKEN:Ljava/lang/String; = "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=%s&grant_type=refresh_token&refresh_token=%s"

.field private static final URL_REQUEST_TOKEN:Ljava/lang/String; = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code"


# instance fields
.field private mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 41
    iput-object p1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mContext:Landroid/content/Context;

    .line 42
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 43
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 44
    iput-object p2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mAppKey:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mAppSecret:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->requestCode()V

    return-void
.end method

.method public static httpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "httpUrl"    # Ljava/lang/String;

    .prologue
    .line 249
    const-string v1, ""

    .line 251
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 255
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 256
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 259
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 260
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 261
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 264
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 265
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_1

    .line 267
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 269
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v5, 0x800

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 271
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 272
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    .line 282
    :goto_1
    return-object v0

    .line 274
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 275
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private requestCode()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "DL"

    const-string v1, " request code"

    invoke-static {v0, v1}, Lcom/cmplay/sharebase/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/cmplay/sharebase/e;->a()Lcom/cmplay/sharebase/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/sharebase/e;->d()Lcom/cmplay/sharebase/a/a;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lcom/cmplay/sharebase/a/a;->a()V

    .line 79
    :cond_0
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    .line 80
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 81
    const-string v1, "cmcm_piano_tiles2_for_gp"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public accessUserInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmplay/sharebase/a/d;)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "openid"    # Ljava/lang/String;
    .param p3, "resp"    # Lcom/cmplay/sharebase/a/d;

    .prologue
    .line 162
    new-instance v0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;-><init>(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;Ljava/lang/String;Ljava/lang/String;Lcom/cmplay/sharebase/a/d;)V

    invoke-virtual {v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$2;->start()V

    .line 239
    return-void
.end method

.method public authLogin()V
    .locals 6

    .prologue
    .line 52
    invoke-static {}, Lcom/cmplay/sharebase/f;->a()Lcom/cmplay/sharebase/f;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/sharebase/f;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/cmplay/sharebase/f$a;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->requestCode()V

    .line 68
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-wide v2, v0, Lcom/cmplay/sharebase/f$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->refreshToken()V

    .line 66
    :cond_1
    :goto_1
    const-string v1, "WechatAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unionid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/cmplay/sharebase/f$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmplay/sharebase/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Lcom/cmplay/sharebase/e;->a()Lcom/cmplay/sharebase/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/sharebase/e;->d()Lcom/cmplay/sharebase/a/a;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/cmplay/sharebase/a/a;->a(I)V

    goto :goto_1
.end method

.method public refreshToken()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->refreshToken(Z)V

    .line 152
    return-void
.end method

.method public refreshToken(Z)V
    .locals 1
    .param p1, "isJustRefreshToken"    # Z

    .prologue
    .line 287
    new-instance v0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$3;-><init>(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;Z)V

    .line 330
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 332
    return-void
.end method

.method public requestToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;-><init>(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method

.method public responseCode(Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;)V
    .locals 6
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 86
    invoke-static {}, Lcom/cmplay/sharebase/e;->a()Lcom/cmplay/sharebase/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/sharebase/e;->d()Lcom/cmplay/sharebase/a/a;

    move-result-object v0

    .line 87
    iget v1, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    packed-switch v1, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    const-string v0, "response code result :code %s,country %s,lang %s, state %s,url %s,openId %s "

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->country:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->lang:Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->state:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->openId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "WechatAuth"

    invoke-static {v1, v0}, Lcom/cmplay/sharebase/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->requestToken(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_2
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, v5}, Lcom/cmplay/sharebase/a/a;->a(I)V

    goto :goto_0

    .line 102
    :pswitch_3
    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, v4}, Lcom/cmplay/sharebase/a/a;->a(I)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
