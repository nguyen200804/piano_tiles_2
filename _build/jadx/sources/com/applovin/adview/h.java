package com.applovin.adview;

import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f311a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ UUID f312b;
    final /* synthetic */ AppLovinInterstitialActivity c;

    h(AppLovinInterstitialActivity appLovinInterstitialActivity, int i, UUID uuid) {
        this.c = appLovinInterstitialActivity;
        this.f311a = i;
        this.f312b = uuid;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.a(this.f311a, this.f312b);
    }
}
