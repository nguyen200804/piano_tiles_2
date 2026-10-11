package com.facebook.ads.internal.util;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class am {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f2864a = new AtomicInteger(1);

    public static int a() {
        int i;
        int i2;
        do {
            i = f2864a.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!f2864a.compareAndSet(i, i2));
        return i;
    }
}
