package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAdLoadListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f533a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f534b;

    g(e eVar, int i) {
        this.f534b = eVar;
        this.f533a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        appLovinAdLoadListener = this.f534b.f530b;
        appLovinAdLoadListener.failedToReceiveAd(this.f533a);
    }
}
