package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f386a;

    private y(AdViewControllerImpl adViewControllerImpl) {
        this.f386a = adViewControllerImpl;
    }

    /* synthetic */ y(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAd appLovinAd;
        ac acVar;
        AppLovinAd appLovinAd2;
        ac acVar2;
        AppLovinAd appLovinAd3;
        appLovinAd = this.f386a.m;
        if (appLovinAd != null) {
            acVar = this.f386a.h;
            appLovinAd2 = this.f386a.m;
            AdViewControllerImpl.b(acVar, appLovinAd2.getSize());
            acVar2 = this.f386a.h;
            appLovinAd3 = this.f386a.m;
            acVar2.a(appLovinAd3);
        }
    }
}
