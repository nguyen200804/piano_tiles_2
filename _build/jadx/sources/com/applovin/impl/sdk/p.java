package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f549a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Map f550b;
    final /* synthetic */ h c;

    p(h hVar, AppLovinAd appLovinAd, Map map) {
        this.c = hVar;
        this.f549a = appLovinAd;
        this.f550b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdRewardListener appLovinAdRewardListener;
        appLovinAdRewardListener = this.c.f;
        appLovinAdRewardListener.userOverQuota(this.f549a, this.f550b);
    }
}
