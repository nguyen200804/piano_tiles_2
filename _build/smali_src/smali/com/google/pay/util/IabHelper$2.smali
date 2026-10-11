.class Lcom/google/pay/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/pay/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/pay/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/google/pay/util/IabHelper;ZLjava/util/List;Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/google/pay/util/IabHelper$2;->this$0:Lcom/google/pay/util/IabHelper;

    iput-boolean p2, p0, Lcom/google/pay/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/google/pay/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/google/pay/util/IabHelper$2;->val$listener:Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/google/pay/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 650
    new-instance v1, Lcom/google/pay/util/IabResult;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 651
    const/4 v0, 0x0

    .line 653
    :try_start_0
    iget-object v2, p0, Lcom/google/pay/util/IabHelper$2;->this$0:Lcom/google/pay/util/IabHelper;

    iget-boolean v3, p0, Lcom/google/pay/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v4, p0, Lcom/google/pay/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/google/pay/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/google/pay/util/Inventory;
    :try_end_0
    .catch Lcom/google/pay/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 658
    :goto_0
    iget-object v2, p0, Lcom/google/pay/util/IabHelper$2;->this$0:Lcom/google/pay/util/IabHelper;

    invoke-virtual {v2}, Lcom/google/pay/util/IabHelper;->flagEndAsync()V

    .line 662
    iget-object v2, p0, Lcom/google/pay/util/IabHelper$2;->this$0:Lcom/google/pay/util/IabHelper;

    iget-boolean v2, v2, Lcom/google/pay/util/IabHelper;->mDisposed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/pay/util/IabHelper$2;->val$listener:Lcom/google/pay/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/google/pay/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/pay/util/IabHelper$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/pay/util/IabHelper$2$1;-><init>(Lcom/google/pay/util/IabHelper$2;Lcom/google/pay/util/IabResult;Lcom/google/pay/util/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 669
    :cond_0
    return-void

    .line 654
    :catch_0
    move-exception v1

    .line 655
    invoke-virtual {v1}, Lcom/google/pay/util/IabException;->getResult()Lcom/google/pay/util/IabResult;

    move-result-object v1

    goto :goto_0
.end method
