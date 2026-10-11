.class Lcom/cmplay/ad/Admob/AdmobAds$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/ad/Admob/AdmobAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/ad/Admob/AdmobAds;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/Admob/AdmobAds;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cmplay/ad/Admob/AdmobAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobAds;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 148
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobAds;->access$000(Lcom/cmplay/ad/Admob/AdmobAds;)Lcom/cmplay/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobAds;->access$000(Lcom/cmplay/ad/Admob/AdmobAds;)Lcom/cmplay/ad/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/ad/c;->c()V

    .line 150
    :cond_0
    const-string v0, "admob"

    const-string v1, "onAdClosed"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobAds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/ad/Admob/AdmobAds;->access$102(Lcom/cmplay/ad/Admob/AdmobAds;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;

    .line 152
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 164
    new-instance v0, Lcom/cmplay/g/b;

    invoke-direct {v0}, Lcom/cmplay/g/b;-><init>()V

    sget v1, Lcom/cmplay/ad/a;->b:I

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/cmplay/g/b;->a(IILjava/lang/String;)V

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 175
    const/4 v0, 0x4

    .line 178
    :goto_0
    new-instance v1, Lcom/cmplay/util/c/a/b;

    invoke-direct {v1}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/cmplay/ad/Admob/AdmobAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobAds;

    invoke-static {v3}, Lcom/cmplay/ad/Admob/AdmobAds;->access$200(Lcom/cmplay/ad/Admob/AdmobAds;)I

    move-result v3

    const/16 v4, 0x65

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 179
    const-string v1, "admob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdFailedToLoad = "

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

    invoke-static {v1, v0}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void

    .line 169
    :pswitch_0
    const/4 v0, 0x1

    .line 170
    goto :goto_0

    .line 172
    :pswitch_1
    const/4 v0, 0x2

    .line 173
    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 185
    const-string v0, "admob"

    const-string v1, "onAdLeftApplication"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .prologue
    .line 199
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 200
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/cmplay/ad/Admob/AdmobAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobAds;

    invoke-static {v3}, Lcom/cmplay/ad/Admob/AdmobAds;->access$200(Lcom/cmplay/ad/Admob/AdmobAds;)I

    move-result v3

    const/16 v4, 0x65

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 201
    const-string v0, "admob"

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 191
    const-string v0, "admob"

    const-string v1, "onAdOpened"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobAds;->access$000(Lcom/cmplay/ad/Admob/AdmobAds;)Lcom/cmplay/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cmplay/ad/Admob/AdmobAds$1;->this$0:Lcom/cmplay/ad/Admob/AdmobAds;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobAds;->access$000(Lcom/cmplay/ad/Admob/AdmobAds;)Lcom/cmplay/ad/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/ad/c;->b()V

    .line 195
    :cond_0
    return-void
.end method
