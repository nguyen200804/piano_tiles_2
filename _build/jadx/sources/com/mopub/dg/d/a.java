package com.mopub.dg.d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {
    public static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean a(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean a(String str) {
        return str == null || str.equals("") || str.toLowerCase(Locale.getDefault()).equals("null");
    }

    public static boolean b(Context context) {
        if (context != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isConnected();
                }
            } catch (Exception e) {
                n.a(e);
            }
        }
        return false;
    }
}
