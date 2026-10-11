package com.duapps.ad.base;

import android.util.Log;

/* compiled from: LogHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f2037a = false;

    public static boolean a() {
        return f2037a;
    }

    public static void a(String str, String str2) {
        if (f2037a) {
            Log.i("DX-Toolbox", e(str, str2));
        }
    }

    public static void b(String str, String str2) {
        if (f2037a) {
            Log.w("DX-Toolbox", e(str, str2));
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (f2037a) {
            Log.w("DX-Toolbox", e(str, str2), th);
        }
    }

    public static void c(String str, String str2) {
        if (f2037a) {
            Log.d("DX-Toolbox", e(str, str2));
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (f2037a) {
            Log.d("DX-Toolbox", e(str, str2), th);
        }
    }

    public static void d(String str, String str2) {
        Log.e("DX-Toolbox", e(str, str2));
    }

    public static void c(String str, String str2, Throwable th) {
        Log.e("DX-Toolbox", e(str, str2), th);
    }

    private static String e(String str, String str2) {
        return new StringBuffer().append("{").append(Thread.currentThread().getName()).append("}").append("[").append(str).append("] ").append(str2).toString();
    }
}
