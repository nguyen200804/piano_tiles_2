package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class af implements AppLovinNativeAdLoadListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdLoadListener f411a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ae f412b;

    af(ae aeVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.f412b = aeVar;
        this.f411a = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        this.f412b.a(this.f411a, i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        this.f412b.a(list, this.f411a);
    }
}
