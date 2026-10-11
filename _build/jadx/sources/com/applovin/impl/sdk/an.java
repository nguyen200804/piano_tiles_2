package com.applovin.impl.sdk;

import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class an {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bm f426a;

    /* renamed from: b, reason: collision with root package name */
    private int f427b;
    private String c;
    private Map d;

    an(bm bmVar, String str, Map map) {
        this(bmVar, str, map, 0);
    }

    an(bm bmVar, String str, Map map, int i) {
        this.f426a = bmVar;
        this.f427b = i;
        this.c = str + "&postback_ts=" + System.currentTimeMillis();
        this.d = map;
    }

    public int a() {
        return this.f427b;
    }

    public void a(int i) {
        this.f427b = i;
    }

    public String b() {
        return this.c;
    }

    public Map c() {
        return this.d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        an anVar = (an) obj;
        if (this.f427b != anVar.f427b) {
            return false;
        }
        if (this.c != null) {
            if (!this.c.equals(anVar.c)) {
                return false;
            }
        } else if (anVar.c != null) {
            return false;
        }
        if (this.d == null ? anVar.d != null : !this.d.equals(anVar.d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.c != null ? this.c.hashCode() : 0) + (this.f427b * 31)) * 31) + (this.d != null ? this.d.hashCode() : 0);
    }

    public String toString() {
        return "PostbackRequest{attemptNumber=" + this.f427b + ", targetUrl='" + this.c + "', requestBody=" + this.d + '}';
    }
}
