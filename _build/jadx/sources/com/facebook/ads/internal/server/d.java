package com.facebook.ads.internal.server;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private com.facebook.ads.internal.f.d f2823a;

    /* renamed from: b, reason: collision with root package name */
    private a f2824b;

    public enum a {
        UNKNOWN,
        ERROR,
        ADS
    }

    public d(a aVar, com.facebook.ads.internal.f.d dVar) {
        this.f2824b = aVar;
        this.f2823a = dVar;
    }

    public a a() {
        return this.f2824b;
    }

    public com.facebook.ads.internal.f.d b() {
        return this.f2823a;
    }
}
