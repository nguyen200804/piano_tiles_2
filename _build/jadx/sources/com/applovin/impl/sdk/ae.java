package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.nativeAds.AppLovinNativeAdService;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ae implements AppLovinNativeAdService {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f409a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f410b = new Object();

    ae(AppLovinSdkImpl appLovinSdkImpl) {
        this.f409a = appLovinSdkImpl;
    }

    private List a(AppLovinNativeAd appLovinNativeAd) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add((NativeAdImpl) appLovinNativeAd);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        if (appLovinNativeAd.isVideoPrecached()) {
            appLovinNativeAdPrecacheListener.onNativeAdVideoPreceached(appLovinNativeAd);
            return;
        }
        this.f409a.a().a(new ch(this.f409a, a(appLovinNativeAd), new ah(this, appLovinNativeAdPrecacheListener)), bp.MAIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, int i) {
        if (appLovinNativeAdLoadListener != null) {
            try {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(i);
            } catch (Exception e) {
                this.f409a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, List list) {
        if (appLovinNativeAdLoadListener != null) {
            try {
                appLovinNativeAdLoadListener.onNativeAdsLoaded(list);
            } catch (Exception e) {
                this.f409a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener, AppLovinNativeAd appLovinNativeAd, int i, boolean z) {
        if (appLovinNativeAdPrecacheListener != null) {
            try {
                if (z) {
                    appLovinNativeAdPrecacheListener.onNativeAdVideoPrecachingFailed(appLovinNativeAd, i);
                } else {
                    appLovinNativeAdPrecacheListener.onNativeAdImagePrecachingFailed(appLovinNativeAd, i);
                }
            } catch (Exception e) {
                this.f409a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener, AppLovinNativeAd appLovinNativeAd, boolean z) {
        if (appLovinNativeAdPrecacheListener != null) {
            try {
                if (z) {
                    appLovinNativeAdPrecacheListener.onNativeAdVideoPreceached(appLovinNativeAd);
                } else {
                    appLovinNativeAdPrecacheListener.onNativeAdImagesPrecached(appLovinNativeAd);
                }
            } catch (Exception e) {
                this.f409a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    private void b(List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.f409a.a().a(new cf(this.f409a, list, new ak(this, appLovinNativeAdLoadListener)), bp.MAIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.f409a.a().a(new ch(this.f409a, list, new al(this, appLovinNativeAdLoadListener)), bp.MAIN);
    }

    public void a(List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        int intValue = ((Integer) this.f409a.a(av.aY)).intValue();
        if (intValue <= 0) {
            if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsLoaded(list);
                return;
            }
            return;
        }
        List list2 = list;
        int size = list2.size();
        if (size == 0) {
            if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(AppLovinErrorCodes.UNABLE_TO_PREPARE_NATIVE_AD);
            }
        } else {
            int min = Math.min(intValue, size);
            List subList = list2.subList(0, min);
            b(subList, new ai(this, subList, appLovinNativeAdLoadListener, list2.subList(min, size)));
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdService
    public void loadNativeAds(int i, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        AppLovinNativeAd appLovinNativeAd = null;
        synchronized (this.f410b) {
            if (i == 1) {
                if (this.f409a.d().e(NativeAdImpl.SPEC_NATIVE)) {
                    appLovinNativeAd = (AppLovinNativeAd) this.f409a.d().b(NativeAdImpl.SPEC_NATIVE);
                }
            }
        }
        if (appLovinNativeAd != null) {
            a(appLovinNativeAdLoadListener, Arrays.asList(appLovinNativeAd));
        } else {
            this.f409a.a().a(new bk(this.f409a, i, new af(this, appLovinNativeAdLoadListener)), bp.MAIN);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdService
    public void precacheResources(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        if (appLovinNativeAd.isImagePrecached()) {
            appLovinNativeAdPrecacheListener.onNativeAdImagesPrecached(appLovinNativeAd);
            a(appLovinNativeAd, appLovinNativeAdPrecacheListener);
        } else {
            this.f409a.a().a(new cf(this.f409a, a(appLovinNativeAd), new ag(this, appLovinNativeAdPrecacheListener)), bp.MAIN);
        }
    }
}
