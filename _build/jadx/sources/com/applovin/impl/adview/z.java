package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdUpdateListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class z implements AppLovinAdLoadListener, AppLovinAdUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    private final WeakReference f387a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinAdService f388b;
    private final AppLovinLogger c;

    z(AdViewControllerImpl adViewControllerImpl, AppLovinSdk appLovinSdk) {
        if (adViewControllerImpl == null) {
            throw new IllegalArgumentException("No view specified");
        }
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f387a = new WeakReference(adViewControllerImpl);
        this.c = appLovinSdk.getLogger();
        this.f388b = appLovinSdk.getAdService();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        AdViewControllerImpl adViewControllerImpl = (AdViewControllerImpl) this.f387a.get();
        if (adViewControllerImpl != null) {
            adViewControllerImpl.a(appLovinAd);
        } else {
            this.c.userError("AppLovinAdView", "Ad view has been garbage collected by the time an ad was recieved");
        }
    }

    @Override // com.applovin.sdk.AppLovinAdUpdateListener
    public void adUpdated(AppLovinAd appLovinAd) {
        AdViewControllerImpl adViewControllerImpl = (AdViewControllerImpl) this.f387a.get();
        if (adViewControllerImpl != null) {
            adViewControllerImpl.a(appLovinAd);
        } else {
            this.f388b.removeAdUpdateListener(this, appLovinAd.getSize());
            this.c.userError("AppLovinAdView", "Ad view has been garbage collected by the time an ad was updated");
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        AdViewControllerImpl adViewControllerImpl = (AdViewControllerImpl) this.f387a.get();
        if (adViewControllerImpl != null) {
            adViewControllerImpl.a(i);
        }
    }

    public String toString() {
        return "[AdViewController listener: " + hashCode() + "]";
    }
}
