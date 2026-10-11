package com.mopub.dg.e.a.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static TelephonyManager f4329a = null;

    public static String a(Context context) {
        if (context == null) {
            return null;
        }
        return f.a(Settings.Secure.getString(context.getContentResolver(), "android_id"));
    }

    public static String a(Context context, Map map) {
        StringBuilder sb = new StringBuilder();
        if (map != null) {
            for (String str : map.keySet()) {
                a(sb, str, (String) map.get(str));
            }
        }
        a(sb, "sv", "dg2.6-cm");
        a(sb, "udid", a(context));
        a(sb, "os", String.valueOf(1));
        a(sb, "osv", String.valueOf(Build.VERSION.SDK));
        a(sb, "dmf", Build.MANUFACTURER);
        a(sb, "dml", Build.MODEL);
        a(sb, "dpd", Build.PRODUCT);
        a(sb, "so", String.valueOf(context.getResources().getConfiguration().orientation));
        a(sb, "ds", String.valueOf(context.getResources().getDisplayMetrics().density));
        if (f4329a == null) {
            f4329a = (TelephonyManager) context.getSystemService("phone");
        }
        a(sb, "icc", f4329a.getNetworkCountryIso());
        a(sb, "cn", f4329a.getNetworkOperatorName());
        String packageName = context.getPackageName();
        String str2 = EnvironmentCompat.MEDIA_UNKNOWN;
        if (TextUtils.isEmpty(packageName)) {
            packageName = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        String replaceAll = packageName.replaceAll("\\s", "");
        if (!TextUtils.isEmpty(replaceAll)) {
            str2 = replaceAll;
        }
        a(sb, "pk", str2);
        return sb.toString();
    }

    private static void a(StringBuilder sb, String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null) {
            return;
        }
        sb.append(str);
        sb.append("=");
        sb.append(Uri.encode(str2));
        sb.append("&");
    }

    public static boolean b(Context context) {
        if (context != null && context.checkCallingOrSelfPermission("android.permission.INTERNET") != -1) {
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
                return true;
            }
            try {
                ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                NetworkInfo networkInfo = null;
                return networkInfo.isConnected();
            } catch (NullPointerException e) {
                return false;
            }
        }
        return false;
    }
}
