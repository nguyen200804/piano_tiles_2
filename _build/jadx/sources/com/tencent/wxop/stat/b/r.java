package com.tencent.wxop.stat.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    private static String f4830a = "";

    private static WifiInfo T(Context context) {
        WifiManager wifiManager;
        if (!a(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi")) == null) {
            return null;
        }
        return wifiManager.getConnectionInfo();
    }

    public static String U(Context context) {
        try {
            WifiInfo T = T(context);
            if (T != null) {
                return T.getBSSID();
            }
        } catch (Throwable th) {
            Log.e("MtaSDK", "encode error", th);
        }
        return null;
    }

    public static String V(Context context) {
        try {
            WifiInfo T = T(context);
            if (T != null) {
                return T.getSSID();
            }
        } catch (Throwable th) {
            Log.e("MtaSDK", "encode error", th);
        }
        return null;
    }

    public static boolean W(Context context) {
        try {
            if (a(context, "android.permission.INTERNET") && a(context, "android.permission.ACCESS_NETWORK_STATE")) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                        return true;
                    }
                    Log.w("MtaSDK", "Network error");
                    return false;
                }
            } else {
                Log.e("MtaSDK", "can not get the permisson of android.permission.INTERNET");
            }
        } catch (Throwable th) {
            Log.e("MtaSDK", "isNetworkAvailable error", th);
        }
        return false;
    }

    public static JSONArray X(Context context) {
        List<ScanResult> scanResults;
        try {
            if (a(context, "android.permission.INTERNET") && a(context, "android.permission.ACCESS_NETWORK_STATE")) {
                WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                if (wifiManager != null && (scanResults = wifiManager.getScanResults()) != null && scanResults.size() > 0) {
                    Collections.sort(scanResults, new s());
                    JSONArray jSONArray = new JSONArray();
                    for (int i = 0; i < scanResults.size() && i < 10; i++) {
                        ScanResult scanResult = scanResults.get(i);
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("bs", scanResult.BSSID);
                        jSONObject.put("ss", scanResult.SSID);
                        jSONArray.put(jSONObject);
                    }
                    return jSONArray;
                }
            } else {
                Log.e("MtaSDK", "can not get the permisson of android.permission.INTERNET");
            }
        } catch (Throwable th) {
            Log.e("MtaSDK", "isWifiNet error", th);
        }
        return null;
    }

    public static void a(JSONObject jSONObject, String str, String str2) {
        if (str2 != null) {
            try {
                if (str2.length() > 0) {
                    jSONObject.put(str, str2);
                }
            } catch (Throwable th) {
                Log.e("MtaSDK", "jsonPut error", th);
            }
        }
    }

    public static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Throwable th) {
            Log.e("MtaSDK", "checkPermission error", th);
            return false;
        }
    }

    public static String b(Context context) {
        try {
            if (a(context, "android.permission.READ_PHONE_STATE")) {
                String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
                if (deviceId != null) {
                    return deviceId;
                }
            } else {
                Log.e("MtaSDK", "Could not get permission of android.permission.READ_PHONE_STATE");
            }
        } catch (Throwable th) {
            Log.e("MtaSDK", "get device id error", th);
        }
        return null;
    }

    public static String c(Context context) {
        if (!a(context, "android.permission.ACCESS_WIFI_STATE")) {
            Log.e("MtaSDK", "Could not get permission of android.permission.ACCESS_WIFI_STATE");
            return "";
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            return wifiManager == null ? "" : wifiManager.getConnectionInfo().getMacAddress();
        } catch (Exception e) {
            Log.e("MtaSDK", "get wifi address error", e);
            return "";
        }
    }

    public static String q(String str) {
        if (str == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 8) {
            return str;
        }
        try {
            return new String(h.e(g.b(str.getBytes("UTF-8"))), "UTF-8");
        } catch (Throwable th) {
            Log.e("MtaSDK", "encode error", th);
            return str;
        }
    }

    public static String t(String str) {
        if (str == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 8) {
            return str;
        }
        try {
            return new String(g.c(h.d(str.getBytes("UTF-8"))), "UTF-8");
        } catch (Throwable th) {
            Log.e("MtaSDK", "decode error", th);
            return str;
        }
    }
}
