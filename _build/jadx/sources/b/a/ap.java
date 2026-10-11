package b.a;

import android.util.Log;

/* compiled from: Log.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ap {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f67a = false;

    public static void a(String str, String str2) {
        if (f67a) {
            Log.i(str, str2);
        }
    }

    public static void a(String str, String str2, Exception exc) {
        if (f67a) {
            Log.i(str, String.valueOf(exc.toString()) + ":  [" + str2 + "]");
        }
    }

    public static void b(String str, String str2) {
        if (f67a) {
            Log.e(str, str2);
        }
    }

    public static void b(String str, String str2, Exception exc) {
        if (f67a) {
            Log.e(str, String.valueOf(exc.toString()) + ":  [" + str2 + "]");
            for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
                Log.e(str, "        at\t " + stackTraceElement.toString());
            }
        }
    }

    public static void c(String str, String str2) {
        if (f67a) {
            Log.d(str, str2);
        }
    }

    public static void c(String str, String str2, Exception exc) {
        if (f67a) {
            Log.d(str, String.valueOf(exc.toString()) + ":  [" + str2 + "]");
        }
    }

    public static void d(String str, String str2) {
        if (f67a) {
            Log.w(str, str2);
        }
    }

    public static void d(String str, String str2, Exception exc) {
        if (f67a) {
            Log.w(str, String.valueOf(exc.toString()) + ":  [" + str2 + "]");
            for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
                Log.w(str, "        at\t " + stackTraceElement.toString());
            }
        }
    }
}
