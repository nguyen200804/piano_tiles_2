.class Lcom/google/pay/PayUtil$PriceComparator;
.super Ljava/lang/Object;
.source "PayUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/pay/PayUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PriceComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/pay/PayUtil;


# direct methods
.method private constructor <init>(Lcom/google/pay/PayUtil;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/pay/PayUtil$PriceComparator;->this$0:Lcom/google/pay/PayUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/pay/PayUtil;Lcom/google/pay/PayUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/pay/PayUtil;
    .param p2, "x1"    # Lcom/google/pay/PayUtil$1;

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/google/pay/PayUtil$PriceComparator;-><init>(Lcom/google/pay/PayUtil;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 474
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 508
    .end local p1    # "obj1":Ljava/lang/Object;
    .end local p2    # "obj2":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 478
    .restart local p1    # "obj1":Ljava/lang/Object;
    .restart local p2    # "obj2":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/String;

    .line 479
    .end local p1    # "obj1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .line 486
    .end local p2    # "obj2":Ljava/lang/Object;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 487
    const-string v4, "price_amount_micros"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 488
    const-string v4, "price_amount_micros"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 491
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 492
    const-string v6, "price_amount_micros"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 493
    const-string v2, "price_amount_micros"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 496
    :cond_2
    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 498
    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 499
    const/4 v0, 0x1

    goto :goto_0

    .line 501
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 504
    :catch_0
    move-exception v1

    .line 505
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    move-wide v4, v2

    goto :goto_1
.end method
