package com.example.luckywheel.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {
    public static boolean a(Context context) {
        NetworkInfo networkInfo;
        NetworkInfo networkInfo2;
        NetworkInfo networkInfo3;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        try {
            networkInfo = connectivityManager.getNetworkInfo(0);
        } catch (NullPointerException e) {
            e.printStackTrace();
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
            return true;
        }
        try {
            networkInfo2 = connectivityManager.getNetworkInfo(1);
        } catch (NullPointerException e2) {
            e2.printStackTrace();
            networkInfo2 = null;
        }
        if (networkInfo2 != null && networkInfo2.isConnectedOrConnecting()) {
            return true;
        }
        try {
            networkInfo3 = connectivityManager.getActiveNetworkInfo();
        } catch (NullPointerException e3) {
            networkInfo3 = null;
        }
        return networkInfo3 != null && networkInfo3.isConnectedOrConnecting();
    }
}
