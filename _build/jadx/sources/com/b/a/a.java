package com.b.a;

import android.content.Context;
import b.a.ao;

/* compiled from: AnalyticsConfig.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    public static int c;
    public static int g;
    private static String m = null;
    private static String n = null;

    /* renamed from: a, reason: collision with root package name */
    public static String f599a = null;

    /* renamed from: b, reason: collision with root package name */
    public static String f600b = null;
    public static String d = "";
    public static String e = "";
    public static boolean f = false;
    private static double[] o = null;
    public static boolean h = true;
    public static boolean i = true;
    public static boolean j = true;
    public static boolean k = true;
    public static long l = 30000;

    public static void a(boolean z) {
        f = z;
    }

    public static String a(Context context) {
        if (m == null) {
            m = ao.j(context);
        }
        return m;
    }

    public static String b(Context context) {
        if (n == null) {
            n = ao.n(context);
        }
        return n;
    }

    public static String a() {
        return c == 1 ? "5.5.3.0" : "5.5.3";
    }

    public static double[] b() {
        return o;
    }
}
