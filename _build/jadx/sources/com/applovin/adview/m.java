package com.applovin.adview;

import com.applovin.sdk.AppLovinLogger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f317a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f318b;
    final /* synthetic */ l c;

    m(l lVar, int i, int i2) {
        this.c = lVar;
        this.f317a = i;
        this.f318b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        appLovinLogger = this.c.f316a.d;
        appLovinLogger.e("AppLovinInterstitialActivity", "Video view error (" + this.f317a + "," + this.f318b + ") - showing close button.");
        this.c.f316a.f();
    }
}
