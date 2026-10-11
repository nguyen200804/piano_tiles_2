.class public Lcom/google/pay/util/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mIsAutoRenewing:Z

.field public mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "jsonPurchaseInfo"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/pay/util/Purchase;->mItemType:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/google/pay/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/pay/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/pay/util/Purchase;->mOrderId:Ljava/lang/String;

    .line 44
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/pay/util/Purchase;->mPackageName:Ljava/lang/String;

    .line 45
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/pay/util/Purchase;->mSku:Ljava/lang/String;

    .line 46
    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/pay/util/Purchase;->mPurchaseTime:J

    .line 47
    const-string v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/pay/util/Purchase;->mPurchaseState:I

    .line 48
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/pay/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 49
    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/pay/util/Purchase;->mToken:Ljava/lang/String;

    .line 50
    const-string v1, "autoRenewing"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/pay/util/Purchase;->mIsAutoRenewing:Z

    .line 51
    iput-object p3, p0, Lcom/google/pay/util/Purchase;->mSignature:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/pay/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/pay/util/Purchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/pay/util/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/pay/util/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/pay/util/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/pay/util/Purchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/pay/util/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/pay/util/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/pay/util/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/pay/util/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRenewing()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/pay/util/Purchase;->mIsAutoRenewing:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/pay/util/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method
