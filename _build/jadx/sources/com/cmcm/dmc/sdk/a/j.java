package com.cmcm.dmc.sdk.a;

import android.content.Context;
import android.content.pm.PackageInfo;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {
    public static PackageInfo a(Context context, String str) {
        if (context == null || str == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean a(Context context) {
        if (!b(context, "com.android.vending")) {
            return false;
        }
        PackageInfo a2 = a(context, "com.google.android.gsf");
        return (a2 == null || a2.applicationInfo == null || (a2.applicationInfo.flags & 1) != 1) ? false : true;
    }

    public static boolean b(Context context, String str) {
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
}
