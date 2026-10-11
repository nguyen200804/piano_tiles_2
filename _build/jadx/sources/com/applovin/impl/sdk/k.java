package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f541a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f542b;

    k(h hVar, AppLovinAd appLovinAd) {
        this.f542b = hVar;
        this.f541a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdClickListener appLovinAdClickListener;
        appLovinAdClickListener = this.f542b.d;
        appLovinAdClickListener.adClicked(this.f541a);
    }
}
