package com.cmplay.base.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.util.Locale;

/* compiled from: Commons.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {
    public static String a(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String b(Context context) {
        if (context == null) {
            return "";
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo != null) {
                return Integer.toString(packageInfo.versionCode);
            }
            return "";
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    public static String c(Context context) {
        Locale locale = null;
        Resources resources = context.getResources();
        if (resources != null) {
            Configuration configuration = resources.getConfiguration();
            if (configuration != null) {
                locale = configuration.locale;
            }
            if (locale == null) {
                locale = Locale.getDefault();
            }
        } else {
            locale = Locale.getDefault();
        }
        return locale.getLanguage();
    }

    public static String d(Context context) {
        Locale locale = null;
        Resources resources = context.getResources();
        if (resources != null) {
            Configuration configuration = resources.getConfiguration();
            if (configuration != null) {
                locale = configuration.locale;
            }
            if (locale == null) {
                locale = Locale.getDefault();
            }
        } else {
            locale = Locale.getDefault();
        }
        return locale.getCountry();
    }
}
