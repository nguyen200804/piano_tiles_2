package com.example.luckywheel.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f2283a;

    m(e eVar) {
        this.f2283a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        j jVar;
        e eVar = this.f2283a;
        jVar = this.f2283a.h;
        eVar.a(jVar);
        this.f2283a.c();
    }
}
