package com.example.luckywheel.ui;

import android.os.Handler;
import com.example.luckywheel.b.j;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class an implements j.b {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f2371a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ k f2372b;

    an(k kVar, l lVar) {
        this.f2372b = kVar;
        this.f2371a = lVar;
    }

    @Override // com.example.luckywheel.b.j.b
    public void a() {
        this.f2372b.dismiss();
        this.f2371a.show();
    }

    @Override // com.example.luckywheel.b.j.b
    public void a(int i) {
        Handler handler;
        com.example.luckywheel.c.a aVar;
        com.example.luckywheel.c.a aVar2;
        int i2;
        handler = this.f2372b.c;
        handler.post(new ap(this));
        aVar = this.f2372b.d;
        if (aVar != null) {
            aVar2 = this.f2372b.d;
            i2 = this.f2372b.f2381a;
            aVar2.a((byte) 3, i2, i);
        }
    }

    @Override // com.example.luckywheel.b.j.b
    public void b() {
        Handler handler;
        com.example.luckywheel.c.a aVar;
        com.example.luckywheel.c.a aVar2;
        int i;
        handler = this.f2372b.c;
        handler.post(new ao(this));
        aVar = this.f2372b.d;
        if (aVar != null) {
            aVar2 = this.f2372b.d;
            i = this.f2372b.f2381a;
            aVar2.a((byte) 2, i, 0);
        }
    }
}
