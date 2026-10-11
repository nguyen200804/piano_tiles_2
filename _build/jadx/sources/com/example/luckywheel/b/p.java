package com.example.luckywheel.b;

import com.example.luckywheel.a.e;
import com.example.luckywheel.b.j;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class p implements e.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ j.b f2331a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ j f2332b;

    p(j jVar, j.b bVar) {
        this.f2332b = jVar;
        this.f2331a = bVar;
    }

    @Override // com.example.luckywheel.a.e.a
    public void a(int i, Object obj) {
        this.f2331a.a(i);
    }

    @Override // com.example.luckywheel.a.e.a
    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            this.f2331a.a(111);
            return;
        }
        int optInt = jSONObject.optInt("total");
        this.f2331a.b();
        e.a().a(optInt);
    }
}
