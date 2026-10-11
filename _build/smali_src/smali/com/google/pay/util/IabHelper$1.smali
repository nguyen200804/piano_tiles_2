.class Lcom/google/pay/util/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/pay/util/IabHelper;->startSetup(Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/pay/util/IabHelper;

.field final synthetic val$listener:Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/google/pay/util/IabHelper;Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    iput-object p2, p0, Lcom/google/pay/util/IabHelper$1;->val$listener:Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 224
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    iget-boolean v0, v0, Lcom/google/pay/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 227
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    iget-object v0, v0, Lcom/google/pay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    iget-object v1, v1, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 233
    if-eqz v1, :cond_4

    .line 234
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->val$listener:Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->val$listener:Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/google/pay/util/IabResult;

    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/google/pay/util/IabResult;)V

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/pay/util/IabHelper;->mSubscriptionsSupported:Z

    .line 239
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/pay/util/IabHelper;->mSubscriptionUpdateSupported:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->val$listener:Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->val$listener:Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/google/pay/util/IabResult;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/google/pay/util/IabResult;)V

    .line 277
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 242
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    iget-object v1, v1, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x5

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 248
    if-nez v1, :cond_5

    .line 249
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const-string v2, "Subscription re-signup AVAILABLE."

    invoke-virtual {v1, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/pay/util/IabHelper;->mSubscriptionUpdateSupported:Z

    .line 256
    :goto_1
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    iget-boolean v1, v1, Lcom/google/pay/util/IabHelper;->mSubscriptionUpdateSupported:Z

    if-eqz v1, :cond_6

    .line 257
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/pay/util/IabHelper;->mSubscriptionsSupported:Z

    .line 271
    :goto_2
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/pay/util/IabHelper;->mSetupDone:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->val$listener:Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->val$listener:Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lcom/google/pay/util/IabResult;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/pay/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/google/pay/util/IabResult;)V

    goto/16 :goto_0

    .line 252
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const-string v2, "Subscription re-signup not available."

    invoke-virtual {v1, v2}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/pay/util/IabHelper;->mSubscriptionUpdateSupported:Z

    goto :goto_1

    .line 260
    :cond_6
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    iget-object v1, v1, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 261
    if-nez v0, :cond_7

    .line 262
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/pay/util/IabHelper;->mSubscriptionsSupported:Z

    goto :goto_2

    .line 265
    :cond_7
    iget-object v1, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/pay/util/IabHelper;->mSubscriptionsSupported:Z

    .line 267
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/pay/util/IabHelper;->mSubscriptionUpdateSupported:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/google/pay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$1;->this$0:Lcom/google/pay/util/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/pay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 220
    return-void
.end method
