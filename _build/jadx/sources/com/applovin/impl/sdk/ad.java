package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinSdkUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ad implements AppLovinNativeAdPrecacheListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bb f408a;

    ad(bb bbVar) {
        this.f408a = bbVar;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.f408a.b(NativeAdImpl.SPEC_NATIVE, i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
        if (AppLovinSdkUtils.isValidString(appLovinNativeAd.getVideoUrl())) {
            return;
        }
        this.f408a.c((ay) appLovinNativeAd);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.f408a.f433b.w("NativeAdPreloadManager", "Video failed to cache during native ad preload. " + i);
        this.f408a.c((ay) appLovinNativeAd);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
        this.f408a.c((ay) appLovinNativeAd);
    }
}
