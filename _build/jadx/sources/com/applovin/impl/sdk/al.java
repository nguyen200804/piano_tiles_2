package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class al implements AppLovinNativeAdLoadListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdLoadListener f422a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ae f423b;

    al(ae aeVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.f423b = aeVar;
        this.f422a = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        this.f423b.a(this.f422a, i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        this.f423b.a(this.f422a, list);
    }
}
