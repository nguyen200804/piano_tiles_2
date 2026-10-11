package com.applovin.impl.adview;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f361a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f362b;
    final /* synthetic */ af c;

    h(af afVar, boolean z, boolean z2) {
        this.c = afVar;
        this.f361a = z;
        this.f362b = z2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f361a && this.f362b) {
            this.c.i();
        } else {
            this.c.h();
        }
    }
}
