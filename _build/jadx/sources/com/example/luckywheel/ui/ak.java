package com.example.luckywheel.ui;

import android.content.Context;
import com.example.luckywheel.b.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ak implements e.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LuckyWheelView f2367a;

    ak(LuckyWheelView luckyWheelView) {
        this.f2367a = luckyWheelView;
    }

    @Override // com.example.luckywheel.b.e.a
    public void a(int i) {
        Context context;
        Context context2;
        this.f2367a.k = true;
        this.f2367a.l = i;
        this.f2367a.n = 0;
        this.f2367a.m = 2;
        context = this.f2367a.g;
        com.example.luckywheel.d.d.a(context).a(0);
        context2 = this.f2367a.g;
        com.example.luckywheel.d.d.a(context2).b(1);
    }

    @Override // com.example.luckywheel.b.e.a
    public void b(int i) {
        this.f2367a.k = false;
        if (i == 9) {
            this.f2367a.n = 9;
        } else {
            this.f2367a.n = -1;
        }
    }
}
