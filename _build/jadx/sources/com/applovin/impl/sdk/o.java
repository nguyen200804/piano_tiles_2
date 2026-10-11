package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f547a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Map f548b;
    final /* synthetic */ h c;

    o(h hVar, AppLovinAd appLovinAd, Map map) {
        this.c = hVar;
        this.f547a = appLovinAd;
        this.f548b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdRewardListener appLovinAdRewardListener;
        appLovinAdRewardListener = this.c.f;
        appLovinAdRewardListener.userRewardVerified(this.f547a, this.f548b);
    }
}
