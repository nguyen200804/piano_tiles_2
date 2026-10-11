package com.google.android.gms.internal;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzann {
    public static void zzbo(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static <T> T zzy(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }
}
