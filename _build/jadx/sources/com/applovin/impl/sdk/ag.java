package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ag implements AppLovinNativeAdPrecacheListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdPrecacheListener f413a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ae f414b;

    ag(ae aeVar, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        this.f414b = aeVar;
        this.f413a = appLovinNativeAdPrecacheListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.f414b.a(this.f413a, appLovinNativeAd, i, false);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
        this.f414b.a(this.f413a, appLovinNativeAd, false);
        this.f414b.a(appLovinNativeAd, this.f413a);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
    }
}
