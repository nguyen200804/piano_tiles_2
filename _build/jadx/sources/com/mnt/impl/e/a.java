package com.mnt.impl.e;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {
    private static final String f = com.mnt.impl.e.lp;
    private static final String g = com.mnt.impl.e.lq;
    private static final String h = com.mnt.impl.e.lr;
    private static final String i = com.mnt.impl.e.ls;
    private static final String j = com.mnt.impl.e.lt;
    private static final String k = com.mnt.impl.e.lu;
    private static final String l = com.mnt.impl.e.lv;
    private static final String m = com.mnt.impl.e.lw;
    private static final String n = com.mnt.impl.e.lx;
    private static final String o = com.mnt.impl.e.ly;

    /* renamed from: a, reason: collision with root package name */
    public String f3981a;

    /* renamed from: b, reason: collision with root package name */
    public String f3982b;
    public String c;
    public String d;
    public String e;
    private long p;
    private String q;
    private long r;
    private int s;
    private int t;

    public a(String str, long j2, String str2, String str3, String str4, String str5, long j3, int i2, String str6, int i3) {
        this.f3981a = str;
        this.p = j2;
        this.f3982b = str2;
        this.c = str3;
        this.d = str4;
        this.q = str5;
        this.r = j3;
        this.s = i2;
        this.e = str6;
        this.t = i3;
    }

    public a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f3981a = com.mnt.a.a.a(jSONObject, f, null);
            this.p = jSONObject.optLong(g, 0L);
            this.f3982b = com.mnt.a.a.a(jSONObject, h, null);
            this.c = com.mnt.a.a.a(jSONObject, this.c, null);
            this.d = com.mnt.a.a.a(jSONObject, j, null);
            this.q = com.mnt.a.a.a(jSONObject, k, null);
            this.r = jSONObject.optLong(l, 0L);
            this.s = jSONObject.optInt(m, 0);
            this.e = jSONObject.optString(n, null);
            this.t = jSONObject.optInt(o, 0);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public final boolean a() {
        return System.currentTimeMillis() - this.p > 1800000;
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(f, this.f3981a);
            jSONObject.put(g, this.p);
            jSONObject.put(h, this.f3982b);
            jSONObject.put(i, this.c);
            jSONObject.put(j, this.d);
            jSONObject.put(k, this.q);
            jSONObject.put(l, this.r);
            jSONObject.put(m, this.s);
            jSONObject.put(n, this.e);
            jSONObject.put(o, this.t);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}
