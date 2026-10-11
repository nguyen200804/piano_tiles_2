package com.duapps.ad.c.b;

import android.os.Handler;
import android.os.Looper;

/* compiled from: ThreadUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static Handler f2117a;

    public static boolean a() {
        return Looper.getMainLooper().equals(Looper.myLooper());
    }

    static {
        f2117a = null;
        f2117a = new Handler(Looper.getMainLooper());
    }

    public static void a(Runnable runnable) {
        f2117a.post(runnable);
    }
}
