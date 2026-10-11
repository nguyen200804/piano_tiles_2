.class public Lcom/cmplay/ad/Admob/FBNativeAds;
.super Ljava/lang/Object;
.source "FBNativeAds.java"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitial;


# static fields
.field private static final TAG:Ljava/lang/String; = "zzb_fb"


# instance fields
.field private mAdView:Landroid/view/View;

.field private mBigImageView:Landroid/widget/ImageView;

.field private mIconImageView:Landroid/widget/ImageView;

.field private mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

.field private mMediaView:Lcom/facebook/ads/MediaView;

.field private mWindowManager:Landroid/widget/PopupWindow;

.field private nativeAd:Lcom/facebook/ads/NativeAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/FBNativeAds;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/NativeAd;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/FBNativeAds;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->nativeAd:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/FBNativeAds;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mAdView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cmplay/ad/Admob/FBNativeAds;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/FBNativeAds;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mAdView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cmplay/ad/Admob/FBNativeAds;)Lcom/facebook/ads/MediaView;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/FBNativeAds;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mMediaView:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/cmplay/ad/Admob/FBNativeAds;Lcom/facebook/ads/MediaView;)Lcom/facebook/ads/MediaView;
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/FBNativeAds;
    .param p1, "x1"    # Lcom/facebook/ads/MediaView;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mMediaView:Lcom/facebook/ads/MediaView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/cmplay/ad/Admob/FBNativeAds;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/FBNativeAds;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/cmplay/ad/Admob/FBNativeAds;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/ad/Admob/FBNativeAds;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mIconImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method public static releaseImageViewResouce(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 219
    if-nez p0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 222
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 223
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public adRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    const-string v0, "zzb_fb"

    const-string v1, "adRelease() ------"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mMediaView:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mMediaView:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->clearAnimation()V

    .line 206
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mMediaView:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mMediaView:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroyDrawingCache()V

    .line 209
    iput-object v2, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mMediaView:Lcom/facebook/ads/MediaView;

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mIconImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mIconImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->releaseImageViewResouce(Landroid/widget/ImageView;)V

    .line 214
    :cond_3
    iput-object v2, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mAdView:Landroid/view/View;

    .line 216
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->nativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 184
    invoke-virtual {p0}, Lcom/cmplay/ad/Admob/FBNativeAds;->adRelease()V

    .line 185
    iput-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->nativeAd:Lcom/facebook/ads/NativeAd;

    .line 187
    :cond_0
    iput-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mAdView:Landroid/view/View;

    .line 188
    return-void
.end method

.method public dismissWindow()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "zzb_fb"

    const-string v1, "dismissWindow ------"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    .line 196
    :cond_0
    return-void
.end method

.method public getStatusBarHeight()I
    .locals 5

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    :try_start_0
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 171
    if-lez v1, :cond_0

    .line 172
    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 5
    .param p1, "listener"    # Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "serverParameter"    # Ljava/lang/String;
    .param p5, "request"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "unused"    # Ljava/lang/Object;

    .prologue
    .line 56
    const-string v0, "zzb_fb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestInterstitialAd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 60
    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, p2, p4}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->nativeAd:Lcom/facebook/ads/NativeAd;

    .line 61
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->nativeAd:Lcom/facebook/ads/NativeAd;

    new-instance v1, Lcom/cmplay/ad/Admob/FBNativeAds$1;

    invoke-direct {v1, p0, p2}, Lcom/cmplay/ad/Admob/FBNativeAds$1;-><init>(Lcom/cmplay/ad/Admob/FBNativeAds;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 127
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->nativeAd:Lcom/facebook/ads/NativeAd;

    sget-object v1, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->ALL:Ljava/util/EnumSet;

    nop

    nop

    nop

    .line 128
    new-instance v0, Lcom/cmplay/util/c/a/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/b;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/b;->a(IIII)V

    .line 129
    return-void
.end method

.method public showInterstitial()V
    .locals 5

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mAdView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mAdView:Landroid/view/View;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cmplay/ad/Admob/FBNativeAds$2;

    invoke-direct {v1, p0}, Lcom/cmplay/ad/Admob/FBNativeAds$2;-><init>(Lcom/cmplay/ad/Admob/FBNativeAds;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    .line 148
    :cond_2
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mAdView:Landroid/view/View;

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/base/util/j;->f(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmplay/base/util/j;->d(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    .line 149
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 151
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mAdView:Landroid/view/View;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/cmplay/ad/Admob/FBNativeAds;->getStatusBarHeight()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 154
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mWindowManager:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/cmplay/ad/Admob/FBNativeAds$3;

    invoke-direct {v1, p0}, Lcom/cmplay/ad/Admob/FBNativeAds$3;-><init>(Lcom/cmplay/ad/Admob/FBNativeAds;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 161
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    goto :goto_0
.end method
