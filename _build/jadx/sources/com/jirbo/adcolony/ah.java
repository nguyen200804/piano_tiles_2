package com.jirbo.adcolony;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ah {

    /* renamed from: a, reason: collision with root package name */
    static String f3718a;

    /* renamed from: b, reason: collision with root package name */
    static boolean f3719b;

    static String a() {
        return t.E == null ? "" : Settings.Secure.getString(f.d().getContentResolver(), "android_id");
    }

    static String b() {
        if (t.E == null) {
            return "";
        }
        String networkOperatorName = ((TelephonyManager) f.d().getSystemService("phone")).getNetworkOperatorName();
        return networkOperatorName.length() == 0 ? EnvironmentCompat.MEDIA_UNKNOWN : networkOperatorName;
    }

    static int c() {
        if (t.E == null) {
            return 0;
        }
        Context applicationContext = t.b().getApplicationContext();
        t.b();
        return ((ActivityManager) applicationContext.getSystemService("activity")).getMemoryClass();
    }

    static long d() {
        Runtime runtime = Runtime.getRuntime();
        return (runtime.totalMemory() - runtime.freeMemory()) / 1048576;
    }

    static String e() {
        return t.E == null ? "" : ac.a(t.b());
    }

    static int f() {
        if (t.E == null) {
            return 0;
        }
        return t.b().getWindowManager().getDefaultDisplay().getWidth();
    }

    static int g() {
        if (t.E == null) {
            return 0;
        }
        return t.b().getWindowManager().getDefaultDisplay().getHeight();
    }

    static String h() {
        return "";
    }

    static boolean i() {
        if (t.E == null) {
            return false;
        }
        if (t.V != null) {
            return t.V.equals("tablet");
        }
        DisplayMetrics displayMetrics = f.d().getResources().getDisplayMetrics();
        float f = displayMetrics.widthPixels / displayMetrics.xdpi;
        float f2 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return Math.sqrt((double) ((f2 * f2) + (f * f))) >= 6.0d;
    }

    static String j() {
        return Locale.getDefault().getLanguage();
    }

    static String k() {
        return Build.MANUFACTURER;
    }

    static String l() {
        return Build.MODEL;
    }

    static String m() {
        return "";
    }

    static String n() {
        return Build.VERSION.RELEASE;
    }
}
