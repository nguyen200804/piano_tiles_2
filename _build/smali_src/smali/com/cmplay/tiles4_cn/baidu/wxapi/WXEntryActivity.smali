.class public Lcom/cmplay/tiles4_cn/baidu/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private a:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/cmplay/tiles4_cn/baidu/wxapi/WXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/sharebase/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/tiles4_cn/baidu/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 29
    iget-object v1, p0, Lcom/cmplay/tiles4_cn/baidu/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 30
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/baidu/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/cmplay/tiles4_cn/baidu/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 31
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/cmplay/tiles4_cn/baidu/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 37
    iget-object v0, p0, Lcom/cmplay/tiles4_cn/baidu/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 38
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 3
    .param p1, "baseReq"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 42
    const-string v0, "WXEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReq ,content is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 3
    .param p1, "baseResp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 47
    const-string v0, "WXEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResp ,result code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err string is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->getInstance()Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    .line 49
    invoke-virtual {p0}, Lcom/cmplay/tiles4_cn/baidu/wxapi/WXEntryActivity;->finish()V

    .line 50
    return-void
.end method
