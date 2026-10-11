package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class m implements AppLovinAdClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f370a;

    m(AdViewControllerImpl adViewControllerImpl) {
        this.f370a = adViewControllerImpl;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        AppLovinAdClickListener appLovinAdClickListener;
        AppLovinAdClickListener appLovinAdClickListener2;
        appLovinAdClickListener = this.f370a.x;
        if (appLovinAdClickListener != null) {
            appLovinAdClickListener2 = this.f370a.x;
            appLovinAdClickListener2.adClicked(appLovinAd);
        }
    }
}
