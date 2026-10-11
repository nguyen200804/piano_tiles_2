package com.mnt.impl.dsp;

import android.text.TextUtils;
import com.mnt.impl.b.k;
import com.mnt.impl.e;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    int f3971a;

    /* renamed from: b, reason: collision with root package name */
    int f3972b;
    String c;
    public a d;
    public b e;

    public c(String str) {
        this.d = new a();
        this.e = new b();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject optJSONObject = jSONObject.optJSONObject(e.ap);
                if (optJSONObject != null) {
                    this.f3971a = optJSONObject.optInt(e.aq);
                    optJSONObject.optString(e.ar);
                    optJSONObject.optLong(e.as);
                    int optInt = optJSONObject.optInt(e.at, 0);
                    String optString = jSONObject.optString(e.au);
                    if (optInt == 1) {
                        optString = k.h(optString);
                    } else if (optInt == 2) {
                        optString = com.mnt.impl.i.a.b.b(k.h(optString), e.av);
                    }
                    JSONObject jSONObject2 = new JSONObject(optString);
                    jSONObject2.optString(e.aw);
                    this.f3972b = jSONObject2.optInt(e.ax);
                    this.c = jSONObject2.optString(e.ay);
                    this.d = new a(jSONObject2.optJSONObject(e.az));
                    this.e = new b(jSONObject2.optJSONObject(e.aA));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public String f3973a;

        /* renamed from: b, reason: collision with root package name */
        public String f3974b;
        public int c;
        public String d;

        a() {
        }

        a(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f3973a = jSONObject.optString(e.aB);
                jSONObject.optString(e.aC);
                this.f3974b = jSONObject.optString(e.aD);
                this.c = jSONObject.optInt(e.aE);
                this.d = jSONObject.optString(e.aF);
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        String f3975a;

        /* renamed from: b, reason: collision with root package name */
        public String f3976b;

        b() {
        }

        b(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f3975a = jSONObject.optString(e.aG);
                this.f3976b = jSONObject.optString(e.aH);
            }
        }
    }
}
