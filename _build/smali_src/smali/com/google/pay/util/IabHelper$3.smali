.class Lcom/google/pay/util/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/pay/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/pay/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/google/pay/util/IabHelper;Ljava/util/List;Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/google/pay/util/IabHelper$3;->this$0:Lcom/google/pay/util/IabHelper;

    iput-object p2, p0, Lcom/google/pay/util/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/google/pay/util/IabHelper$3;->val$singleListener:Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/google/pay/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/pay/util/IabHelper$3;->val$multiListener:Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1012
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/pay/util/Purchase;

    .line 1015
    :try_start_0
    iget-object v3, p0, Lcom/google/pay/util/IabHelper$3;->this$0:Lcom/google/pay/util/IabHelper;

    invoke-virtual {v3, v0}, Lcom/google/pay/util/IabHelper;->consume(Lcom/google/pay/util/Purchase;)V

    .line 1016
    new-instance v3, Lcom/google/pay/util/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/pay/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    invoke-virtual {v0}, Lcom/google/pay/util/IabException;->getResult()Lcom/google/pay/util/IabResult;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$3;->this$0:Lcom/google/pay/util/IabHelper;

    invoke-virtual {v0}, Lcom/google/pay/util/IabHelper;->flagEndAsync()V

    .line 1023
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$3;->this$0:Lcom/google/pay/util/IabHelper;

    iget-boolean v0, v0, Lcom/google/pay/util/IabHelper;->mDisposed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/pay/util/IabHelper$3;->val$singleListener:Lcom/google/pay/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/pay/util/IabHelper$3$1;

    invoke-direct {v2, p0, v1}, Lcom/google/pay/util/IabHelper$3$1;-><init>(Lcom/google/pay/util/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$3;->this$0:Lcom/google/pay/util/IabHelper;

    iget-boolean v0, v0, Lcom/google/pay/util/IabHelper;->mDisposed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/pay/util/IabHelper$3;->val$multiListener:Lcom/google/pay/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v0, :cond_2

    .line 1031
    iget-object v0, p0, Lcom/google/pay/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/pay/util/IabHelper$3$2;

    invoke-direct {v2, p0, v1}, Lcom/google/pay/util/IabHelper$3$2;-><init>(Lcom/google/pay/util/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1037
    :cond_2
    return-void
.end method
