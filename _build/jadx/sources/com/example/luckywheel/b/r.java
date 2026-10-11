package com.example.luckywheel.b;

import android.util.Log;
import com.example.luckywheel.a.e;
import com.example.luckywheel.b.l;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class r implements e.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l.a f2335a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f2336b;

    r(l lVar, l.a aVar) {
        this.f2336b = lVar;
        this.f2335a = aVar;
    }

    @Override // com.example.luckywheel.a.e.a
    public void a(int i, Object obj) {
        if (this.f2335a != null) {
            this.f2335a.b();
        }
        Log.d("liufan", "RedeemInfoRequest fail, errorCode = " + i);
    }

    @Override // com.example.luckywheel.a.e.a
    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            this.f2335a.b();
            return;
        }
        this.f2335a.a();
        Log.d("liufan", "RedeemInfoRequest success : data = " + jSONObject);
        j.a().a(jSONObject);
    }
}
