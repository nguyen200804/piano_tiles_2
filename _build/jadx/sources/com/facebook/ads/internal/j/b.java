package com.facebook.ads.internal.j;

import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private c f2804a;

    /* renamed from: b, reason: collision with root package name */
    private float f2805b;
    private Map<String, String> c;

    public b(c cVar) {
        this(cVar, 0.0f);
    }

    public b(c cVar, float f) {
        this(cVar, f, null);
    }

    public b(c cVar, float f, Map<String, String> map) {
        this.f2804a = cVar;
        this.f2805b = f;
        if (map != null) {
            this.c = map;
        } else {
            this.c = new HashMap();
        }
    }

    public boolean a() {
        return this.f2804a == c.IS_VIEWABLE;
    }

    public int b() {
        return this.f2804a.a();
    }

    public float c() {
        return this.f2805b;
    }

    public Map<String, String> d() {
        return this.c;
    }
}
