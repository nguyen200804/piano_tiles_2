package com.applovin.adview;

import com.applovin.impl.adview.af;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class j implements AppLovinAdClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f314a;

    j(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f314a = appLovinInterstitialActivity;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        af afVar;
        afVar = this.f314a.f298b;
        AppLovinAdClickListener e = afVar.e();
        if (e != null) {
            e.adClicked(appLovinAd);
        }
    }
}
