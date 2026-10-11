package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ch extends bf {
    public ch(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super("TaskCacheNativeAdVideos", appLovinSdkImpl, list, appLovinNativeAdLoadListener);
    }

    public ch(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        super("TaskCacheNativeAdVideos", appLovinSdkImpl, list, appLovinNativeAdPrecacheListener);
    }

    private boolean b(NativeAdImpl nativeAdImpl) {
        this.g.w("TaskCacheNativeAdVideos", "Unable to cache video resource " + nativeAdImpl.getSourceVideoUrl());
        a(nativeAdImpl, AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
        return false;
    }

    @Override // com.applovin.impl.sdk.bf
    protected void a(NativeAdImpl nativeAdImpl) {
        if (this.f449b != null) {
            this.f449b.onNativeAdVideoPreceached(nativeAdImpl);
        }
    }

    protected void a(NativeAdImpl nativeAdImpl, int i) {
        if (this.f449b != null) {
            this.f449b.onNativeAdVideoPrecachingFailed(nativeAdImpl, i);
        }
    }

    @Override // com.applovin.impl.sdk.bf
    protected boolean a(NativeAdImpl nativeAdImpl, y yVar) {
        if (!AppLovinSdkUtils.isValidString(nativeAdImpl.getSourceVideoUrl())) {
            this.f.getLogger().d("TaskCacheNativeAdVideos", "No video attached to ad, nothing to cache...");
        }
        this.f.getLogger().d("TaskCacheNativeAdVideos", "Beginning slot video caching for ad " + nativeAdImpl.getAdId());
        String a2 = a(nativeAdImpl.getSourceVideoUrl(), yVar);
        if (a2 == null) {
            return b(nativeAdImpl);
        }
        nativeAdImpl.setVideoUrl(a2);
        return true;
    }

    @Override // com.applovin.impl.sdk.bf, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
