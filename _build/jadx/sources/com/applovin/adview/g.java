package com.applovin.adview;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.applovin.impl.adview.u f309a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f310b;

    g(AppLovinInterstitialActivity appLovinInterstitialActivity, com.applovin.impl.adview.u uVar) {
        this.f310b = appLovinInterstitialActivity;
        this.f309a = uVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.applovin.impl.adview.u uVar;
        com.applovin.impl.adview.u uVar2;
        com.applovin.impl.adview.u uVar3 = this.f309a;
        uVar = this.f310b.x;
        if (uVar3.equals(uVar)) {
            this.f310b.j();
            return;
        }
        com.applovin.impl.adview.u uVar4 = this.f309a;
        uVar2 = this.f310b.z;
        if (uVar4.equals(uVar2)) {
            this.f310b.l();
        }
    }
}
