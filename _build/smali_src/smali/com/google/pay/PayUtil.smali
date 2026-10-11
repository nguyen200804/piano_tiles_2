.class public Lcom/google/pay/PayUtil;
.super Ljava/lang/Object;
.source "PayUtil.java"

# interfaces
.implements Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;
.implements Lcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;
.implements Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;
.implements Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/pay/PayUtil$PriceComparator;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE:I = 0x65

.field private static instance:Lcom/google/pay/PayUtil;


# instance fields
.field private billingservice:Lcom/android/vending/billing/IInAppBillingService;

.field private iap_is_ok:Z

.field private isStartSetUping:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInAppHelper:Lcom/google/pay/util/IabHelper;

.field private mIsProcessAsynInApp:Z

.field private mPayCallback:Lcom/cmplay/base/d;

.field private mProductSku:[Ljava/lang/String;

.field private purchases:Ljava/util/ArrayList;
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
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/google/pay/PayUtil;->instance:Lcom/google/pay/PayUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "diamond_001"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "diamond_002"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "diamond_003"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "diamond_001_ext"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "diamond_002_ext"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "diamond_003_ext"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "diamond_7dct_001"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "diamond_7dct_002"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "diamond_7dct_003"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "diamond_5dct_001"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "diamond_5dct_002"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "diamond_5dct_003"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "diamond_3dct_001"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "diamond_3dct_002"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "diamond_3dct_003"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "diamond_gift_001"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "diamond_gift_old"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "box_1_10"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "box_1_13"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "box_2_20"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "box_2_23"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "box_2_26"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "box_3_40"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "box_3_44"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "box_3_48"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "box_3_52"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "christmastree_package"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/pay/PayUtil;->mProductSku:[Ljava/lang/String;

    .line 52
    iput-boolean v3, p0, Lcom/google/pay/PayUtil;->iap_is_ok:Z

    .line 53
    iput-boolean v3, p0, Lcom/google/pay/PayUtil;->isStartSetUping:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/pay/PayUtil;->purchases:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/pay/PayUtil;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/pay/PayUtil;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/pay/PayUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mProductSku:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/pay/PayUtil;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/google/pay/PayUtil;
    .param p1, "x1"    # Lcom/android/vending/billing/IInAppBillingService;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/pay/PayUtil;->billingservice:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/pay/PayUtil;)Lcom/google/pay/util/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/pay/PayUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/pay/PayUtil;)Lcom/cmplay/base/d;
    .locals 1
    .param p0, "x0"    # Lcom/google/pay/PayUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/pay/PayUtil;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/pay/PayUtil;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/pay/PayUtil;->mIsProcessAsynInApp:Z

    return p1
.end method

.method private consumeAllOrders()V
    .locals 4

    .prologue
    .line 210
    :try_start_0
    const-string v0, "PayUtil"

    const-string v1, "consumeAllOrders"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    iget-object v1, p0, Lcom/google/pay/PayUtil;->purchases:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/pay/PayUtil$1;

    invoke-direct {v2, p0}, Lcom/google/pay/PayUtil$1;-><init>(Lcom/google/pay/PayUtil;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/pay/util/IabHelper;->consumeAsync(Ljava/util/List;Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string v1, "PayUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumeAllOrders exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAllPrice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/pay/PayUtil$2;

    invoke-direct {v1, p0}, Lcom/google/pay/PayUtil$2;-><init>(Lcom/google/pay/PayUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 346
    const-string v0, "0"

    return-object v0
.end method

.method public static getInstance()Lcom/google/pay/PayUtil;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/pay/PayUtil;->instance:Lcom/google/pay/PayUtil;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/google/pay/PayUtil;

    invoke-direct {v0}, Lcom/google/pay/PayUtil;-><init>()V

    sput-object v0, Lcom/google/pay/PayUtil;->instance:Lcom/google/pay/PayUtil;

    .line 69
    :cond_0
    sget-object v0, Lcom/google/pay/PayUtil;->instance:Lcom/google/pay/PayUtil;

    return-object v0
.end method

.method public static isApplicationExsit(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 461
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    const/4 v0, 0x1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 464
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isExistGoogleMarket(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    const-string v0, "com.android.vending"

    .line 447
    invoke-static {p0, v0}, Lcom/google/pay/PayUtil;->isApplicationExsit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public consumeOrder(Ljava/lang/String;)V
    .locals 5
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/google/pay/PayUtil;->consumeAllOrders()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v0, "PayUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consumeOrder::order = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/google/pay/PayUtil;->purchases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/pay/util/Purchase;

    .line 196
    const-string v2, "PayUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumeOrder::purchase = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    invoke-virtual {v1, v0, p0}, Lcom/google/pay/util/IabHelper;->consumeAsync(Lcom/google/pay/util/Purchase;Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "PayUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumeOrder exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIba()Lcom/google/pay/util/IabHelper;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    return-object v0
.end method

.method public getIpaIsOk()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/pay/PayUtil;->iap_is_ok:Z

    return v0
.end method

.method public getPriceJosn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/pay/PayUtil;->iap_is_ok:Z

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/google/pay/PayUtil;->iap_is_ok:Z

    if-nez v0, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/google/pay/PayUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/pay/PayUtil;->isExistGoogleMarket(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/cmplay/base/d;->a(Ljava/lang/String;)V

    .line 120
    :cond_1
    const-string v0, ""

    .line 133
    :goto_0
    return-object v0

    .line 124
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/pay/PayUtil;->initInApp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/cmplay/base/d;->a(Ljava/lang/String;)V

    .line 130
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 133
    :cond_4
    invoke-direct {p0}, Lcom/google/pay/PayUtil;->getAllPrice()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public gotoGooglePlayPay(Ljava/lang/String;)V
    .locals 5
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    if-nez v0, :cond_0

    .line 401
    iput-boolean v1, p0, Lcom/google/pay/PayUtil;->iap_is_ok:Z

    .line 403
    :cond_0
    iget-boolean v0, p0, Lcom/google/pay/PayUtil;->iap_is_ok:Z

    if-nez v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    invoke-interface {v0, v1}, Lcom/cmplay/base/d;->a(I)V

    .line 408
    :cond_1
    iget-boolean v0, p0, Lcom/google/pay/PayUtil;->mIsProcessAsynInApp:Z

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/pay/PayUtil$3;

    invoke-direct {v1, p0}, Lcom/google/pay/PayUtil$3;-><init>(Lcom/google/pay/PayUtil;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 436
    :cond_2
    :goto_0
    return-void

    .line 420
    :cond_3
    iget-boolean v0, p0, Lcom/google/pay/PayUtil;->iap_is_ok:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 421
    iput-boolean v2, p0, Lcom/google/pay/PayUtil;->mIsProcessAsynInApp:Z

    .line 424
    :try_start_0
    iget-object v3, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    invoke-virtual {p0}, Lcom/google/pay/PayUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v4, 0x65

    invoke-virtual {v3, v0, p1, v4, p0}, Lcom/google/pay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/google/pay/util/IabHelper$OnIabPurchaseFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 429
    :goto_1
    if-eqz v0, :cond_2

    .line 430
    iput-boolean v1, p0, Lcom/google/pay/PayUtil;->mIsProcessAsynInApp:Z

    .line 431
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    invoke-interface {v0, v1}, Lcom/cmplay/base/d;->a(I)V

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_1
.end method

.method public handResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/pay/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/pay/PayUtil;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public initInApp()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 362
    invoke-virtual {p0}, Lcom/google/pay/PayUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/pay/PayUtil;->isExistGoogleMarket(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    :goto_0
    return v0

    .line 365
    :cond_0
    iget-boolean v2, p0, Lcom/google/pay/PayUtil;->isStartSetUping:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 367
    goto :goto_0

    .line 370
    :cond_1
    :try_start_0
    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqiIYDJ3nENCcu7BaZCS5Ognwh2/URdEz8NaFJNtX8cYwyIT+hJb6HoEdfdyZYIaPbqjbaR/KANS/V71+AsLtkLS+SEJR4MGRGXLYUXdozHSWGvVCgtdG6CBtYqvVlSj7m0xQhKUC6+5d+T4AJkrvDhMVgECYM2YiBFgEXmRkmu+zvaSOAwPbwkHIugXh5aEVbKWshy2XVfkByn0B7KfqyOOUY4oOCLvzBBfPW2uTmHW1QfqcrSe0jGfa1b1bqKeSTankZr5UgUoPaWXSrPRqa6GrVpE0Af9yu5HeIm6DsKB83t9uw0vkgODfR6VrN8pRtG8EmJP1cKEo9P7CHanwIDAQAB"

    .line 376
    new-instance v3, Lcom/google/pay/util/IabHelper;

    invoke-virtual {p0}, Lcom/google/pay/PayUtil;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/pay/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    .line 377
    iget-object v2, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    invoke-virtual {v2, p0}, Lcom/google/pay/util/IabHelper;->startSetup(Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 379
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/pay/PayUtil;->isStartSetUping:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 385
    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onConsumeFinished(Lcom/google/pay/util/Purchase;Lcom/google/pay/util/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/google/pay/util/Purchase;
    .param p2, "result"    # Lcom/google/pay/util/IabResult;

    .prologue
    .line 173
    const-string v1, "PayUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConsumeFinished result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/pay/util/IabResult;->isSuccess()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", purchase info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/pay/util/Purchase;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p2}, Lcom/google/pay/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "PayUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConsumeFinished error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/pay/util/IabResult;->getError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/pay/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p2}, Lcom/google/pay/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, "12"

    invoke-virtual {p1}, Lcom/google/pay/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/base/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/pay/PayUtil;->mIsProcessAsynInApp:Z

    .line 185
    return-void

    .line 173
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, "13"

    invoke-virtual {p1}, Lcom/google/pay/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/base/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    invoke-virtual {v0}, Lcom/google/pay/util/IabHelper;->dispose()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    .line 95
    :cond_0
    return-void
.end method

.method public onIabPurchaseFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Purchase;)V
    .locals 4
    .param p1, "result"    # Lcom/google/pay/util/IabResult;
    .param p2, "info"    # Lcom/google/pay/util/Purchase;

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string v1, "PayUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIabPurchaseFinished result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/pay/util/IabResult;->isSuccess()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", purchase info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/google/pay/util/Purchase;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Lcom/google/pay/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    const-string v0, "PayUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIabPurchaseFinished error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/pay/util/IabResult;->getError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/pay/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p1}, Lcom/google/pay/util/IabResult;->getResponse()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 145
    if-eqz p2, :cond_0

    .line 146
    const-string v0, "PayUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIabPurchaseFinished consume order id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/pay/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/google/pay/PayUtil;->consumeAllOrders()V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    invoke-interface {v0, v3}, Lcom/cmplay/base/d;->a(I)V

    .line 153
    if-eqz p2, :cond_2

    .line 154
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, "14"

    invoke-virtual {p2}, Lcom/google/pay/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/base/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    iput-boolean v3, p0, Lcom/google/pay/PayUtil;->mIsProcessAsynInApp:Z

    .line 169
    :cond_3
    :goto_1
    return-void

    .line 141
    :cond_4
    const-string v0, "null"

    goto :goto_0

    .line 160
    :cond_5
    const-string v0, "PayUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIabPurchaseFinished::add purchase info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/pay/PayUtil;->purchases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz p2, :cond_6

    .line 162
    iget-object v0, p0, Lcom/google/pay/PayUtil;->purchases:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 166
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    invoke-virtual {p2}, Lcom/google/pay/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/pay/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/base/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, "4"

    invoke-virtual {p2}, Lcom/google/pay/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/base/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onIabSetupFinished(Lcom/google/pay/util/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/google/pay/util/IabResult;

    .prologue
    .line 264
    const-string v0, "PayUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIabSetupFinished result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/pay/util/IabResult;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/pay/PayUtil;->isStartSetUping:Z

    .line 267
    invoke-virtual {p1}, Lcom/google/pay/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/cmplay/base/d;->a(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/cmplay/base/d;->b(Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/pay/PayUtil;->iap_is_ok:Z

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    invoke-virtual {v0, p0}, Lcom/google/pay/util/IabHelper;->queryInventoryAsync(Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    const-string v1, "PayUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIabSetupFinished exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/cmplay/base/d;->a(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/cmplay/base/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryInventoryFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Inventory;)V
    .locals 5
    .param p1, "result"    # Lcom/google/pay/util/IabResult;
    .param p2, "inv"    # Lcom/google/pay/util/Inventory;

    .prologue
    .line 234
    const-string v0, "PayUtil"

    const-string v1, "onQueryInventoryFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-nez p2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/pay/SubsPayUtil;->getInstance()Lcom/google/pay/SubsPayUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/pay/SubsPayUtil;->queryAsyFinished(Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Inventory;)V

    .line 243
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/pay/PayUtil;->mProductSku:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/google/pay/PayUtil;->mProductSku:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Lcom/google/pay/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/google/pay/util/Purchase;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_2

    .line 246
    const-string v2, "PayUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryInventoryFinished::add purchase info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/pay/util/Purchase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, p0, Lcom/google/pay/PayUtil;->purchases:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v2, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    invoke-virtual {v1}, Lcom/google/pay/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/pay/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/cmplay/base/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public queryOrders()V
    .locals 1

    .prologue
    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    invoke-virtual {v0, p0}, Lcom/google/pay/util/IabHelper;->queryInventoryAsync(Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setIpaIsOk(Z)V
    .locals 0
    .param p1, "isOk"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/google/pay/PayUtil;->iap_is_ok:Z

    .line 107
    return-void
.end method

.method public setPayCallback(Lcom/cmplay/base/d;)V
    .locals 1
    .param p1, "callback"    # Lcom/cmplay/base/d;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/pay/PayUtil;->mPayCallback:Lcom/cmplay/base/d;

    .line 83
    invoke-static {}, Lcom/google/pay/SubsPayUtil;->getInstance()Lcom/google/pay/SubsPayUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/pay/SubsPayUtil;->setPayCallback(Lcom/cmplay/base/d;)V

    .line 84
    return-void
.end method

.method public subscriptionsSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 350
    iget-object v1, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/pay/PayUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/pay/PayUtil;->isExistGoogleMarket(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/pay/PayUtil;->mInAppHelper:Lcom/google/pay/util/IabHelper;

    invoke-virtual {v1}, Lcom/google/pay/util/IabHelper;->subscriptionsSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
