package com.facebook.ads.internal.g;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    protected final String f2732a;

    /* renamed from: b, reason: collision with root package name */
    protected final double f2733b;
    protected final double c;
    protected final String d;
    protected final Map<String, String> e;

    public d(Context context, String str, double d, String str2, Map<String, String> map) {
        this.f2732a = str;
        this.f2733b = System.currentTimeMillis() / 1000.0d;
        this.c = d;
        this.d = str2;
        HashMap hashMap = new HashMap();
        if (map != null && !map.isEmpty()) {
            hashMap.putAll(map);
        }
        if (c()) {
            hashMap.put("analog", com.facebook.ads.internal.util.g.a(com.facebook.ads.internal.util.a.a()));
        }
        this.e = a(hashMap);
    }

    public d(String str, double d, String str2, Map<String, String> map) {
        this(null, str, d, str2, map);
    }

    private static Map<String, String> a(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (value != null) {
                hashMap.put(key, value);
            }
        }
        return hashMap;
    }

    public abstract h a();

    public abstract String b();

    public abstract boolean c();

    public String d() {
        return this.f2732a;
    }

    public double e() {
        return this.f2733b;
    }

    public double f() {
        return this.c;
    }

    public String g() {
        return this.d;
    }

    public Map<String, String> h() {
        return this.e;
    }

    public final boolean i() {
        return a() == h.IMMEDIATE;
    }

    public final boolean j() {
        return !TextUtils.isEmpty(this.f2732a);
    }
}
