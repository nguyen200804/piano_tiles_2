package com.cmplay.crashreport.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {
    public static int a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(new ComponentName(context, context.getClass()).getPackageName(), 0).versionCode;
        } catch (Exception e) {
            return -1;
        }
    }

    public static String b(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return packageInfo.versionName + "(" + packageInfo.versionCode + ")";
        } catch (Exception e) {
            return null;
        }
    }

    public static String c(Context context) {
        return new ComponentName(context, context.getClass()).getPackageName();
    }
}
