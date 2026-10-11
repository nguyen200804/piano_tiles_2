package com.cmplay.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.SystemProperties;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.regex.Pattern;

/* compiled from: PhoneModelUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class y {
    private static boolean a(Context context, int i, String str) {
        try {
            Class<?> cls = Class.forName("android.content.Context");
            Field declaredField = cls.getDeclaredField("APP_OPS_SERVICE");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(cls);
            if (!(obj instanceof String)) {
                return false;
            }
            Object invoke = cls.getMethod("getSystemService", String.class).invoke(context, (String) obj);
            Class<?> cls2 = Class.forName("android.app.AppOpsManager");
            Field declaredField2 = cls2.getDeclaredField("MODE_ALLOWED");
            declaredField2.setAccessible(true);
            return ((Integer) cls2.getMethod("checkOp", Integer.TYPE, Integer.TYPE, String.class).invoke(invoke, 24, Integer.valueOf(i), str)).intValue() != declaredField2.getInt(cls2);
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean a(Context context) {
        boolean z = true;
        if (b() || a()) {
            String packageName = context.getPackageName();
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(packageName, 0).applicationInfo;
                if (a() || c()) {
                    z = a(context, applicationInfo.uid, packageName);
                } else if (Build.VERSION.SDK_INT >= 19) {
                    if ((33554432 & applicationInfo.flags) != 0) {
                        z = false;
                    }
                } else if ((134217728 & applicationInfo.flags) != 0) {
                    z = false;
                }
                return z;
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return false;
    }

    public static boolean a() {
        String str = SystemProperties.get("ro.build.version.emui", "unkonw");
        if (str == null) {
            return false;
        }
        String[] split = str.split("_");
        if (split.length <= 1 || !split[0].equalsIgnoreCase("EmotionUI")) {
            return false;
        }
        String[] split2 = split[1].split("\\.");
        String[] split3 = "2.3".split("\\.");
        int length = split2.length > split3.length ? split3.length : split2.length;
        for (int i = 0; i < length; i++) {
            try {
                int intValue = Integer.valueOf(split2[i]).intValue();
                int intValue2 = Integer.valueOf(split3[i]).intValue();
                if (intValue != intValue2) {
                    return intValue > intValue2;
                }
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return true;
    }

    public static boolean b() {
        String str = SystemProperties.get("ro.miui.ui.version.name", "unkonw");
        if (str == null) {
            return false;
        }
        if (str.equalsIgnoreCase("V5") || str.equalsIgnoreCase("V6")) {
            return d();
        }
        return false;
    }

    public static boolean c() {
        if (SystemProperties.get("ro.miui.ui.version.name", "unkonw").equalsIgnoreCase("V6")) {
            return d();
        }
        return false;
    }

    private static boolean d() {
        String str;
        boolean z = true;
        try {
            str = SystemProperties.get("ro.build.version.incremental", "unkonw");
        } catch (Exception e) {
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (Pattern.compile("(?i)[a-z]").matcher(str).find()) {
            if (str.startsWith("JLB")) {
                z = Float.valueOf(str.substring(3, str.length())).floatValue() >= 22.0f;
            }
        } else {
            String[] split = str.split("\\.");
            String[] split2 = "3.3.29".split("\\.");
            int length = split.length > split2.length ? split2.length : split.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                int intValue = Integer.valueOf(split[i]).intValue();
                int intValue2 = Integer.valueOf(split2[i]).intValue();
                if (intValue == intValue2) {
                    i++;
                } else if (intValue <= intValue2) {
                    z = false;
                }
            }
        }
        return z;
    }
}
