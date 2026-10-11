package com.ijinshan.cloudconfig.c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;

/* compiled from: CloudConfigEnv.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Context f3589a = null;

    /* renamed from: b, reason: collision with root package name */
    private static String f3590b = "";
    private static int c = 0;
    private static boolean d = true;
    private static volatile boolean e = true;
    private static volatile boolean f = false;
    private static String g;
    private static boolean h;
    private static boolean i;

    public static void a(String str, String str2, boolean z, boolean z2) {
        b(str);
        a(str2);
        h = z;
        i = z2;
    }

    public static String a() {
        return g;
    }

    public static void a(String str) {
        g = str;
    }

    public static boolean b() {
        return h;
    }

    public static boolean c() {
        return i;
    }

    public static void a(Context context) {
        if (f3589a == null) {
            f3589a = context;
        }
    }

    public static Context d() {
        return f3589a;
    }

    public static void b(String str) {
        if (TextUtils.isEmpty(f3590b)) {
            f3590b = str;
        }
    }

    public static String e() {
        return f3590b;
    }

    public static void f() {
        f = true;
    }

    public static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && connectivityManager.getActiveNetworkInfo() != null) {
                if (connectivityManager.getActiveNetworkInfo().isAvailable()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean c(Context context) {
        NetworkInfo networkInfo;
        if (context == null) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (networkInfo = connectivityManager.getNetworkInfo(1)) != null) {
                return networkInfo.getState() == NetworkInfo.State.CONNECTED;
            }
            return false;
        } catch (Exception e2) {
            return false;
        }
    }
}
