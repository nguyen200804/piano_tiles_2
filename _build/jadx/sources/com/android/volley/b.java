package com.android.volley;

import java.util.Collections;
import java.util.Map;

/* compiled from: Cache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface b {
    a a(String str);

    void a();

    void a(String str, a aVar);

    /* compiled from: Cache.java */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public byte[] f228a;

        /* renamed from: b, reason: collision with root package name */
        public String f229b;
        public long c;
        public long d;
        public long e;
        public long f;
        public Map<String, String> g = Collections.emptyMap();

        public boolean a() {
            return this.e < System.currentTimeMillis();
        }

        public boolean b() {
            return this.f < System.currentTimeMillis();
        }
    }
}
