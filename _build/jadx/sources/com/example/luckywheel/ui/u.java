package com.example.luckywheel.ui;

import android.os.Handler;
import com.example.luckywheel.b.l;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class u implements l.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f2392a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ LuckyWheelActivity f2393b;

    u(LuckyWheelActivity luckyWheelActivity, n nVar) {
        this.f2393b = luckyWheelActivity;
        this.f2392a = nVar;
    }

    @Override // com.example.luckywheel.b.l.a
    public void a() {
        Handler handler;
        handler = this.f2393b.f2349a;
        handler.post(new v(this));
    }

    @Override // com.example.luckywheel.b.l.a
    public void b() {
        Handler handler;
        handler = this.f2393b.f2349a;
        handler.post(new w(this));
    }
}
