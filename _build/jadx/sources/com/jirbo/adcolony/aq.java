package com.jirbo.adcolony;

import android.app.Activity;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class aq {

    /* renamed from: a, reason: collision with root package name */
    public static String f3795a = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  x          xxxxxxx                          xxxx x                          xxxxx";

    /* renamed from: b, reason: collision with root package name */
    public static String f3796b = "0123456789ABCDEF";
    public static String c = "0123456789abcdef";

    static boolean a() {
        return a(null);
    }

    static boolean a(Activity activity) {
        if (activity == null) {
            activity = t.E;
        }
        if (activity == null) {
            al.f3721a.b((Object) "Null Activity");
            return false;
        }
        if (t.C) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) activity.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return activeNetworkInfo.getType() == 1;
        }
        return false;
    }

    static boolean b() {
        return b(null);
    }

    static boolean b(Activity activity) {
        NetworkInfo activeNetworkInfo;
        if (activity == null) {
            activity = t.E;
        }
        if (activity == null || t.C || (activeNetworkInfo = ((ConnectivityManager) activity.getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return false;
        }
        int type = activeNetworkInfo.getType();
        return type == 0 || type >= 2;
    }

    static boolean c() {
        return c(null);
    }

    static boolean c(Activity activity) {
        return a(activity) || b(activity);
    }
}
