package com.example.luckywheel.a;

import android.os.Handler;
import android.util.Log;
import com.example.luckywheel.a.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class n implements j {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f2284a;

    n(e eVar) {
        this.f2284a = eVar;
    }

    @Override // com.example.luckywheel.a.j
    public void a(int i, Object obj) {
        Handler handler;
        int i2;
        e.a aVar;
        e.a aVar2;
        e.a aVar3;
        e.a aVar4;
        Handler handler2;
        this.f2284a.e = false;
        handler = this.f2284a.d;
        if (handler != null) {
            handler2 = this.f2284a.d;
            handler2.removeCallbacks(null);
        }
        if (i == 0) {
            i iVar = (i) obj;
            aVar3 = this.f2284a.c;
            if (aVar3 != null) {
                aVar4 = this.f2284a.c;
                aVar4.a(iVar.d());
            }
            this.f2284a.f = 0;
            return;
        }
        i2 = this.f2284a.f;
        if (i2 < 1 && i != 9) {
            this.f2284a.f();
            e.e(this.f2284a);
            Log.d("EasyBaseRequest", getClass() + ", request retry!");
        } else {
            aVar = this.f2284a.c;
            if (aVar != null) {
                aVar2 = this.f2284a.c;
                aVar2.a(i, obj);
            }
            this.f2284a.f = 0;
        }
    }
}
