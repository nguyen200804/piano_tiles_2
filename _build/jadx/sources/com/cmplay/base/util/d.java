package com.cmplay.base.util;

import android.os.Handler;
import android.os.HandlerThread;

/* compiled from: BackgroundThread.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends HandlerThread {

    /* renamed from: a, reason: collision with root package name */
    private static d f1239a;

    /* renamed from: b, reason: collision with root package name */
    private static Handler f1240b;

    public d() {
        super("cloud_thread", 0);
    }

    private static void a() {
        if (f1239a == null) {
            f1239a = new d();
            f1239a.start();
            f1240b = new Handler(f1239a.getLooper());
        }
    }

    public static void a(Runnable runnable) {
        a(runnable, 0L);
    }

    public static void a(Runnable runnable, long j) {
        synchronized (d.class) {
            a();
            f1240b.postDelayed(runnable, j);
        }
    }
}
