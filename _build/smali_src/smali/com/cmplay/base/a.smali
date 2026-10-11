.class public abstract Lcom/cmplay/base/a;
.super Ljava/lang/Object;
.source "AbsPayAdapter.java"


# static fields
.field public static final sPublicSig:Ljava/lang/String; = "9b7acbd2re5207224435"


# instance fields
.field public mPriceRowCount:I

.field public socialId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x3

    iput v0, p0, Lcom/cmplay/base/a;->mPriceRowCount:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/cmplay/base/a;->socialId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Init()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public abstract asyncGetPrice(Ljava/lang/String;)V
.end method

.method public abstract asyncPurchase(Ljava/lang/String;)V
.end method

.method public asyncQueryOrders()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public asyncScreenPageSubsPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "appid"    # Ljava/lang/String;

    .prologue
    .line 45
    return-void
.end method

.method public asyncSubscribePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "appid"    # Ljava/lang/String;
    .param p5, "xId"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public consumeOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method

.method public getSubscribeInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method public getSubscribeState(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public abstract handleResult(IILandroid/content/Intent;)Z
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract onDestory()V
.end method

.method public abstract setPayCallback(Lcom/cmplay/base/d;)V
.end method

.method public setPriceRowCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/cmplay/base/a;->mPriceRowCount:I

    .line 31
    return-void
.end method

.method public setSocialId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSocialId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cmplay/base/a;->socialId:Ljava/lang/String;

    .line 34
    return-void
.end method
