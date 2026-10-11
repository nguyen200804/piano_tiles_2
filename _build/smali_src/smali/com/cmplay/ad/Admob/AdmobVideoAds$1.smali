.class Lcom/cmplay/ad/Admob/AdmobVideoAds$1;
.super Ljava/lang/Object;
.source "AdmobVideoAds.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/Admob/AdmobVideoAds;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/Admob/AdmobVideoAds;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 2
    .param p1, "rewardItem"    # Lcom/google/android/gms/ads/reward/RewardItem;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$000(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rewardItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$300(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Lcom/cmplay/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$300(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Lcom/cmplay/ad/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cmplay/ad/c;->a(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$000(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on ad onFinished"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$400(Lcom/cmplay/ad/Admob/AdmobVideoAds;)V

    .line 109
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0, v4}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$202(Lcom/cmplay/ad/Admob/AdmobVideoAds;I)I

    .line 110
    invoke-static {}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$100()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 111
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    iget-object v3, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v3}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$200(Lcom/cmplay/ad/Admob/AdmobVideoAds;)I

    move-result v3

    const/16 v4, 0x8

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$100()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 113
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    iget-object v3, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v3}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$200(Lcom/cmplay/ad/Admob/AdmobVideoAds;)I

    move-result v3

    const/16 v4, 0x9

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    goto :goto_0
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x3

    .line 132
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$000(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on ad onViewShowFail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$100()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 134
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    iget-object v2, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v2}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$200(Lcom/cmplay/ad/Admob/AdmobVideoAds;)I

    move-result v3

    const/16 v4, 0x8

    sget v5, Lcom/cmplay/ad/a;->f:I

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$100()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 136
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    iget-object v2, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v2}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$200(Lcom/cmplay/ad/Admob/AdmobVideoAds;)I

    move-result v3

    const/16 v4, 0x9

    sget v5, Lcom/cmplay/ad/a;->f:I

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    goto :goto_0
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$000(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on ad onRewardedVideoAdLeftApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 82
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    iput-boolean v4, v0, Lcom/cmplay/ad/Admob/AdmobVideoAds;->isLoaded:Z

    .line 83
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$000(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on ad onRewardedVideoAdLoaded"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$100()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 85
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    iget-object v3, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v3}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$200(Lcom/cmplay/ad/Admob/AdmobVideoAds;)I

    move-result v3

    const/16 v4, 0x8

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$100()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    iget-object v3, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v3}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$200(Lcom/cmplay/ad/Admob/AdmobVideoAds;)I

    move-result v3

    const/16 v4, 0x9

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    goto :goto_0
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$000(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on ad onRewardedVideoAdOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$000(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on ad start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$300(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Lcom/cmplay/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobVideoAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobVideoAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->access$300(Lcom/cmplay/ad/Admob/AdmobVideoAds;)Lcom/cmplay/ad/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/ad/c;->a()V

    .line 103
    :cond_0
    return-void
.end method
