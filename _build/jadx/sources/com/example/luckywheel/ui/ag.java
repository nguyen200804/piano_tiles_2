package com.example.luckywheel.ui;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ag implements com.example.luckywheel.d.c {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.example.luckywheel.d.b f2361a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ LuckyWheelView f2362b;

    ag(LuckyWheelView luckyWheelView, com.example.luckywheel.d.b bVar) {
        this.f2362b = luckyWheelView;
        this.f2361a = bVar;
    }

    @Override // com.example.luckywheel.d.c
    public void a() {
    }

    @Override // com.example.luckywheel.d.c
    public void a(int i) {
        boolean i2;
        i2 = this.f2362b.i();
        if (i2) {
            this.f2362b.k();
            this.f2361a.b();
        }
    }

    @Override // com.example.luckywheel.d.c
    public void b() {
        boolean i;
        i = this.f2362b.i();
        if (i) {
            return;
        }
        this.f2362b.n = 10086;
        this.f2362b.m = 1;
        this.f2362b.l = 0;
    }
}
