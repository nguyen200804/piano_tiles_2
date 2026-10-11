package com.mopub.nativesdk.d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.TimeZone;
import java.util.UUID;

/* compiled from: DeviceUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static String f4694a;

    /* renamed from: b, reason: collision with root package name */
    private static String f4695b;
    private static String c;
    private Runnable d;
    private Integer e;

    private f() {
    }

    public static String a(Context context) {
        try {
            String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            if (deviceId == null) {
                String q = q(context);
                if (q == null) {
                    return "";
                }
                return q;
            }
            return deviceId;
        } catch (Exception e) {
            return "";
        }
    }

    public static String b(Context context) {
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        return (simOperator == null || simOperator.length() <= 3) ? "" : simOperator.substring(0, 3);
    }

    public static String c(Context context) {
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        return (simOperator == null || simOperator.length() <= 3) ? "" : simOperator.substring(3, simOperator.length());
    }

    public static String d(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            return "";
        }
    }

    public static String a() {
        return Build.MODEL;
    }

    public static String b() {
        return Build.BRAND;
    }

    public static String e(Context context) {
        return context.getResources().getConfiguration().locale.getLanguage();
    }

    public static String f(Context context) {
        return context.getResources().getConfiguration().locale.getCountry();
    }

    public static String g(Context context) {
        try {
            String macAddress = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (macAddress == null) {
                return "";
            }
            return macAddress.replaceAll(":", "").toLowerCase();
        } catch (Exception e) {
            return "";
        }
    }

    public static int h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            return -1;
        }
    }

    public static String i(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            return "";
        }
    }

    public static int j(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int k(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static String l(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (Exception e) {
            return "";
        }
    }

    public static int m(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return 0;
            }
            int type = activeNetworkInfo.getType();
            if (type == 0) {
                return activeNetworkInfo.getSubtype();
            }
            if (type == 1) {
            }
            return -1;
        } catch (Exception e) {
            return -1;
        }
    }

    private static String q(Context context) {
        if (f4694a == null) {
            File file = new File(Environment.getExternalStorageDirectory().toString(), "/.a/track_id.bin");
            try {
                if (file.exists()) {
                    f4694a = a(file);
                } else {
                    UUID randomUUID = UUID.randomUUID();
                    a(file, randomUUID.toString());
                    f4694a = randomUUID.toString();
                }
            } catch (IOException e) {
            }
        }
        if (f4694a == null) {
            return "";
        }
        return f4694a;
    }

    private static String a(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        byte[] bArr = new byte[(int) randomAccessFile.length()];
        randomAccessFile.readFully(bArr);
        randomAccessFile.close();
        return new String(bArr);
    }

    private static void a(File file, String str) {
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        file.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(str.getBytes());
        fileOutputStream.close();
    }

    public static String n(Context context) {
        if (f4695b == null) {
            try {
                f4695b = context.getPackageManager().getPackageInfo("com.android.vending", 128).versionName;
            } catch (PackageManager.NameNotFoundException e) {
                f4695b = "0";
            }
        }
        return f4695b;
    }

    public static String o(Context context) {
        if (c == null) {
            try {
                c = context.getPackageManager().getPackageInfo("com.google.android.gms", 128).versionName;
            } catch (PackageManager.NameNotFoundException e) {
                c = "0";
            }
        }
        return c;
    }

    public static String p(Context context) {
        String str;
        String b2 = q.b(context, "ak.native.sdk", "GAID", (String) null);
        if (b2 != null) {
            return b2;
        }
        try {
            Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            str = (String) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient.Info").getMethod("getId", new Class[0]).invoke(cls.getMethod("getAdvertisingIdInfo", Context.class).invoke(null, context).getClass(), new Object[0]);
        } catch (Exception e) {
            str = b2;
        }
        if (str != null) {
            q.a(context, "ak.native.sdk", "GAID", str);
            return str;
        }
        new Thread(new e(context)).start();
        return null;
    }

    public static String c() {
        return TimeZone.getDefault().getDisplayName(false, 0);
    }

    public f(Runnable runnable, Integer num) {
        this.d = runnable;
        this.e = num;
    }

    public Runnable d() {
        return this.d;
    }

    public int e() {
        return this.e.intValue();
    }
}
