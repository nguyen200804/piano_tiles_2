package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ai implements AppLovinNativeAdLoadListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f417a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ AppLovinNativeAdLoadListener f418b;
    final /* synthetic */ List c;
    final /* synthetic */ ae d;

    ai(ae aeVar, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, List list2) {
        this.d = aeVar;
        this.f417a = list;
        this.f418b = appLovinNativeAdLoadListener;
        this.c = list2;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        if (this.f418b != null) {
            this.f418b.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        this.d.c(this.f417a, new aj(this));
    }
}
