package com.cmplay.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;

/* compiled from: PackageUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class v {
    public static boolean a(Context context, String str) {
        if (context == null || str == null) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 256);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static Intent b(Context context, String str) {
        try {
            return context.getPackageManager().getLaunchIntentForPackage(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean a(Context context) {
        return a(context, "com.android.vending") && c(context, "com.google.android.gsf") != null;
    }

    public static PackageInfo c(Context context, String str) {
        if (context == null || str == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception e) {
            return null;
        }
    }

    public static int d(Context context, String str) {
        if (context == null || str == null || str.length() <= 0) {
            return -1;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static String b(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void e(Context context, String str) {
        Intent b2 = b(context, str);
        if (b2 != null) {
            if (!(context instanceof Activity)) {
                b2.setFlags(268435456);
            }
            try {
                context.startActivity(b2);
            } catch (Exception e) {
            }
        }
    }
}
