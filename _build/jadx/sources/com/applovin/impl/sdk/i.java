package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f537a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f538b;
    final /* synthetic */ h c;

    i(h hVar, AppLovinAd appLovinAd, int i) {
        this.c = hVar;
        this.f537a = appLovinAd;
        this.f538b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdRewardListener appLovinAdRewardListener;
        appLovinAdRewardListener = this.c.f;
        appLovinAdRewardListener.validationRequestFailed(this.f537a, this.f538b);
    }
}
