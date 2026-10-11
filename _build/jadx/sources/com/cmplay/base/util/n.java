package com.cmplay.base.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;

/* compiled from: PackageUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n {
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

    public static PackageInfo b(Context context, String str) {
        if (context == null || str == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 256);
        } catch (Exception e) {
            return null;
        }
    }

    public static Intent c(Context context, String str) {
        try {
            return context.getPackageManager().getLaunchIntentForPackage(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean d(Context context, String str) {
        Intent c = c(context, str);
        if (c != null) {
            if (!(context instanceof Activity)) {
                c.setFlags(268435456);
            }
            return k.a(context, c);
        }
        return false;
    }

    public static boolean a(Context context) {
        return a(context, "com.android.vending") && b(context, "com.google.android.gsf") != null;
    }
}
