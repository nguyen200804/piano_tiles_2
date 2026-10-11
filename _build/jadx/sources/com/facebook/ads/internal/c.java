package com.facebook.ads.internal;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends Exception {

    /* renamed from: a, reason: collision with root package name */
    private final b f2657a;

    public c(AdErrorType adErrorType, String str) {
        this(adErrorType, str, null);
    }

    public c(AdErrorType adErrorType, String str, Throwable th) {
        super(str, th);
        this.f2657a = new b(adErrorType, str);
    }

    public b a() {
        return this.f2657a;
    }
}
