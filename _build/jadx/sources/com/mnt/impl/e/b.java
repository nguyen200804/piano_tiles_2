package com.mnt.impl.e;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {
    private static final String h = com.mnt.impl.e.lk;
    private static final String i = com.mnt.impl.e.ll;
    private static final String j = com.mnt.impl.e.lm;
    private static final String k = com.mnt.impl.e.ln;
    private static final String l = com.mnt.impl.e.lo;

    /* renamed from: a, reason: collision with root package name */
    public String f3983a;

    /* renamed from: b, reason: collision with root package name */
    public String f3984b;
    public String c;
    public String d;
    public long e;
    public boolean f;
    public int g;

    public final boolean a() {
        return System.currentTimeMillis() > this.e;
    }

    public b(String str, String str2, String str3, long j2, int i2) {
        this.f3983a = str;
        this.f3984b = str2;
        this.d = str3;
        this.e = j2;
        this.g = i2;
    }

    public b(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f3983a = com.mnt.a.a.a(jSONObject, h, null);
                this.d = com.mnt.a.a.a(jSONObject, k, null);
                this.c = com.mnt.a.a.a(jSONObject, j, null);
                this.f3984b = com.mnt.a.a.a(jSONObject, i, null);
                this.e = jSONObject.optLong(l, 0L);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public final String b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(h, this.f3983a);
            jSONObject.put(k, this.d);
            jSONObject.put(j, this.c);
            jSONObject.put(i, this.f3984b);
            jSONObject.put(l, this.e);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}
