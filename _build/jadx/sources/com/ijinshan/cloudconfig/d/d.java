package com.ijinshan.cloudconfig.d;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.SystemProperties;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.FileReader;
import java.security.MessageDigest;
import java.util.Locale;

/* compiled from: UtilsHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static String f3592a = "";

    /* renamed from: b, reason: collision with root package name */
    private static Object f3593b = new Object();

    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return a(messageDigest.digest());
        } catch (Exception e) {
            return null;
        }
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length * 2);
        for (int i = 0; i < length; i++) {
            sb.append("0123456789abcdef".charAt((bArr[i] & 240) >>> 4));
            sb.append("0123456789abcdef".charAt(bArr[i] & 15));
        }
        return sb.toString();
    }

    public static String a(Context context) {
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

    public static String b(Context context) {
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

    public static String c(Context context) {
        String simOperator;
        if (context != null && (simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator()) != null && simOperator.length() >= 3) {
            StringBuilder sb = new StringBuilder();
            sb.append((CharSequence) simOperator, 0, 3);
            return sb.toString();
        }
        return "";
    }

    public static String d(Context context) {
        if (context == null) {
            return null;
        }
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (simOperator != null && simOperator.length() >= 5) {
            StringBuilder sb = new StringBuilder();
            sb.append((CharSequence) simOperator, 3, 5);
            return sb.toString();
        }
        return "";
    }

    public static String e(Context context) {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return String.valueOf(displayMetrics.heightPixels) + "*" + String.valueOf(displayMetrics.widthPixels);
        } catch (Exception e) {
            return "Unknown";
        }
    }

    @SuppressLint({"NewApi"})
    public static long f(Context context) {
        if (Build.VERSION.SDK_INT < 16) {
            return a();
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    public static long a() {
        long j = 0;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
            String[] split = bufferedReader.readLine().split("\\s+");
            if (split.length == 3) {
                j = Integer.valueOf(split[1]).intValue() * 1024;
            }
            bufferedReader.close();
        } catch (Exception e) {
        }
        return j;
    }

    public static int a(long j) {
        return Math.round(j / 1048576.0f);
    }

    public static String g(Context context) {
        return new ComponentName(context, context.getClass()).getPackageName();
    }

    public static String h(Context context) {
        if (TextUtils.isEmpty(f3592a)) {
            synchronized (f3593b) {
                if (TextUtils.isEmpty(f3592a)) {
                    try {
                        String string = Settings.System.getString(context.getContentResolver(), "android_id");
                        if (!TextUtils.isEmpty(string)) {
                            f3592a = string;
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
        return f3592a;
    }

    public static String b() {
        String str = SystemProperties.get("ro.product.brand");
        if (TextUtils.isEmpty(str)) {
            str = Build.MODEL;
        }
        return !TextUtils.isEmpty(str) ? str : "unknow";
    }

    public static String i(Context context) {
        try {
            return context.getResources().getDisplayMetrics().density + "";
        } catch (Exception e) {
            return "";
        }
    }

    public static int j(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }
}
