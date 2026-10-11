package com.example.luckywheel.a;

import android.content.Context;
import android.provider.Settings;
import android.telephony.TelephonyManager;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    public static String a(Context context) {
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            return string == null ? "" : string;
        } catch (Exception e) {
            return "";
        }
    }

    public static String b(Context context) {
        String c;
        if (context == null || (c = c(context)) == null || c.length() < 3) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) c, 0, 3);
        return sb.toString();
    }

    private static String c(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        } catch (Exception e) {
            return null;
        }
    }
}
