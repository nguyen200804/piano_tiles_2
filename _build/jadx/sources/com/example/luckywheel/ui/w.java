package com.example.luckywheel.ui;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ u f2395a;

    w(u uVar) {
        this.f2395a = uVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2395a.f2392a.dismiss();
        this.f2395a.f2393b.e();
    }
}
