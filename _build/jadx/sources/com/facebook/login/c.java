package com.facebook.login;

/* compiled from: LoginBehavior.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum c {
    NATIVE_WITH_FALLBACK(true, true, false),
    NATIVE_ONLY(true, false, false),
    WEB_ONLY(false, true, false),
    DEVICE_AUTH(false, false, true);

    private final boolean e;
    private final boolean f;
    private final boolean g;

    c(boolean z, boolean z2, boolean z3) {
        this.e = z;
        this.f = z2;
        this.g = z3;
    }

    boolean a() {
        return this.e;
    }

    boolean b() {
        return this.f;
    }

    boolean c() {
        return this.g;
    }
}
