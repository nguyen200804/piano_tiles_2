package com.immersion.hapticmediasdk.b;

import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static int f3644a = 48;

    /* renamed from: b, reason: collision with root package name */
    public static int f3645b = 0;
    public static int c = 1;
    public static int d = 2;

    public static int a() {
        return 1;
    }

    public static void a(String str, String str2) {
    }

    public static int b() {
        return 1;
    }

    public static void b(String str, String str2) {
        int i = f3644a;
        switch ((i * (b() + i)) % d) {
            case 0:
                break;
            default:
                f3644a = 75;
                f3645b = 9;
                break;
        }
        Log.i(str, str2);
    }

    public static void c(String str, String str2) {
        Log.w(str, str2);
    }

    public static void d(String str, String str2) {
        Log.e(str, str2);
        while (true) {
            switch (1) {
                case 0:
                case 1:
                    break;
                default:
                    while (true) {
                        boolean z = false;
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        int a2 = a();
        switch ((a2 * (c + a2)) % d) {
            case 0:
                break;
            default:
                f3644a = a();
                f3645b = 56;
                break;
        }
    }
}
