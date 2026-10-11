.class public Lcom/google/pay/SubsPayUtil;
.super Ljava/lang/Object;
.source "SubsPayUtil.java"

# interfaces
.implements Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;
.implements Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;


# static fields
.field private static final PROID_CANCEL_EXIST:I = 0x2

.field private static final PROID_HAS_SUBS:I = 0x1

.field private static final PROID_REPLACE_EXIST:I = 0x0

.field private static final SUBS_REQUEST_CODE:I = 0x3ea

.field private static final URL_HOST:Ljava/lang/String; = "http://whitetileos.cmcm.com/wtserver/get/req?"

.field private static instance:Lcom/google/pay/SubsPayUtil;


# instance fields
.field private billingservice:Lcom/android/vending/billing/IInAppBillingService;

.field private callMethodFlag:I

.field private isQueryInventory:Z

.field private mAndroidId:Ljava/lang/String;

.field private mCurrentBuyItem:Ljava/lang/String;

.field private mFreeID:Ljava/lang/String;

.field private mPayCallback:Lcom/cmplay/base/d;

.field private mScreenPageAppid:Ljava/lang/String;

.field private mScreenPageData:Ljava/lang/String;

.field private mScreenPageProId:Ljava/lang/String;

.field private mScreenPageToken:Ljava/lang/String;

.field private mSkuReplaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSkuRotateTable:[Ljava/lang/String;

.field public mSubsProductSku:[Ljava/lang/String;

.field private subsPurchases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/pay/util/Purchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/google/pay/SubsPayUtil;->instance:Lcom/google/pay/SubsPayUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageProId:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageToken:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageData:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageAppid:Ljava/lang/String;

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "week_gp_001"

    aput-object v1, v0, v3

    const-string v1, "month_gp_001"

    aput-object v1, v0, v2

    const-string v1, "year_gp_001"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mSubsProductSku:[Ljava/lang/String;

    .line 54
    const-string v0, "week_gp_001"

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mFreeID:Ljava/lang/String;

    .line 62
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "week_gp_001"

    aput-object v1, v0, v3

    const-string v1, "week_gp_002"

    aput-object v1, v0, v2

    const-string v1, "week_gp_003"

    aput-object v1, v0, v4

    const-string v1, "week_gp_004"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "week_gp_005"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "week_gp_006"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "week_gp_007"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "week_gp_008"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "week_gp_009"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "month_gp_001"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "month_gp_002"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "month_gp_003"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "month_gp_004"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "month_gp_005"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "month_gp_006"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "month_gp_007"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "month_gp_008"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "month_gp_009"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "year_gp_001"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "year_gp_002"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "year_gp_003"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "year_gp_004"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "year_gp_005"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "year_gp_006"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "year_gp_007"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "year_gp_008"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "year_gp_009"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mSkuRotateTable:[Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mAndroidId:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mSkuReplaceList:Ljava/util/ArrayList;

    .line 75
    iput-boolean v3, p0, Lcom/google/pay/SubsPayUtil;->isQueryInventory:Z

    .line 78
    iput v3, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mCurrentBuyItem:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/pay/SubsPayUtil;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 1
    .param p0, "x0"    # Lcom/google/pay/SubsPayUtil;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->billingservice:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/pay/SubsPayUtil;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/google/pay/SubsPayUtil;
    .param p1, "x1"    # Lcom/android/vending/billing/IInAppBillingService;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/pay/SubsPayUtil;->billingservice:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/pay/SubsPayUtil;)Lcom/cmplay/base/d;
    .locals 1
    .param p0, "x0"    # Lcom/google/pay/SubsPayUtil;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/pay/SubsPayUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/pay/SubsPayUtil;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/pay/SubsPayUtil;->mAndroidId:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/google/pay/SubsPayUtil;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/google/pay/SubsPayUtil;->instance:Lcom/google/pay/SubsPayUtil;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/google/pay/SubsPayUtil;

    invoke-direct {v0}, Lcom/google/pay/SubsPayUtil;-><init>()V

    sput-object v0, Lcom/google/pay/SubsPayUtil;->instance:Lcom/google/pay/SubsPayUtil;

    .line 88
    :cond_0
    sget-object v0, Lcom/google/pay/SubsPayUtil;->instance:Lcom/google/pay/SubsPayUtil;

    return-object v0
.end method

.method private queryAsy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/pay/SubsPayUtil;->isQueryInventory:Z

    .line 119
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->getIba()Lcom/google/pay/util/IabHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/pay/PayUtil;->setIpaIsOk(Z)V

    .line 122
    :cond_0
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->getIpaIsOk()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    :try_start_0
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->initInApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/google/pay/SubsPayUtil;->sendFailure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    iput-boolean v1, p0, Lcom/google/pay/SubsPayUtil;->isQueryInventory:Z

    .line 129
    invoke-virtual {p0}, Lcom/google/pay/SubsPayUtil;->sendFailure()V

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->subscriptionsSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/google/pay/SubsPayUtil;->sendFailure()V

    .line 134
    iput-boolean v1, p0, Lcom/google/pay/SubsPayUtil;->isQueryInventory:Z

    goto :goto_0

    .line 136
    :cond_3
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->getIba()Lcom/google/pay/util/IabHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/pay/util/IabHelper;->queryInventoryAsync(Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public callBackSubscribeInfo()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/pay/SubsPayUtil$1;

    invoke-direct {v1, p0}, Lcom/google/pay/SubsPayUtil$1;-><init>(Lcom/google/pay/SubsPayUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/pay/SubsPayUtil;->isQueryInventory:Z

    .line 237
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 497
    return-void
.end method

.method public doPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 414
    const/4 v9, 0x1

    .line 415
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->getIpaIsOk()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 417
    const-string v0, "already_subscribed_tip"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, p1, v1, v2}, Lcom/cmplay/base/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 427
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->subsPurchases:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->subsPurchases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/pay/util/Purchase;

    .line 429
    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_3
    iput-object p1, p0, Lcom/google/pay/SubsPayUtil;->mCurrentBuyItem:Ljava/lang/String;

    .line 436
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 437
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 439
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->getIba()Lcom/google/pay/util/IabHelper;

    move-result-object v0

    const-string v3, "subs"

    const/16 v5, 0x3ea

    const-string v7, ""

    move-object v2, p1

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/pay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v8

    .line 448
    :goto_2
    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/cmplay/base/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->getIba()Lcom/google/pay/util/IabHelper;

    move-result-object v0

    const/16 v3, 0x3ea

    const-string v5, ""

    move-object v2, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/pay/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move v0, v9

    goto :goto_2
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/pay/PayUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscribeInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 112
    iget v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    .line 113
    invoke-direct {p0}, Lcom/google/pay/SubsPayUtil;->queryAsy()V

    .line 114
    return-void
.end method

.method public getSubscribeState(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 104
    iget v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    .line 105
    invoke-direct {p0}, Lcom/google/pay/SubsPayUtil;->queryAsy()V

    .line 106
    return-void
.end method

.method public onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V
    .locals 4
    .param p1, "result"    # Lcom/google/pay/util/IabResult;
    .param p2, "info"    # Lcom/google/pay/util/Purchase;

    .prologue
    .line 470
    invoke-virtual {p1}, Lcom/google/pay/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_0

    .line 472
    if-eqz p2, :cond_1

    .line 473
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    invoke-virtual {p2}, Lcom/google/pay/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/pay/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/pay/SubsPayUtil;->mAndroidId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/cmplay/base/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->subsPurchases:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mCurrentBuyItem:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 480
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->subsPurchases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/pay/util/Purchase;

    .line 484
    iget-object v2, p0, Lcom/google/pay/SubsPayUtil;->mCurrentBuyItem:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->isAutoRenewing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/pay/util/IabResult;->getError()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 485
    const-string v0, "zzb"

    const-string v1, "\u8be5\u670d\u52a1\u5df2\u8ba2\u9605\u8fc7\uff0c\u4e0d\u8981\u518d\u8ba2\u9605\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mCurrentBuyItem:Ljava/lang/String;

    .line 487
    const-string v0, "already_subscribed_tip"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_4
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryInventoryFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Inventory;)V
    .locals 0
    .param p1, "result"    # Lcom/google/pay/util/IabResult;
    .param p2, "inv"    # Lcom/google/pay/util/Inventory;

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/google/pay/SubsPayUtil;->queryAsyFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Inventory;)V

    .line 145
    return-void
.end method

.method public payFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, ""

    invoke-interface {v0, p1, p2, v1}, Lcom/cmplay/base/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageProId:Ljava/lang/String;

    .line 460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageToken:Ljava/lang/String;

    .line 461
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageData:Ljava/lang/String;

    .line 462
    const-string v0, ""

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageAppid:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public queryAsyFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Inventory;)V
    .locals 7
    .param p1, "result"    # Lcom/google/pay/util/IabResult;
    .param p2, "inv"    # Lcom/google/pay/util/Inventory;

    .prologue
    const/4 v6, 0x0

    .line 148
    invoke-virtual {p1}, Lcom/google/pay/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/google/pay/SubsPayUtil;->sendFailure()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/google/pay/SubsPayUtil;->isQueryInventory:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mSkuReplaceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mSkuReplaceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/pay/SubsPayUtil;->mSkuRotateTable:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/pay/SubsPayUtil;->subsPurchases:Ljava/util/ArrayList;

    move v0, v6

    .line 163
    :goto_1
    iget-object v1, p0, Lcom/google/pay/SubsPayUtil;->mSkuRotateTable:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/google/pay/SubsPayUtil;->mSkuRotateTable:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Lcom/google/pay/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/google/pay/util/Purchase;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_2

    .line 166
    iget-object v2, p0, Lcom/google/pay/SubsPayUtil;->subsPurchases:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v2, p0, Lcom/google/pay/SubsPayUtil;->mSkuReplaceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/google/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_3
    iget v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 178
    :cond_4
    iget v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 179
    invoke-virtual {p0}, Lcom/google/pay/SubsPayUtil;->callBackSubscribeInfo()V

    .line 182
    :cond_5
    iget v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 183
    iget-object v1, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageProId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageData:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageAppid:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/pay/SubsPayUtil;->subscribePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_6
    iput-boolean v6, p0, Lcom/google/pay/SubsPayUtil;->isQueryInventory:Z

    .line 187
    iput v6, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    goto :goto_0
.end method

.method public replaceNewSku(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "free"    # I

    .prologue
    const/4 v2, 0x0

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    .end local p1    # "oldId":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "oldId":Ljava/lang/String;
    :cond_0
    move v1, v2

    .line 392
    :goto_1
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mSkuReplaceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 394
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/google/pay/SubsPayUtil;->mFreeID:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mSkuReplaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 397
    :cond_2
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v2

    .line 398
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mSkuReplaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 401
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mSkuReplaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    goto :goto_0

    .line 407
    :cond_3
    const-string p1, "already_subscribed_tip"

    goto :goto_0
.end method

.method public requestReplaceSku(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "currentId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "requestData"    # Ljava/lang/String;
    .param p4, "appid"    # Ljava/lang/String;
    .param p5, "free"    # I

    .prologue
    .line 310
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocol_ver=200015&data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://whitetileos.cmcm.com/wtserver/get/req?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 314
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 315
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 316
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 317
    const-string v1, "Charsert"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "appid"

    invoke-virtual {v0, v1, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_7

    .line 322
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 326
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "zzb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_1
    return-void

    .line 329
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 333
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    const-string v1, "protocol_ver"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "200015"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 335
    const-string v1, "res_code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 336
    if-nez v1, :cond_4

    .line 337
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 338
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 339
    const-string v3, "pro_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 342
    invoke-virtual {p0, v1, p2}, Lcom/google/pay/SubsPayUtil;->doPay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 376
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 343
    :cond_1
    const/4 v1, 0x1

    if-ne v2, v1, :cond_2

    .line 345
    :try_start_5
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 347
    :cond_2
    if-nez v2, :cond_3

    .line 350
    invoke-virtual {p0, p1, p5}, Lcom/google/pay/SubsPayUtil;->replaceNewSku(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/google/pay/SubsPayUtil;->doPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 354
    :cond_3
    const-string v1, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "zzb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status error\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 358
    :cond_4
    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v2, "zzb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res_code ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 363
    :cond_5
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "zzb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 368
    :cond_6
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v1, "zzb"

    const-string v2, "result null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 372
    :cond_7
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v1, "zzb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http error\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2
.end method

.method public screenPageSubscribePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "appid"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageProId:Ljava/lang/String;

    .line 245
    iput-object p2, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageToken:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageData:Ljava/lang/String;

    .line 247
    iput-object p4, p0, Lcom/google/pay/SubsPayUtil;->mScreenPageAppid:Ljava/lang/String;

    .line 249
    iget v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    .line 250
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/pay/SubsPayUtil;->getSubscribeState(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public sendFailure()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_2

    .line 192
    iget v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/cmplay/base/d;->a(ILjava/lang/String;)V

    .line 195
    :cond_0
    iget v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/cmplay/base/d;->b(Ljava/lang/String;)V

    .line 198
    :cond_1
    iget v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 199
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/pay/SubsPayUtil;->callMethodFlag:I

    .line 203
    return-void
.end method

.method public setPayCallback(Lcom/cmplay/base/d;)V
    .locals 0
    .param p1, "payCallback"    # Lcom/cmplay/base/d;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/pay/SubsPayUtil;->mPayCallback:Lcom/cmplay/base/d;

    .line 93
    return-void
.end method

.method public subscribePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "appid"    # Ljava/lang/String;
    .param p5, "xid"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 265
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 266
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 267
    const-string v0, "tokens"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "uuid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string v2, "socialId"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    const-string v3, "platformType"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 272
    const-string v5, "free"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 274
    const-string v5, "uuid"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v0, "socialId"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v0, "platformType"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->subsPurchases:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->subsPurchases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil;->subsPurchases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/pay/util/Purchase;

    .line 281
    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->isAutoRenewing()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 283
    const-string v5, "tk"

    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v5, "pid"

    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    const-string v1, "vip"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/pay/SubsPayUtil;->payFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/google/pay/SubsPayUtil$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/pay/SubsPayUtil$2;-><init>(Lcom/google/pay/SubsPayUtil;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;I)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
