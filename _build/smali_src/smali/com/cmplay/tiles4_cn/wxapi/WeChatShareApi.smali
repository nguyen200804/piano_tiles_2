.class Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;
.super Ljava/lang/Object;
.source "WeChatShareApi.java"


# instance fields
.field private mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 33
    iput-object p1, p0, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public shareContent(Lcom/cmplay/sharebase/g;I)V
    .locals 4
    .param p1, "content"    # Lcom/cmplay/sharebase/g;
    .param p2, "sence"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "Wechat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check pkg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {v0}, Lcom/cmplay/sharebase/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 43
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 44
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 45
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/cmplay/sharebase/g;->d()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;-><init>()V

    .line 51
    iput-object v2, v3, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;

    .line 52
    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 55
    :cond_0
    iget-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    if-nez v2, :cond_1

    .line 56
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/cmplay/sharebase/g;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 58
    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/cmplay/sharebase/g;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-virtual {p1}, Lcom/cmplay/sharebase/g;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/cmplay/sharebase/g;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 66
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 67
    iput p2, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 70
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 72
    return-void
.end method
