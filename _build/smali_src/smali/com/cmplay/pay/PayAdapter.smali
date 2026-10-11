.class public Lcom/cmplay/pay/PayAdapter;
.super Lcom/cmplay/base/a;
.source "PayAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cmplay/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public Init()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->initInApp()Z

    .line 24
    return-void
.end method

.method public asyncGetPrice(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/pay/PayUtil;->getPriceJosn(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    return-void
.end method

.method public asyncPurchase(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/pay/PayUtil;->gotoGooglePlayPay(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public asyncQueryOrders()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->queryOrders()V

    .line 60
    return-void
.end method

.method public asyncScreenPageSubsPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "appid"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Lcom/google/pay/SubsPayUtil;->getInstance()Lcom/google/pay/SubsPayUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/pay/SubsPayUtil;->screenPageSubscribePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public asyncSubscribePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "appid"    # Ljava/lang/String;
    .param p5, "xid"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Lcom/google/pay/SubsPayUtil;->getInstance()Lcom/google/pay/SubsPayUtil;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/pay/SubsPayUtil;->subscribePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public consumeOrder(Ljava/lang/String;)V
    .locals 1
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/pay/PayUtil;->consumeOrder(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public getSubscribeInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {}, Lcom/google/pay/SubsPayUtil;->getInstance()Lcom/google/pay/SubsPayUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/pay/SubsPayUtil;->getSubscribeInfo(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public getSubscribeState(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lcom/google/pay/SubsPayUtil;->getInstance()Lcom/google/pay/SubsPayUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/pay/SubsPayUtil;->getSubscribeState(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public handleResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/pay/PayUtil;->handResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/pay/PayUtil;->init(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/pay/SubsPayUtil;->getInstance()Lcom/google/pay/SubsPayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/SubsPayUtil;->destroy()V

    .line 29
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->onDestroy()V

    .line 30
    return-void
.end method

.method public setPayCallback(Lcom/cmplay/base/d;)V
    .locals 1
    .param p1, "payCallback"    # Lcom/cmplay/base/d;

    .prologue
    .line 49
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/pay/PayUtil;->setPayCallback(Lcom/cmplay/base/d;)V

    .line 50
    return-void
.end method
