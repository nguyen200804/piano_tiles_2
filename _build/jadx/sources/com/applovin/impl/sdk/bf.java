package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class bf extends au {

    /* renamed from: a, reason: collision with root package name */
    protected AppLovinNativeAdLoadListener f448a;

    /* renamed from: b, reason: collision with root package name */
    protected AppLovinNativeAdPrecacheListener f449b;
    private List c;
    private int d;

    bf(String str, AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super(str, appLovinSdkImpl);
        this.d = 0;
        this.f448a = appLovinNativeAdLoadListener;
        this.c = list;
    }

    bf(String str, AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        super(str, appLovinSdkImpl);
        this.d = 0;
        if (list == null) {
            throw new IllegalArgumentException("Slots cannot be null");
        }
        this.c = list;
        this.f449b = appLovinNativeAdPrecacheListener;
    }

    private void a(int i) {
        if (this.f448a != null) {
            this.f448a.onNativeAdsFailedToLoad(i);
        }
    }

    private void a(List list) {
        if (this.f448a != null) {
            this.f448a.onNativeAdsLoaded(list);
        }
    }

    protected String a(String str, y yVar) {
        try {
            String a2 = yVar.a(this.h, str, true);
            if (a2 != null) {
                return a2;
            }
            this.g.w(a(), "Unable to cache icon resource " + str);
            return null;
        } catch (Exception e) {
            this.g.w(a(), "Unable to cache icon resource " + str, e);
            return null;
        }
    }

    protected abstract void a(NativeAdImpl nativeAdImpl);

    protected abstract boolean a(NativeAdImpl nativeAdImpl, y yVar);

    @Override // java.lang.Runnable
    public void run() {
        for (NativeAdImpl nativeAdImpl : this.c) {
            y fileManager = this.f.getFileManager();
            this.f.getLogger().d(a(), "Beginning resource caching phase...");
            if (a(nativeAdImpl, fileManager)) {
                this.d++;
                a(nativeAdImpl);
            } else {
                this.f.getLogger().e(a(), "Unable to cache resources");
            }
        }
        try {
            if (this.d == this.c.size()) {
                a(this.c);
            } else if (((Boolean) this.f.a(av.aN)).booleanValue()) {
                this.f.getLogger().e(a(), "Mismatch between successful populations and requested size");
                a(-6);
            } else {
                a(this.c);
            }
        } catch (Throwable th) {
            this.f.getLogger().userError(a(), "Encountered exception while notifying publisher code", th);
        }
    }
}
