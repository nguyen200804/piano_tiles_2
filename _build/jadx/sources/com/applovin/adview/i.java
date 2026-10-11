package com.applovin.adview;

import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class i implements AppLovinAdDisplayListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f313a;

    i(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f313a = appLovinInterstitialActivity;
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        boolean z;
        this.f313a.g = (AppLovinAdImpl) appLovinAd;
        z = this.f313a.i;
        if (z) {
            return;
        }
        this.f313a.a(appLovinAd);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        this.f313a.b(appLovinAd);
    }
}
