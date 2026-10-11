package com.android.volley;

/* compiled from: VolleyError.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class s extends Exception {

    /* renamed from: a, reason: collision with root package name */
    public final i f255a;

    /* renamed from: b, reason: collision with root package name */
    private long f256b;

    public s() {
        this.f255a = null;
    }

    public s(i iVar) {
        this.f255a = iVar;
    }

    public s(Throwable th) {
        super(th);
        this.f255a = null;
    }

    void a(long j) {
        this.f256b = j;
    }
}
