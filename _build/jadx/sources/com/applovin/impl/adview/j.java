package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAdLoadListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f365a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ af f366b;

    j(af afVar, int i) {
        this.f366b = afVar;
        this.f365a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        AppLovinAdLoadListener appLovinAdLoadListener2;
        appLovinAdLoadListener = this.f366b.g;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener2 = this.f366b.g;
            appLovinAdLoadListener2.failedToReceiveAd(this.f365a);
        }
    }
}
