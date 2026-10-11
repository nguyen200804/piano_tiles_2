package com.cmplay.util.a;

import android.os.Handler;
import android.os.HandlerThread;

/* compiled from: BackgroundThread.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends HandlerThread {

    /* renamed from: a, reason: collision with root package name */
    private static a f1701a;

    /* renamed from: b, reason: collision with root package name */
    private static Handler f1702b;

    public a() {
        super("BackgroundThread", 0);
    }

    private static void a() {
        if (f1701a == null) {
            f1701a = new a();
            f1701a.start();
            f1702b = new Handler(f1701a.getLooper());
        }
    }

    public static void a(Runnable runnable) {
        a(runnable, 0L);
    }

    public static void a(Runnable runnable, long j) {
        synchronized (a.class) {
            a();
            f1702b.postDelayed(runnable, j);
        }
    }
}
