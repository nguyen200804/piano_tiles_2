package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ah implements AppLovinNativeAdPrecacheListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdPrecacheListener f415a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ae f416b;

    ah(ae aeVar, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        this.f416b = aeVar;
        this.f415a = appLovinNativeAdPrecacheListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        this.f416b.a(this.f415a, appLovinNativeAd, i, true);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
        this.f416b.a(this.f415a, appLovinNativeAd, true);
    }
}
