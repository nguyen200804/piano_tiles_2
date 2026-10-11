package com.cmplay.crashreport.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1290a = e.class.getSimpleName();

    public static boolean a(Context context) {
        NetworkInfo networkInfo;
        if (context == null) {
            return false;
        }
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            e.printStackTrace();
            networkInfo = null;
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        WifiInfo wifiInfo = null;
        try {
            wifiInfo = wifiManager.getConnectionInfo();
        } catch (Exception e) {
        }
        try {
            return wifiManager.isWifiEnabled() && (wifiInfo == null ? 0 : wifiInfo.getIpAddress()) != 0;
        } catch (Exception e2) {
            return false;
        }
    }
}
