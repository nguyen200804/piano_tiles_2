package com.cmplay.crashreport.a;

import android.os.Handler;
import android.os.HandlerThread;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends HandlerThread {

    /* renamed from: a, reason: collision with root package name */
    private static a f1287a;

    /* renamed from: b, reason: collision with root package name */
    private static Handler f1288b;

    public a() {
        super("BackgroundThread", 0);
    }

    public static Handler a() {
        Handler handler;
        synchronized (a.class) {
            b();
            handler = f1288b;
        }
        return handler;
    }

    private static void b() {
        if (f1287a == null) {
            f1287a = new a();
            f1287a.start();
            f1288b = new Handler(f1287a.getLooper());
        }
    }
}
