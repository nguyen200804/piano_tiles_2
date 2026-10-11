package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f531a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f532b;

    f(e eVar, AppLovinAd appLovinAd) {
        this.f532b = eVar;
        this.f531a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        appLovinAdLoadListener = this.f532b.f530b;
        appLovinAdLoadListener.adReceived(this.f531a);
    }
}
