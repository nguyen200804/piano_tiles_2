package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class g implements AppLovinAdLoadListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af f360a;

    g(af afVar) {
        this.f360a = afVar;
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        this.f360a.a(appLovinAd);
        this.f360a.showAndRender(appLovinAd);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        this.f360a.a(i);
    }
}
