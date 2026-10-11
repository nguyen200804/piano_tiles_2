package com.mopub.nativesdk.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;

/* compiled from: NetWorkUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class l {
    private l() {
    }

    public static boolean a(Context context) {
        return (context == null || EnvironmentCompat.MEDIA_UNKNOWN.endsWith(b(context))) ? false : true;
    }

    public static String b(Context context) {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            networkInfo = null;
        }
        if (networkInfo == null) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (networkInfo.getType() == 1) {
            return "wifi";
        }
        switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
                return "4G";
            default:
                return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }
}
