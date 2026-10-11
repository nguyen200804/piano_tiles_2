package com.applovin.impl.adview;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af f367a;

    k(af afVar) {
        this.f367a = afVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        w wVar;
        wVar = this.f367a.m;
        wVar.dismiss();
    }
}
