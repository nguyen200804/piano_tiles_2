.class Lcom/google/pay/SubsPayUtil$2;
.super Ljava/lang/Object;
.source "SubsPayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/pay/SubsPayUtil;->subscribePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/pay/SubsPayUtil;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$free:I

.field final synthetic val$index:Ljava/lang/String;

.field final synthetic val$json:Lorg/json/JSONObject;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/pay/SubsPayUtil;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/pay/SubsPayUtil$2;->this$0:Lcom/google/pay/SubsPayUtil;

    iput-object p2, p0, Lcom/google/pay/SubsPayUtil$2;->val$index:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/pay/SubsPayUtil$2;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/pay/SubsPayUtil$2;->val$json:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/google/pay/SubsPayUtil$2;->val$appid:Ljava/lang/String;

    iput p6, p0, Lcom/google/pay/SubsPayUtil$2;->val$free:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil$2;->this$0:Lcom/google/pay/SubsPayUtil;

    iget-object v1, p0, Lcom/google/pay/SubsPayUtil$2;->this$0:Lcom/google/pay/SubsPayUtil;

    invoke-virtual {v1}, Lcom/google/pay/SubsPayUtil;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/pay/SubsPayUtil;->access$202(Lcom/google/pay/SubsPayUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/google/pay/SubsPayUtil$2;->this$0:Lcom/google/pay/SubsPayUtil;

    iget-object v1, p0, Lcom/google/pay/SubsPayUtil$2;->val$index:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/pay/SubsPayUtil$2;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/pay/SubsPayUtil$2;->val$json:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/pay/SubsPayUtil$2;->val$appid:Ljava/lang/String;

    iget v5, p0, Lcom/google/pay/SubsPayUtil$2;->val$free:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/pay/SubsPayUtil;->requestReplaceSku(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    return-void
.end method
