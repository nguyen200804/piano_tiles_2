package com.mopub.nativesdk.d;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

/* compiled from: SDKUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class p {
    public static boolean a(String str) {
        return e(str) || d(str) || g(str);
    }

    public static boolean b(String str) {
        if (!g(str) && !h(str) && !f(str)) {
            if (!(!TextUtils.isEmpty(str) && str.toLowerCase().endsWith(".apk"))) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return d(str) || e(str);
    }

    public static boolean d(String str) {
        return str != null && str.length() > "http://".length() + (-1) && str.substring(0, "http://".length()).equalsIgnoreCase("http://");
    }

    public static boolean e(String str) {
        return str != null && str.length() > "https://".length() + (-1) && str.substring(0, "https://".length()).equalsIgnoreCase("https://");
    }

    public static boolean f(String str) {
        try {
            return Uri.parse(str).getHost().equals("itunes.apple.com");
        } catch (Throwable th) {
            Log.e("Arrkii SDKUtil", Log.getStackTraceString(th));
            return false;
        }
    }

    public static boolean g(String str) {
        try {
            return Uri.parse(str).getScheme().equals("market");
        } catch (Throwable th) {
            Log.e("Arrkii SDKUtil", Log.getStackTraceString(th));
            return false;
        }
    }

    public static boolean h(String str) {
        try {
            Uri parse = Uri.parse(str);
            if (!parse.getHost().equals("play.google.com")) {
                if (!parse.getHost().equals("market.android.com")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            Log.e("Arrkii SDKUtil", Log.getStackTraceString(th));
            return false;
        }
    }

    public static String i(String str) {
        if (!g(str)) {
            if (h(str) && str.indexOf("details?id=") >= 0) {
                return "market://" + str.substring(str.indexOf("details?id="));
            }
            return null;
        }
        return str;
    }

    public static boolean a(Context context, String str) {
        try {
            String i = i(str);
            if (TextUtils.isEmpty(i)) {
                return false;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(i));
            intent.setFlags(268435456);
            intent.setPackage("com.android.vending");
            context.startActivity(intent);
            return true;
        } catch (Throwable th) {
            Log.e("Arrkii SDKUtil", Log.getStackTraceString(th));
            return false;
        }
    }
}
