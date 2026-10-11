package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class aj implements AppLovinNativeAdLoadListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f419a;

    aj(ai aiVar) {
        this.f419a = aiVar;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        if (this.f419a.f418b != null) {
            this.f419a.f418b.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
        if (this.f419a.f418b != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.f419a.f417a);
            arrayList.addAll(this.f419a.c);
            this.f419a.f418b.onNativeAdsLoaded(arrayList);
        }
    }
}
