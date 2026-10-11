package com.cmplay.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* compiled from: NetworkUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class u {
    public static boolean a(Context context) {
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
