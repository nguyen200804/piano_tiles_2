package com.cmplay.base.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.telephony.TelephonyManager;

/* compiled from: NetUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private static Uri f1255a = Uri.parse("content://telephony/carriers/preferapn");

    public static int a(Context context) {
        int i;
        if (context == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                i = 4;
            } else if (activeNetworkInfo.getType() == 1) {
                i = b(context) ? 3 : 4;
            } else {
                int subtype = activeNetworkInfo.getSubtype();
                if (a(subtype)) {
                    i = 1;
                } else if (b(subtype)) {
                    i = 2;
                } else {
                    i = c(subtype) ? 5 : 4;
                }
            }
        } catch (Exception e) {
            i = 0;
        }
        return i;
    }

    public static boolean b(Context context) {
        boolean z;
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            g.a("NetUtil", e);
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0032 -> B:3:0x0037). Please report as a decompilation issue!!! */
    public static boolean c(Context context) {
        ConnectivityManager connectivityManager;
        boolean z;
        if (context != null) {
            try {
                connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            } catch (Exception e) {
                g.a("NetUtil", e);
            }
            if (connectivityManager != null) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected()) {
                    g.c("NetUtil", "isNetworkAvailable");
                    z = true;
                } else {
                    g.c("NetUtil", "isNetworkAvailable fail");
                    z = false;
                }
                return z;
            }
        }
        z = false;
        return z;
    }

    private static boolean a(int i) {
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return true;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            default:
                return false;
        }
    }

    private static boolean b(int i) {
        switch (i) {
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return true;
            case 4:
            case 7:
            case 11:
            case 13:
            default:
                return false;
        }
    }

    private static boolean c(int i) {
        switch (i) {
            case 13:
                return true;
            default:
                return false;
        }
    }

    public static String d(Context context) {
        if (context == null) {
            return null;
        }
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (simOperator == null || simOperator.length() < 3) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) simOperator, 0, 3);
        return sb.toString();
    }

    public static boolean e(Context context) {
        for (NetworkInfo networkInfo : ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo()) {
            if (networkInfo.getTypeName().equalsIgnoreCase("WIFI") && networkInfo.isConnected()) {
                return true;
            }
        }
        return false;
    }

    public static boolean f(Context context) {
        for (NetworkInfo networkInfo : ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo()) {
            if (networkInfo.getTypeName().equalsIgnoreCase("WIFI")) {
                if (networkInfo.isConnected()) {
                    return true;
                }
            } else if (networkInfo.getTypeName().equalsIgnoreCase("MOBILE") && networkInfo.isConnected()) {
                return true;
            }
        }
        return false;
    }
}
