.class public Lcom/google/pay/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;,
        Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE:I = 0x2

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE:I = -0x3f3

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionUpdateSupported:Z

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/google/pay/util/IabHelper;->mDebugLog:Z

    .line 75
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/google/pay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/google/pay/util/IabHelper;->mSetupDone:Z

    .line 81
    iput-boolean v1, p0, Lcom/google/pay/util/IabHelper;->mDisposed:Z

    .line 84
    iput-boolean v1, p0, Lcom/google/pay/util/IabHelper;->mSubscriptionsSupported:Z

    .line 87
    iput-boolean v1, p0, Lcom/google/pay/util/IabHelper;->mSubscriptionUpdateSupported:Z

    .line 91
    iput-boolean v1, p0, Lcom/google/pay/util/IabHelper;->mAsyncInProgress:Z

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/pay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/google/pay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 171
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 789
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 793
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 804
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 805
    rsub-int v0, p0, -0x3e8

    .line 806
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    .line 811
    :goto_0
    return-object v0

    .line 807
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 809
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 811
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 819
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_0
    return-void
.end method

.method consume(Lcom/google/pay/util/Purchase;)V
    .locals 5
    .param p1, "itemInfo"    # Lcom/google/pay/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/pay/util/IabException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 697
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 699
    iget-object v0, p1, Lcom/google/pay/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    new-instance v0, Lcom/google/pay/util/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/pay/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/pay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-virtual {p1}, Lcom/google/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 707
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 708
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 709
    new-instance v0, Lcom/google/pay/util/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/pay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    new-instance v1, Lcom/google/pay/util/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/pay/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 713
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 715
    if-nez v0, :cond_3

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 724
    return-void

    .line 718
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/google/pay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 719
    new-instance v2, Lcom/google/pay/util/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/pay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/google/pay/util/Purchase;Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/google/pay/util/Purchase;
    .param p2, "listener"    # Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 763
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/pay/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 767
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/pay/util/Purchase;",
            ">;",
            "Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 776
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/google/pay/util/Purchase;>;"
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 777
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/pay/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 779
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/pay/util/Purchase;",
            ">;",
            "Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1008
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/google/pay/util/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1009
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 1010
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/google/pay/util/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/pay/util/IabHelper$3;-><init>(Lcom/google/pay/util/IabHelper;Ljava/util/List;Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1039
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mSetupDone:Z

    .line 311
    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/pay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 315
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mDisposed:Z

    .line 316
    iput-object v2, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 317
    iput-object v2, p0, Lcom/google/pay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 318
    iput-object v2, p0, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 319
    iput-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 320
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 185
    iput-boolean p1, p0, Lcom/google/pay/util/IabHelper;->mDebugLog:Z

    .line 186
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 179
    iput-boolean p1, p0, Lcom/google/pay/util/IabHelper;->mDebugLog:Z

    .line 180
    iput-object p2, p0, Lcom/google/pay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 181
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/pay/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mAsyncInProgress:Z

    .line 865
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    iput-object p1, p0, Lcom/google/pay/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mAsyncInProgress:Z

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 825
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 826
    if-nez v0, :cond_0

    .line 827
    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 828
    const/4 v0, 0x0

    .line 830
    :goto_0
    return v0

    .line 829
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 830
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 832
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 834
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 840
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 841
    if-nez v0, :cond_0

    .line 842
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 843
    const/4 v0, 0x0

    .line 845
    :goto_0
    return v0

    .line 844
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 845
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 847
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 849
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getService()Lcom/android/vending/billing/IInAppBillingService;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 479
    iget v2, p0, Lcom/google/pay/util/IabHelper;->mRequestCode:I

    if-eq p1, v2, :cond_0

    .line 557
    :goto_0
    return v0

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 482
    const-string v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/google/pay/util/IabHelper;->flagEndAsync()V

    .line 487
    if-nez p3, :cond_2

    .line 488
    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 489
    new-instance v0, Lcom/google/pay/util/IabResult;

    const-string v2, "Null data in IAB result"

    invoke-direct {v0, v8, v2}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 490
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    :cond_1
    move v0, v1

    .line 491
    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {p0, p3}, Lcom/google/pay/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v2

    .line 495
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 496
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 498
    if-ne p2, v5, :cond_a

    if-nez v2, :cond_a

    .line 499
    const-string v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase data: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data signature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected item type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/pay/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 505
    if-eqz v3, :cond_3

    if-nez v4, :cond_5

    .line 506
    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 508
    new-instance v0, Lcom/google/pay/util/IabResult;

    const/16 v2, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_4

    .line 510
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    :cond_4
    move v0, v1

    .line 511
    goto/16 :goto_0

    .line 516
    :cond_5
    :try_start_0
    new-instance v2, Lcom/google/pay/util/Purchase;

    iget-object v5, p0, Lcom/google/pay/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v4}, Lcom/google/pay/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v2}, Lcom/google/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    .line 520
    iget-object v6, p0, Lcom/google/pay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lcom/google/pay/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 522
    new-instance v0, Lcom/google/pay/util/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signature verification failed for sku "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 523
    iget-object v3, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_6

    .line 524
    iget-object v3, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v3, v0, v2}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    :cond_6
    move v0, v1

    .line 525
    goto/16 :goto_0

    .line 527
    :cond_7
    const-string v3, "Purchase signature successfully verified."

    invoke-virtual {p0, v3}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    iget-object v3, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_8

    .line 538
    iget-object v3, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v4, Lcom/google/pay/util/IabResult;

    const-string v5, "Success"

    invoke-direct {v4, v0, v5}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v2}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    :cond_8
    :goto_1
    move v0, v1

    .line 557
    goto/16 :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    const-string v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 531
    new-instance v0, Lcom/google/pay/util/IabResult;

    const-string v2, "Failed to parse purchase data."

    invoke-direct {v0, v8, v2}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_9

    .line 533
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    :cond_9
    move v0, v1

    .line 534
    goto/16 :goto_0

    .line 540
    :cond_a
    if-ne p2, v5, :cond_b

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/google/pay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_8

    .line 544
    new-instance v0, Lcom/google/pay/util/IabResult;

    const-string v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 545
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    goto :goto_1

    .line 547
    :cond_b
    if-nez p2, :cond_c

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase canceled - Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/google/pay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 549
    new-instance v0, Lcom/google/pay/util/IabResult;

    const/16 v3, -0x3ed

    const-string v4, "User canceled."

    invoke-direct {v0, v2, v3, v4}, Lcom/google/pay/util/IabResult;-><init>(IILjava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    goto :goto_1

    .line 552
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase failed. Result code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/google/pay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 554
    new-instance v0, Lcom/google/pay/util/IabResult;

    const/16 v2, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    goto/16 :goto_1
.end method

.method public isAsyncInProgress()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mAsyncInProgress:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 357
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/pay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 362
    const-string v3, "inapp"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/pay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p5, "requestCode"    # I
    .param p6, "listener"    # Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p7, "extraData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "oldSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 397
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 398
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 399
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 402
    const-string v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Lcom/google/pay/util/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/google/pay/util/IabHelper;->flagEndAsync()V

    .line 406
    if-eqz p6, :cond_0

    invoke-interface {p6, v0, v7}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructing buy intent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 413
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 429
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v1

    .line 430
    if-eqz v1, :cond_5

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/google/pay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/google/pay/util/IabHelper;->flagEndAsync()V

    .line 433
    new-instance v0, Lcom/google/pay/util/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 434
    if-eqz p6, :cond_0

    const/4 v1, 0x0

    invoke-interface {p6, v0, v1}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 450
    invoke-virtual {p0}, Lcom/google/pay/util/IabHelper;->flagEndAsync()V

    .line 452
    new-instance v0, Lcom/google/pay/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 453
    if-eqz p6, :cond_0

    invoke-interface {p6, v0, v7}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    goto/16 :goto_0

    .line 419
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mSubscriptionUpdateSupported:Z

    if-nez v0, :cond_4

    .line 420
    new-instance v0, Lcom/google/pay/util/IabResult;

    const/16 v1, -0x3f3

    const-string v2, "Subscription updates are not available."

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/google/pay/util/IabHelper;->flagEndAsync()V

    .line 423
    if-eqz p6, :cond_0

    const/4 v1, 0x0

    invoke-interface {p6, v0, v1}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 454
    :catch_1
    move-exception v0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 457
    invoke-virtual {p0}, Lcom/google/pay/util/IabHelper;->flagEndAsync()V

    .line 459
    new-instance v0, Lcom/google/pay/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 460
    if-eqz p6, :cond_0

    invoke-interface {p6, v0, v7}, Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V

    goto/16 :goto_0

    .line 426
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 438
    :cond_5
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 440
    iput p5, p0, Lcom/google/pay/util/IabHelper;->mRequestCode:I

    .line 441
    iput-object p6, p0, Lcom/google/pay/util/IabHelper;->mPurchaseListener:Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 442
    iput-object p3, p0, Lcom/google/pay/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 443
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_2
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 367
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/pay/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 372
    const-string v3, "subs"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/pay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/google/pay/util/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/pay/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/pay/util/IabException;
        }
    .end annotation

    .prologue
    .line 561
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/pay/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/google/pay/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/google/pay/util/Inventory;
    .locals 4
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/pay/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/pay/util/IabException;
        }
    .end annotation

    .prologue
    .line 579
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 580
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 582
    :try_start_0
    new-instance v0, Lcom/google/pay/util/Inventory;

    invoke-direct {v0}, Lcom/google/pay/util/Inventory;-><init>()V

    .line 583
    const-string v1, "inapp"

    invoke-virtual {p0, v0, v1}, Lcom/google/pay/util/IabHelper;->queryPurchases(Lcom/google/pay/util/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 584
    if-eqz v1, :cond_0

    .line 585
    new-instance v0, Lcom/google/pay/util/IabException;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 611
    :catch_0
    move-exception v0

    .line 612
    new-instance v1, Lcom/google/pay/util/IabException;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/google/pay/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 588
    :cond_0
    if-eqz p1, :cond_1

    .line 589
    :try_start_1
    const-string v1, "inapp"

    invoke-virtual {p0, v1, v0, p2}, Lcom/google/pay/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/google/pay/util/Inventory;Ljava/util/List;)I

    move-result v1

    .line 590
    if-eqz v1, :cond_1

    .line 591
    new-instance v0, Lcom/google/pay/util/IabException;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 613
    :catch_1
    move-exception v0

    .line 614
    new-instance v1, Lcom/google/pay/util/IabException;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/google/pay/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 596
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/google/pay/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v1, :cond_3

    .line 597
    const-string v1, "subs"

    invoke-virtual {p0, v0, v1}, Lcom/google/pay/util/IabHelper;->queryPurchases(Lcom/google/pay/util/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 598
    if-eqz v1, :cond_2

    .line 599
    new-instance v0, Lcom/google/pay/util/IabException;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 602
    :cond_2
    if-eqz p1, :cond_3

    .line 603
    const-string v1, "subs"

    invoke-virtual {p0, v1, v0, p3}, Lcom/google/pay/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/google/pay/util/Inventory;Ljava/util/List;)I

    move-result v1

    .line 604
    if-eqz v1, :cond_3

    .line 605
    new-instance v0, Lcom/google/pay/util/IabException;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 610
    :cond_3
    return-object v0
.end method

.method public queryInventoryAsync(Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/google/pay/util/IabHelper;->isAsyncInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/pay/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 677
    :cond_0
    return-void
.end method

.method public queryInventoryAsync(ZLcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/google/pay/util/IabHelper;->isAsyncInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/pay/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 683
    :cond_0
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 644
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 645
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 646
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 647
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 648
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/google/pay/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/pay/util/IabHelper$2;-><init>(Lcom/google/pay/util/IabHelper;ZLjava/util/List;Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 671
    return-void
.end method

.method queryPurchases(Lcom/google/pay/util/Inventory;Ljava/lang/String;)I
    .locals 13
    .param p1, "inv"    # Lcom/google/pay/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 876
    const/4 v0, 0x0

    move v1, v3

    .line 879
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 880
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    if-nez v2, :cond_3

    :cond_0
    move v4, v6

    .line 934
    :cond_1
    if-eqz v4, :cond_2

    const/16 v3, -0x3eb

    :cond_2
    :goto_1
    return v3

    .line 884
    :cond_3
    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, p2, v0}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 887
    invoke-virtual {p0, v7}, Lcom/google/pay/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Owned items response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 889
    if-eqz v0, :cond_4

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/pay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    move v3, v0

    .line 891
    goto :goto_1

    .line 893
    :cond_4
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 896
    :cond_5
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 897
    const/16 v3, -0x3ea

    goto :goto_1

    .line 900
    :cond_6
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 902
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 904
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    move v5, v3

    move v4, v1

    .line 907
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    .line 908
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 909
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 910
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 911
    iget-object v11, p0, Lcom/google/pay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v11, v0, v1}, Lcom/google/pay/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 912
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sku is owned: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 913
    new-instance v2, Lcom/google/pay/util/Purchase;

    invoke-direct {v2, p2, v0, v1}, Lcom/google/pay/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {v2}, Lcom/google/pay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 916
    const-string v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Purchase data: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 921
    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/pay/util/Inventory;->addPurchase(Lcom/google/pay/util/Purchase;)V

    .line 907
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 923
    :cond_8
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lcom/google/pay/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Purchase data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Signature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    move v4, v6

    .line 926
    goto :goto_3

    .line 930
    :cond_9
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 932
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    goto/16 :goto_0
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/google/pay/util/Inventory;Ljava/util/List;)I
    .locals 9
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/google/pay/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/pay/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 939
    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 940
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 941
    invoke-virtual {p2, p1}, Lcom/google/pay/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 942
    if-eqz p3, :cond_1

    .line 943
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 944
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 945
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 950
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 951
    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    move v0, v1

    .line 1002
    :goto_1
    return v0

    .line 956
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 958
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v5, v0, 0x14

    .line 959
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v6, v0, 0x14

    move v2, v1

    .line 960
    :goto_2
    if-ge v2, v5, :cond_4

    .line 961
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 962
    mul-int/lit8 v0, v2, 0x14

    mul-int/lit8 v8, v2, 0x14

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v3, v0, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 963
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 965
    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 967
    :cond_4
    if-eqz v6, :cond_6

    .line 968
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 969
    mul-int/lit8 v0, v5, 0x14

    mul-int/lit8 v5, v5, 0x14

    add-int/2addr v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 970
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 972
    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 976
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 977
    const-string v4, "ITEM_ID_LIST"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 978
    iget-object v0, p0, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5, p1, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 981
    const-string v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 982
    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    .line 983
    if-eqz v0, :cond_8

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetails() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/pay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 987
    :cond_8
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 988
    const/16 v0, -0x3ea

    goto/16 :goto_1

    .line 992
    :cond_9
    const-string v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 995
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 996
    new-instance v4, Lcom/google/pay/util/SkuDetails;

    invoke-direct {v4, p1, v0}, Lcom/google/pay/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got sku details: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2, v4}, Lcom/google/pay/util/Inventory;->addSkuDetails(Lcom/google/pay/util/SkuDetails;)V

    goto :goto_5

    :cond_a
    move v0, v1

    .line 1002
    goto/16 :goto_1
.end method

.method public startSetup(Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 211
    iget-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/google/pay/util/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/pay/util/IabHelper$1;-><init>(Lcom/google/pay/util/IabHelper;Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/google/pay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/pay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    if-eqz p1, :cond_1

    .line 295
    new-instance v0, Lcom/google/pay/util/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/google/pay/util/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/pay/util/IabHelper;->checkNotDisposed()V

    .line 332
    iget-boolean v0, p0, Lcom/google/pay/util/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
