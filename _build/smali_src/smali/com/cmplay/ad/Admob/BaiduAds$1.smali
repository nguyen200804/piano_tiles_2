.class Lcom/cmplay/ad/Admob/BaiduAds$1;
.super Ljava/lang/Object;
.source "BaiduAds.java"

# interfaces
.implements Lcom/duapps/ad/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/Admob/BaiduAds;->setIAD(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/ad/Admob/BaiduAds;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/Admob/BaiduAds;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmplay/ad/Admob/BaiduAds$1;->this$0:Lcom/cmplay/ad/Admob/BaiduAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onAdDismissed()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds$1;->this$0:Lcom/cmplay/ad/Admob/BaiduAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BaiduAds;->access$000(Lcom/cmplay/ad/Admob/BaiduAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 76
    return-void
.end method

.method public onAdFail(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x3

    .line 60
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds$1;->this$0:Lcom/cmplay/ad/Admob/BaiduAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BaiduAds;->access$000(Lcom/cmplay/ad/Admob/BaiduAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 61
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds$1;->this$0:Lcom/cmplay/ad/Admob/BaiduAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BaiduAds;->access$100(Lcom/cmplay/ad/Admob/BaiduAds;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdFail ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v3, p1, v3, v1}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 63
    return-void
.end method

.method public onAdPresent()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds$1;->this$0:Lcom/cmplay/ad/Admob/BaiduAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BaiduAds;->access$000(Lcom/cmplay/ad/Admob/BaiduAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 81
    return-void
.end method

.method public onAdReceive()V
    .locals 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds$1;->this$0:Lcom/cmplay/ad/Admob/BaiduAds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmplay/ad/Admob/BaiduAds;->access$202(Lcom/cmplay/ad/Admob/BaiduAds;Z)Z

    .line 68
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds$1;->this$0:Lcom/cmplay/ad/Admob/BaiduAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BaiduAds;->access$100(Lcom/cmplay/ad/Admob/BaiduAds;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdReceive ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/cmplay/ad/Admob/BaiduAds$1;->this$0:Lcom/cmplay/ad/Admob/BaiduAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/BaiduAds;->access$000(Lcom/cmplay/ad/Admob/BaiduAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 70
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 71
    return-void
.end method
