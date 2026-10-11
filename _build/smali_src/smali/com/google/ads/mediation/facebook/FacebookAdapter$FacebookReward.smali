.class Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookReward;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookReward"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookReward;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/google/ads/mediation/facebook/FacebookAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/ads/mediation/facebook/FacebookAdapter;
    .param p2, "x1"    # Lcom/google/ads/mediation/facebook/FacebookAdapter$1;

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookReward;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;)V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    const-string v0, ""

    return-object v0
.end method
