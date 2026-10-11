package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f363a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ af f364b;

    i(af afVar, AppLovinAd appLovinAd) {
        this.f364b = afVar;
        this.f363a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        AppLovinAdLoadListener appLovinAdLoadListener2;
        appLovinAdLoadListener = this.f364b.g;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener2 = this.f364b.g;
            appLovinAdLoadListener2.adReceived(this.f363a);
        }
    }
}
