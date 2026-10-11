package com.facebook;

/* compiled from: FacebookException.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i extends RuntimeException {
    public i() {
    }

    public i(String str) {
        super(str);
    }

    public i(String str, Object... objArr) {
        this(String.format(str, objArr));
    }

    public i(String str, Throwable th) {
        super(str, th);
    }

    public i(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getMessage();
    }
}
