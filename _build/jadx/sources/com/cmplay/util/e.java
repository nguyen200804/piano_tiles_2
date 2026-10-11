package com.cmplay.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.cmplay.tile2.GameApp;
import com.google.android.gms.common.GoogleApiAvailability;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Locale;
import java.util.zip.CRC32;

/* compiled from: Commons.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {
    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(String str) {
        boolean z;
        Process process = null;
        process = null;
        try {
            try {
                process = Runtime.getRuntime().exec(str);
                process.waitFor();
                try {
                    process.destroy();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                z = true;
                process = process;
            } finally {
                try {
                    process.destroy();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            z = false;
        }
        return z;
    }

    public static boolean a(Context context, Intent intent) {
        try {
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean a(Activity activity, Intent intent, int i) {
        try {
            c.a("camera", "startActivityForResult  request code is " + i);
            activity.startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException e) {
            c.a("camera", "startActivityForResult  ActivityNotFoundException request code is " + i);
            return false;
        } catch (NullPointerException e2) {
            c.a("camera", "startActivityForResult  NullPointerException request code is " + i);
            c.a("camera", e2.getMessage());
            return false;
        } catch (SecurityException e3) {
            c.a("camera", "startActivityForResult  SecurityException request code is " + i);
            c.a("camera", e3.getMessage());
            return false;
        }
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        boolean z = true;
        try {
            GameApp.f1598a.getPackageManager().getPackageInfo(str, 256);
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    public static int a(Context context, String str) {
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

    public static String a(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public static void b(Context context) {
        if (h.c() && (b("com.amazon.mShop.android") || b("com.amazon.venezia"))) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse("amzn://apps/android?p=" + GameApp.f1598a.getPackageName()));
            a(context, intent);
            return;
        }
        if (h.b() && d(GameApp.f1598a)) {
            c(context);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setFlags(268435456);
        intent2.setData(Uri.parse("market://details?id=" + GameApp.f1598a.getPackageName()));
        a(context, intent2);
    }

    public static void c(Context context) {
        String packageName = GameApp.f1598a.getPackageName();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setClassName("com.android.vending", "com.google.android.finsky.activities.MainActivity");
        intent.setData(Uri.parse("market://details?id=" + packageName));
        if (!a(context, intent)) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + packageName));
            intent2.setFlags(268435456);
            a(context, intent2);
        }
    }

    public static void b(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setClassName("com.android.vending", "com.google.android.finsky.activities.MainActivity");
            intent.setData(Uri.parse(str));
            if (!a(context, intent)) {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent2.setFlags(268435456);
                a(context, intent2);
            }
        }
    }

    public static boolean d(Context context) {
        PackageInfo c;
        return b("com.android.vending") && (c = c(context, "com.google.android.gsf")) != null && (c.applicationInfo.flags & 1) == 1;
    }

    public static PackageInfo c(Context context, String str) {
        if (context == null || str == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 256);
        } catch (Exception e) {
            return null;
        }
    }

    public static void a(Context context, String str, String str2) {
        Configuration configuration;
        Resources resources = context.getResources();
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            configuration.locale = new Locale(str, str2);
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        }
    }

    public static int a(int i) {
        return (int) ((GameApp.f1598a.getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    public static int[] a() {
        DisplayMetrics displayMetrics = GameApp.f1598a.getResources().getDisplayMetrics();
        return new int[]{displayMetrics.widthPixels, displayMetrics.heightPixels};
    }

    public static boolean b() {
        long value;
        String b2 = com.cmplay.i.d.b(GameApp.f1598a);
        CRC32 crc32 = new CRC32();
        if (!TextUtils.isEmpty(b2)) {
            try {
                crc32.update(b2.getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            value = crc32.getValue() % 100;
        } else {
            value = 0;
        }
        if (value < 50) {
            return true;
        }
        return false;
    }

    public static boolean a(Activity activity, boolean z) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        int isGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(GameApp.f1598a);
        if (isGooglePlayServicesAvailable == 0) {
            return true;
        }
        if (z && googleApiAvailability.isUserResolvableError(isGooglePlayServicesAvailable)) {
            googleApiAvailability.getErrorDialog(activity, isGooglePlayServicesAvailable, 9000).show();
        }
        return false;
    }

    public static boolean c(String str) {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        return !TextUtils.isEmpty(str) && ActivityCompat.checkSelfPermission(GameApp.f1598a, str) == 0;
    }

    public static void a(Activity activity, String str, int i) {
        if (ContextCompat.checkSelfPermission(activity, str) != 0) {
            ActivityCompat.requestPermissions(activity, new String[]{str}, i);
        }
    }

    public static Integer[] a(Integer[] numArr, int i) {
        boolean z;
        if (numArr.length == 0 || numArr.length == 1) {
            return numArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Integer num : numArr) {
            arrayList.add(Integer.valueOf(num.intValue()));
        }
        int i2 = 0;
        while (true) {
            if (i2 >= arrayList.size()) {
                z = false;
                break;
            }
            if (((Integer) arrayList.get(i2)).intValue() != i) {
                i2++;
            } else {
                arrayList.remove(i2);
                z = true;
                break;
            }
        }
        if (z) {
            arrayList.add(0, Integer.valueOf(i));
        }
        return (Integer[]) arrayList.toArray(new Integer[arrayList.size()]);
    }
}
