package com.facebook.ads.internal.i.b;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class j {
    static <T> T a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    static <T> T a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    static void a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }
}
