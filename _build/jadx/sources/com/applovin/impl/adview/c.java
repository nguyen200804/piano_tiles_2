package com.applovin.impl.adview;

import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.sdk.AppLovinAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f354a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ai f355b;

    c(ai aiVar, AppLovinAd appLovinAd) {
        this.f355b = aiVar;
        this.f354a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdView appLovinAdView;
        appLovinAdView = this.f355b.e;
        appLovinAdView.renderAd(this.f354a);
        this.f355b.a(((AppLovinAdImpl) this.f354a).getCloseStyle());
    }
}
