.class public Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;
.super Ljava/lang/Object;
.source "WechatHelper.java"

# interfaces
.implements Lcom/cmplay/sharebase/a/c;
.implements Lcom/cmplay/sharebase/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/tiles4_cn/wxapi/WechatHelper$1;,
        Lcom/cmplay/tiles4_cn/wxapi/WechatHelper$WechatHelperHolder;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/cmplay/sharebase/b/b;

.field private mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    .line 41
    iput-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mCallback:Lcom/cmplay/sharebase/b/b;

    .line 52
    invoke-static {}, Lcom/cmplay/sharebase/e;->a()Lcom/cmplay/sharebase/e;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Lcom/cmplay/sharebase/e;->a(Lcom/cmplay/sharebase/b/d;)V

    .line 54
    invoke-virtual {v0, p0}, Lcom/cmplay/sharebase/e;->a(Lcom/cmplay/sharebase/a/c;)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/cmplay/tiles4_cn/wxapi/WechatHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cmplay/tiles4_cn/wxapi/WechatHelper$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper$WechatHelperHolder;->INSTANCE:Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;

    return-object v0
.end method


# virtual methods
.method public auth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-direct {v0, p1, p2, p3}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-virtual {v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->authLogin()V

    .line 63
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 3
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    const/4 v1, 0x1

    .line 83
    const/4 v0, 0x3

    .line 84
    iget v2, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v2, :pswitch_data_0

    .line 91
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    check-cast p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    .end local p1    # "resp":Lcom/tencent/mm/sdk/modelbase/BaseResp;
    invoke-virtual {v0, p1}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->responseCode(Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;)V

    .line 103
    :cond_0
    :goto_1
    return-void

    .restart local p1    # "resp":Lcom/tencent/mm/sdk/modelbase/BaseResp;
    :pswitch_1
    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/cmplay/sharebase/e;->a()Lcom/cmplay/sharebase/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/sharebase/e;->c()Lcom/cmplay/sharebase/b/b;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1, v0}, Lcom/cmplay/sharebase/b/b;->a(I)V

    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShareWechat(Landroid/content/Context;Lcom/cmplay/sharebase/g;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Lcom/cmplay/sharebase/g;

    .prologue
    .line 27
    new-instance v0, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;

    invoke-direct {v0, p1}, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;->shareContent(Lcom/cmplay/sharebase/g;I)V

    .line 29
    return-void
.end method

.method public onShareWechatTimeline(Landroid/content/Context;Lcom/cmplay/sharebase/g;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Lcom/cmplay/sharebase/g;

    .prologue
    .line 33
    new-instance v0, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;

    invoke-direct {v0, p1}, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/cmplay/tiles4_cn/wxapi/WeChatShareApi;->shareContent(Lcom/cmplay/sharebase/g;I)V

    .line 35
    return-void
.end method

.method public refreshToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-direct {v0, p1, p2, p3}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    .line 70
    :cond_0
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-virtual {v1, v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->refreshToken(Z)V

    .line 72
    return-void
.end method

.method public requestUserInfo(Landroid/content/Context;Lcom/cmplay/sharebase/a/d;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resp"    # Lcom/cmplay/sharebase/a/d;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/cmplay/sharebase/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    if-nez v2, :cond_0

    .line 111
    invoke-static {v0}, Lcom/cmplay/sharebase/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v2, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-direct {v2, p1, v1, v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    .line 114
    :cond_0
    invoke-static {}, Lcom/cmplay/sharebase/f;->a()Lcom/cmplay/sharebase/f;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p1, v1}, Lcom/cmplay/sharebase/f;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/cmplay/sharebase/f$a;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->mWechatAuth:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    iget-object v2, v0, Lcom/cmplay/sharebase/f$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/cmplay/sharebase/f$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->accessUserInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmplay/sharebase/a/d;)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x0

    sget v1, Lcom/cmplay/wechat/R$string;->checked_not_login:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/cmplay/sharebase/a/d;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
