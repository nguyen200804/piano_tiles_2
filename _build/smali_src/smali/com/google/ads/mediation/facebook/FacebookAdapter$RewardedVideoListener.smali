.class Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RewardedVideoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/google/ads/mediation/facebook/FacebookAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/ads/mediation/facebook/FacebookAdapter;
    .param p2, "x1"    # Lcom/google/ads/mediation/facebook/FacebookAdapter$1;

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClicked(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 546
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdLeftApplication(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 547
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdLoaded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 541
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "adError"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 530
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    const-string v1, "FacebookAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v2, p2}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$500(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/AdError;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    .line 536
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 552
    return-void
.end method

.method public onRewardedVideoClosed()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 557
    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 5

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    new-instance v2, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookReward;

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookReward;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/google/ads/mediation/facebook/FacebookAdapter$1;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V

    .line 526
    return-void
.end method
