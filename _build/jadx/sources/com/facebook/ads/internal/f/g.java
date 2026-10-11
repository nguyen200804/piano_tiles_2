package com.facebook.ads.internal.f;

import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2715a = g.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static volatile boolean f2716b = false;
    private static double c;
    private static String d;

    public static void a() {
        if (f2716b) {
            return;
        }
        synchronized (f2715a) {
            if (!f2716b) {
                f2716b = true;
                c = System.currentTimeMillis() / 1000.0d;
                d = UUID.randomUUID().toString();
            }
        }
    }

    public static double b() {
        return c;
    }

    public static String c() {
        return d;
    }
}
