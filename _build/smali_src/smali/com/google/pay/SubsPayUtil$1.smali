.class Lcom/google/pay/SubsPayUtil$1;
.super Ljava/lang/Object;
.source "SubsPayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/pay/SubsPayUtil;->callBackSubscribeInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/pay/SubsPayUtil;


# direct methods
.method constructor <init>(Lcom/google/pay/SubsPayUtil;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/pay/SubsPayUtil$1;->this$0:Lcom/google/pay/SubsPayUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 209
    const-string v1, ""

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/pay/SubsPayUtil$1;->this$0:Lcom/google/pay/SubsPayUtil;

    iget-object v3, v3, Lcom/google/pay/SubsPayUtil;->mSubsProductSku:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/google/pay/SubsPayUtil$1;->this$0:Lcom/google/pay/SubsPayUtil;

    iget-object v3, v3, Lcom/google/pay/SubsPayUtil;->mSubsProductSku:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil$1;->this$0:Lcom/google/pay/SubsPayUtil;

    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/pay/PayUtil;->getIba()Lcom/google/pay/util/IabHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/pay/util/IabHelper;->getService()Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/pay/SubsPayUtil;->access$002(Lcom/google/pay/SubsPayUtil;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/google/pay/SubsPayUtil$1;->this$0:Lcom/google/pay/SubsPayUtil;

    invoke-static {v2}, Lcom/google/pay/SubsPayUtil;->access$000(Lcom/google/pay/SubsPayUtil;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {}, Lcom/google/pay/PayUtil;->getInstance()Lcom/google/pay/PayUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/pay/PayUtil;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "subs"

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 220
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    :goto_1
    iget-object v1, p0, Lcom/google/pay/SubsPayUtil$1;->this$0:Lcom/google/pay/SubsPayUtil;

    invoke-static {v1}, Lcom/google/pay/SubsPayUtil;->access$100(Lcom/google/pay/SubsPayUtil;)Lcom/cmplay/base/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/google/pay/SubsPayUtil$1;->this$0:Lcom/google/pay/SubsPayUtil;

    invoke-static {v1}, Lcom/google/pay/SubsPayUtil;->access$100(Lcom/google/pay/SubsPayUtil;)Lcom/cmplay/base/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cmplay/base/d;->b(Ljava/lang/String;)V

    .line 234
    :cond_1
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    const-string v0, ""

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
