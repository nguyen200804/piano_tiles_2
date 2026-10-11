package com.tencent.a.a.a.a;

import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    String f4814a = null;

    /* renamed from: b, reason: collision with root package name */
    String f4815b = null;
    String c = "0";
    long d = 0;

    static c c(String str) {
        c cVar = new c();
        if (h.d(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.isNull("ui")) {
                    cVar.f4814a = jSONObject.getString("ui");
                }
                if (!jSONObject.isNull("mc")) {
                    cVar.f4815b = jSONObject.getString("mc");
                }
                if (!jSONObject.isNull("mid")) {
                    cVar.c = jSONObject.getString("mid");
                }
                if (!jSONObject.isNull("ts")) {
                    cVar.d = jSONObject.getLong("ts");
                }
            } catch (JSONException e) {
                Log.w("MID", e);
            }
        }
        return cVar;
    }

    private JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            h.a(jSONObject, "ui", this.f4814a);
            h.a(jSONObject, "mc", this.f4815b);
            h.a(jSONObject, "mid", this.c);
            jSONObject.put("ts", this.d);
        } catch (JSONException e) {
            Log.w("MID", e);
        }
        return jSONObject;
    }

    public final String c() {
        return this.c;
    }

    public final String toString() {
        return d().toString();
    }
}
