package com.example.luckywheel.b;

import com.example.luckywheel.a.e;
import com.example.luckywheel.b.e;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class o implements e.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e.a f2329a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f2330b;

    o(e eVar, e.a aVar) {
        this.f2330b = eVar;
        this.f2329a = aVar;
    }

    @Override // com.example.luckywheel.a.e.a
    public void a(int i, Object obj) {
        if (i == 9) {
            this.f2330b.f2314b = 0;
        } else {
            i = 99;
        }
        if (this.f2329a != null) {
            this.f2329a.b(i);
        }
    }

    @Override // com.example.luckywheel.a.e.a
    public void a(JSONObject jSONObject) {
        int i;
        int i2;
        int i3;
        if (jSONObject != null) {
            int optInt = jSONObject.optInt("points", 0);
            this.f2330b.c = jSONObject.optInt("total");
            this.f2330b.f2314b = jSONObject.optInt("remain_quota", 0);
            i = this.f2330b.c;
            e eVar = this.f2330b;
            i2 = this.f2330b.c;
            eVar.c = i2 + optInt;
            e eVar2 = this.f2330b;
            i3 = this.f2330b.c;
            eVar2.a(true, i, i3);
            if (this.f2329a != null) {
                this.f2329a.a(optInt);
            }
        }
    }
}
