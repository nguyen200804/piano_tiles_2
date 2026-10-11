package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f553a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f554b;
    final /* synthetic */ h c;

    r(h hVar, AppLovinAd appLovinAd, int i) {
        this.c = hVar;
        this.f553a = appLovinAd;
        this.f554b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdRewardListener appLovinAdRewardListener;
        appLovinAdRewardListener = this.c.f;
        appLovinAdRewardListener.validationRequestFailed(this.f553a, this.f554b);
    }
}
