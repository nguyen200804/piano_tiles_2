package com.applovin.adview;

import com.applovin.sdk.AppLovinLogger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f305a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f306b;
    final /* synthetic */ c c;

    d(c cVar, int i, int i2) {
        this.c = cVar;
        this.f305a = i;
        this.f306b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        appLovinLogger = this.c.f304a.f303a.d;
        appLovinLogger.e("AppLovinInterstitialActivity", "Media player error (" + this.f305a + "," + this.f306b + ") - showing close button.");
        this.c.f304a.f303a.f();
    }
}
