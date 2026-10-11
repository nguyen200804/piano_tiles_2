package com.applovin.nativeAds;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface AppLovinNativeAdService {
    void loadNativeAds(int i, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener);

    void precacheResources(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener);
}
