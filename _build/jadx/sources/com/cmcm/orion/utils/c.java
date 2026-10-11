package com.cmcm.orion.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;

/* compiled from: NetworkUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static int f1065a = 1024;

    public static boolean a(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            int ipAddress = connectionInfo == null ? 0 : connectionInfo.getIpAddress();
            if (wifiManager.isWifiEnabled() && ipAddress != 0) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public static int b(Context context) {
        boolean z;
        boolean z2;
        int i = 4;
        int i2 = 0;
        if (context == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                if (activeNetworkInfo.getType() == 1) {
                    if (a(context)) {
                        i = 3;
                    }
                } else {
                    int subtype = activeNetworkInfo.getSubtype();
                    switch (subtype) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                            z = true;
                            break;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        default:
                            z = false;
                            break;
                    }
                    if (z) {
                        i = 1;
                    } else {
                        switch (subtype) {
                            case 3:
                            case 5:
                            case 6:
                            case 8:
                            case 9:
                            case 10:
                            case 12:
                            case 14:
                            case 15:
                                z2 = true;
                                break;
                            case 4:
                            case 7:
                            case 11:
                            case 13:
                            default:
                                z2 = false;
                                break;
                        }
                        if (z2) {
                            i = 2;
                        } else {
                            if (Build.VERSION.SDK_INT >= 11 && subtype == 13) {
                                i2 = 1;
                            }
                            i = i2 != 0 ? 5 : 4;
                        }
                    }
                }
            }
        } catch (Exception e) {
            i = i2;
        }
        return i;
    }

    public static boolean c(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
        } catch (Exception e) {
        }
        return false;
    }
}
