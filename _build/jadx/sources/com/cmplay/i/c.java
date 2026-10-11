package com.cmplay.i;

import android.content.Context;
import android.text.TextUtils;

/* compiled from: RuntimeCheck.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static String f1401a = ":service";

    /* renamed from: b, reason: collision with root package name */
    private static String f1402b = ":";
    private static String c = ":web";
    private static String d = ":crashReport";
    private static String e = ":ads";
    private static boolean f;
    private static boolean g;
    private static boolean h;
    private static boolean i;
    private static boolean j;
    private static boolean k;
    private static String l;

    public static boolean a() {
        return f;
    }

    public static boolean b() {
        return g;
    }

    public static boolean c() {
        return h;
    }

    public static void d() {
        if (!a()) {
            throw new RuntimeException("Must run in Service Process");
        }
    }

    public static void e() {
        if (!c()) {
            throw new RuntimeException("Must run in Web Process");
        }
    }

    public static void a(Context context) {
        if (!k) {
            String a2 = d.a(context);
            if (!TextUtils.isEmpty(a2)) {
                l = a2;
                if (a2.contains(f1401a)) {
                    f = true;
                } else if (!a2.contains(f1402b)) {
                    g = true;
                } else if (a2.contains(c)) {
                    h = true;
                } else if (a2.contains(d)) {
                    i = true;
                } else if (a2.contains(e)) {
                    j = true;
                }
                k = true;
            }
        }
    }

    public static String f() {
        return l;
    }
}
