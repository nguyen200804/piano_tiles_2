.class Lcom/cmplay/ad/Admob/AdxAds$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdxAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/ad/Admob/AdxAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/ad/Admob/AdxAds;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/Admob/AdxAds;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cmplay/ad/Admob/AdxAds$1;->this$0:Lcom/cmplay/ad/Admob/AdxAds;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds$1;->this$0:Lcom/cmplay/ad/Admob/AdxAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdxAds;->access$000(Lcom/cmplay/ad/Admob/AdxAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds$1;->this$0:Lcom/cmplay/ad/Admob/AdxAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdxAds;->access$000(Lcom/cmplay/ad/Admob/AdxAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 48
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    .line 51
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds$1;->this$0:Lcom/cmplay/ad/Admob/AdxAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdxAds;->access$000(Lcom/cmplay/ad/Admob/AdxAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds$1;->this$0:Lcom/cmplay/ad/Admob/AdxAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdxAds;->access$000(Lcom/cmplay/ad/Admob/AdxAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 54
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 62
    const/4 v0, 0x4

    .line 65
    :goto_0
    new-instance v2, Lcom/cmplay/util/c/a/b;

    invoke-direct {v2}, Lcom/cmplay/util/c/a/b;-><init>()V

    invoke-virtual {v2, v3, v0, v3, v1}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 66
    const-string v1, "zzb_adx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdFailedToLoad ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  myErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 56
    :pswitch_0
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 60
    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 79
    const-string v0, "zzb_adx"

    const-string v1, "onAdLoaded ---"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds$1;->this$0:Lcom/cmplay/ad/Admob/AdxAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdxAds;->access$000(Lcom/cmplay/ad/Admob/AdxAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds$1;->this$0:Lcom/cmplay/ad/Admob/AdxAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdxAds;->access$000(Lcom/cmplay/ad/Admob/AdxAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 81
    :cond_0
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 82
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds$1;->this$0:Lcom/cmplay/ad/Admob/AdxAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdxAds;->access$000(Lcom/cmplay/ad/Admob/AdxAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdxAds$1;->this$0:Lcom/cmplay/ad/Admob/AdxAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdxAds;->access$000(Lcom/cmplay/ad/Admob/AdxAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 75
    :cond_0
    const-string v0, "zzb_adx"

    const-string v1, "onAdOpened ---"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
