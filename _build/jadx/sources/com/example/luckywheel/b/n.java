package com.example.luckywheel.b;

import android.util.Log;
import com.example.luckywheel.a.e;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class n implements e.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2328a;

    n(a aVar) {
        this.f2328a = aVar;
    }

    @Override // com.example.luckywheel.a.e.a
    public void a(int i, Object obj) {
    }

    @Override // com.example.luckywheel.a.e.a
    public void a(JSONObject jSONObject) {
        Map map;
        Map map2;
        Log.d("liufan", "Ad Id Config Request : data = " + jSONObject);
        if (jSONObject != null) {
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                map = this.f2328a.f2312b;
                map.clear();
                map2 = this.f2328a.c;
                map2.clear();
                this.f2328a.a(jSONArray);
                this.f2328a.e = true;
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
