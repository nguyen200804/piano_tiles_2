package com.cmplay.util;

import android.content.Context;

/* compiled from: SharePreferenceHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class aa {

    /* renamed from: a, reason: collision with root package name */
    private static Context f1703a;

    /* renamed from: b, reason: collision with root package name */
    private static k f1704b;

    public static void a(Context context, k kVar) {
        f1703a = context.getApplicationContext();
        f1704b = kVar;
    }

    public static String a() {
        return "com.white.tap2.report_service_name";
    }

    public static void a(String str, String str2) {
        f1704b.b(str, str2);
    }

    public static void a(String str, boolean z) {
        f1704b.b(str, z);
    }

    public static void a(String str, int i) {
        f1704b.b(str, i);
    }

    public static void a(String str, long j) {
        f1704b.b(str, j);
    }

    public static String a(String str) {
        return f1704b.a(str, (String) null);
    }

    public static String b(String str, String str2) {
        return f1704b.a(str, str2);
    }

    public static int b(String str) {
        return f1704b.a(str, 0);
    }

    public static int b(String str, int i) {
        return f1704b.a(str, i);
    }

    public static boolean b(String str, boolean z) {
        return f1704b.a(str, z);
    }

    public static long b(String str, long j) {
        return f1704b.a(str, j);
    }
}
