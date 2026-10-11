package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f551a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Map f552b;
    final /* synthetic */ h c;

    q(h hVar, AppLovinAd appLovinAd, Map map) {
        this.c = hVar;
        this.f551a = appLovinAd;
        this.f552b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdRewardListener appLovinAdRewardListener;
        appLovinAdRewardListener = this.c.f;
        appLovinAdRewardListener.userRewardRejected(this.f551a, this.f552b);
    }
}
