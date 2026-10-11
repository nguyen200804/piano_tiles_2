package com.facebook;

/* compiled from: FacebookServiceException.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n extends i {

    /* renamed from: a, reason: collision with root package name */
    private final k f3357a;

    public n(k kVar, String str) {
        super(str);
        this.f3357a = kVar;
    }

    public final k a() {
        return this.f3357a;
    }

    @Override // com.facebook.i, java.lang.Throwable
    public final String toString() {
        return "{FacebookServiceException: httpResponseCode: " + this.f3357a.a() + ", facebookErrorCode: " + this.f3357a.b() + ", facebookErrorType: " + this.f3357a.c() + ", message: " + this.f3357a.d() + "}";
    }
}
