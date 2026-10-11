package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ak implements AppLovinNativeAdLoadListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdLoadListener f420a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ae f421b;

    ak(ae aeVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.f421b = aeVar;
        this.f420a = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        if (this.f420a != null) {
            this.f420a.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        if (this.f420a != null) {
            this.f420a.onNativeAdsLoaded(list);
        }
    }
}
