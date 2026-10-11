package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class cf extends bf {
    public cf(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super("TaskCacheNativeAdImages", appLovinSdkImpl, list, appLovinNativeAdLoadListener);
    }

    public cf(AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        super("TaskCacheNativeAdImages", appLovinSdkImpl, list, appLovinNativeAdPrecacheListener);
    }

    private boolean b(NativeAdImpl nativeAdImpl) {
        a(nativeAdImpl, AppLovinErrorCodes.UNABLE_TO_PRECACHE_IMAGE_RESOURCES);
        return false;
    }

    @Override // com.applovin.impl.sdk.bf
    protected void a(NativeAdImpl nativeAdImpl) {
        if (this.f449b != null) {
            this.f449b.onNativeAdImagesPrecached(nativeAdImpl);
        }
    }

    protected void a(NativeAdImpl nativeAdImpl, int i) {
        if (this.f449b != null) {
            this.f449b.onNativeAdImagePrecachingFailed(nativeAdImpl, i);
        }
    }

    @Override // com.applovin.impl.sdk.bf
    protected boolean a(NativeAdImpl nativeAdImpl, y yVar) {
        this.f.getLogger().d("TaskCacheNativeAdImages", "Beginning slot image caching for ad " + nativeAdImpl.getAdId());
        String a2 = a(nativeAdImpl.getSourceIconUrl(), yVar);
        if (a2 == null) {
            return b(nativeAdImpl);
        }
        nativeAdImpl.setIconUrl(a2);
        String a3 = a(nativeAdImpl.getSourceImageUrl(), yVar);
        if (a3 == null) {
            return b(nativeAdImpl);
        }
        nativeAdImpl.setImageUrl(a3);
        return true;
    }

    @Override // com.applovin.impl.sdk.bf, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
