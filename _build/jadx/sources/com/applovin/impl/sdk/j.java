package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f539a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f540b;

    j(h hVar, AppLovinAd appLovinAd) {
        this.f540b = hVar;
        this.f539a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdDisplayListener appLovinAdDisplayListener;
        appLovinAdDisplayListener = this.f540b.c;
        appLovinAdDisplayListener.adHidden(this.f539a);
    }
}
