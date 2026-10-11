.class Lcom/google/pay/PayUtil$2;
.super Ljava/lang/Object;
.source "PayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/pay/PayUtil;->getAllPrice()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/pay/PayUtil;


# direct methods
.method constructor <init>(Lcom/google/pay/PayUtil;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/pay/PayUtil$2;->this$0:Lcom/google/pay/PayUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 300
    const-string v2, ""

    .line 301
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 302
    :goto_0
    iget-object v4, p0, Lcom/google/pay/PayUtil$2;->this$0:Lcom/google/pay/PayUtil;

    invoke-static {v4}, Lcom/google/pay/PayUtil;->access$000(Lcom/google/pay/PayUtil;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 303
    iget-object v4, p0, Lcom/google/pay/PayUtil$2;->this$0:Lcom/google/pay/PayUtil;

    invoke-static {v4}, Lcom/google/pay/PayUtil;->access$000(Lcom/google/pay/PayUtil;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/pay/PayUtil$2;->this$0:Lcom/google/pay/PayUtil;

    iget-object v4, p0, Lcom/google/pay/PayUtil$2;->this$0:Lcom/google/pay/PayUtil;

    invoke-static {v4}, Lcom/google/pay/PayUtil;->access$200(Lcom/google/pay/PayUtil;)Lcom/google/pay/util/IabHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/pay/util/IabHelper;->getService()Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/pay/PayUtil;->access$102(Lcom/google/pay/PayUtil;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    const-string v4, "ITEM_ID_LIST"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 314
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v0, p0, Lcom/google/pay/PayUtil$2;->this$0:Lcom/google/pay/PayUtil;

    invoke-static {v0}, Lcom/google/pay/PayUtil;->access$200(Lcom/google/pay/PayUtil;)Lcom/google/pay/util/IabHelper;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3}, Lcom/google/pay/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/google/pay/util/Inventory;

    move-result-object v5

    .line 318
    if-eqz v5, :cond_3

    .line 319
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    invoke-virtual {v5, v0}, Lcom/google/pay/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/google/pay/util/SkuDetails;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Lcom/google/pay/util/SkuDetails;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SkuDetails:"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 334
    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    const-string v0, ""

    .line 339
    :goto_2
    iget-object v2, p0, Lcom/google/pay/PayUtil$2;->this$0:Lcom/google/pay/PayUtil;

    invoke-static {v2}, Lcom/google/pay/PayUtil;->access$400(Lcom/google/pay/PayUtil;)Lcom/cmplay/base/d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 340
    iget-object v2, p0, Lcom/google/pay/PayUtil$2;->this$0:Lcom/google/pay/PayUtil;

    invoke-static {v2}, Lcom/google/pay/PayUtil;->access$400(Lcom/google/pay/PayUtil;)Lcom/cmplay/base/d;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/cmplay/base/d;->a(Ljava/lang/String;)V

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/google/pay/PayUtil$2;->this$0:Lcom/google/pay/PayUtil;

    invoke-static {v0, v1}, Lcom/google/pay/PayUtil;->access$502(Lcom/google/pay/PayUtil;Z)Z

    .line 343
    return-void

    .line 330
    :cond_3
    if-eqz v4, :cond_4

    .line 331
    :try_start_1
    new-instance v0, Lcom/google/pay/PayUtil$PriceComparator;

    iget-object v2, p0, Lcom/google/pay/PayUtil$2;->this$0:Lcom/google/pay/PayUtil;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/pay/PayUtil$PriceComparator;-><init>(Lcom/google/pay/PayUtil;Lcom/google/pay/PayUtil$1;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 332
    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method
