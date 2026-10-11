package com.cmcm.orion.utils;

import android.os.Handler;
import android.os.Looper;

/* compiled from: ThreadHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f1072a;

    /* renamed from: b, reason: collision with root package name */
    private static final Object f1073b;
    private static boolean c;
    private static Handler d;

    static {
        f1072a = !e.class.desiredAssertionStatus();
        f1073b = new Object();
        c = false;
        d = null;
    }

    private static Handler b() {
        Handler handler;
        synchronized (f1073b) {
            if (d == null) {
                if (c) {
                    throw new RuntimeException("Did not yet override the UI thread");
                }
                d = new Handler(Looper.getMainLooper());
            }
            handler = d;
        }
        return handler;
    }

    public static void a(Runnable runnable) {
        if (a()) {
            runnable.run();
        } else {
            b().post(runnable);
        }
    }

    public static void b(Runnable runnable) {
        b().post(runnable);
    }

    public static void c(Runnable runnable) {
        b().postDelayed(runnable, 500L);
    }

    public static boolean a() {
        return b().getLooper() == Looper.myLooper();
    }
}
