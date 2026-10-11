package com.example.luckywheel.b;

import android.content.Context;
import android.util.Log;
import com.example.luckywheel.a.e;
import com.example.luckywheel.b.l;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class q implements e.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f2333a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ l.a f2334b;
    final /* synthetic */ l c;

    q(l lVar, Context context, l.a aVar) {
        this.c = lVar;
        this.f2333a = context;
        this.f2334b = aVar;
    }

    @Override // com.example.luckywheel.a.e.a
    public void a(int i, Object obj) {
        if (this.f2334b != null) {
            this.f2334b.b();
        }
        Log.d("liufan", "UserAuth fail, errorCode = " + i);
    }

    @Override // com.example.luckywheel.a.e.a
    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            if (this.f2334b != null) {
                this.f2334b.b();
                return;
            }
            return;
        }
        Log.d("liufan", "UserAuth success : data = " + jSONObject);
        this.c.f2326a = jSONObject.optString("token");
        this.c.f2327b = jSONObject.optString("wuid");
        e.a().a(jSONObject.optInt("total"));
        this.c.b(this.f2333a, this.f2334b);
        this.c.d = System.currentTimeMillis();
    }
}
