package com.mnt.impl.e;

import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public String f3989a;

    /* renamed from: b, reason: collision with root package name */
    public int f3990b;
    public String c;
    public String d;
    public String e;
    public int f;
    private int g;
    private int h;
    private int i;

    public f(JSONObject jSONObject) {
        this.g = jSONObject.optInt(com.mnt.impl.e.lz, 0);
        this.f3989a = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.lA, null);
        this.c = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.lB, null);
        this.f3990b = jSONObject.optInt(com.mnt.impl.e.lC, 0);
        this.h = jSONObject.optInt(com.mnt.impl.e.lD, 1);
        this.d = jSONObject.optString(com.mnt.impl.e.lE, null);
        this.f = jSONObject.optInt(com.mnt.impl.e.lF, 0);
        this.i = jSONObject.optInt(com.mnt.impl.e.lG, 0);
        this.e = jSONObject.optString(com.mnt.impl.e.lH, com.mnt.impl.e.lI);
    }

    public final String toString() {
        return com.mnt.impl.e.lJ + com.mnt.impl.e.lK + this.g + com.mnt.impl.e.lL + this.f3989a + '\'' + com.mnt.impl.e.lM + this.f3990b + com.mnt.impl.e.lN + this.c + '\'' + com.mnt.impl.e.lO + this.h + com.mnt.impl.e.lP + this.d + '\'' + com.mnt.impl.e.lQ + this.e + '\'' + com.mnt.impl.e.lR + this.f + com.mnt.impl.e.lS + this.i + '}';
    }
}
