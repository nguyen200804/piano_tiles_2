package com.example.luckywheel.ui;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ u f2394a;

    v(u uVar) {
        this.f2394a = uVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2394a.f2392a.dismiss();
        this.f2394a.f2393b.d();
    }
}
