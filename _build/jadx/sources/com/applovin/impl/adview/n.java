package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class n implements AppLovinAdDisplayListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f371a;

    n(AdViewControllerImpl adViewControllerImpl) {
        this.f371a = adViewControllerImpl;
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        AppLovinAdDisplayListener appLovinAdDisplayListener;
        AppLovinAdDisplayListener appLovinAdDisplayListener2;
        appLovinAdDisplayListener = this.f371a.v;
        if (appLovinAdDisplayListener != null) {
            appLovinAdDisplayListener2 = this.f371a.v;
            appLovinAdDisplayListener2.adHidden(appLovinAd);
        }
    }
}
