package com.facebook.ads.internal.i.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    protected String f2762a;

    /* renamed from: b, reason: collision with root package name */
    protected j f2763b;
    protected String c;
    protected byte[] d;

    public l(String str, p pVar) {
        this.f2762a = "";
        if (str != null) {
            this.f2762a = str;
        }
        if (pVar != null) {
            this.f2762a += "?" + pVar.a();
        }
    }

    public String a() {
        return this.f2762a;
    }

    public j b() {
        return this.f2763b;
    }

    public String c() {
        return this.c;
    }

    public byte[] d() {
        return this.d;
    }
}
