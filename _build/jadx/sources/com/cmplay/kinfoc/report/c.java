package com.cmplay.kinfoc.report;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;

/* compiled from: KInfocCommon.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static String f1564a = "0";

    public static String a(Context context) {
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

    public static String b(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static String c(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        StringBuilder sb = new StringBuilder();
        try {
            String deviceId = telephonyManager.getDeviceId();
            int length = !TextUtils.isEmpty(deviceId) ? deviceId.length() : 0;
            for (int i = 0; i < 32 - length; i++) {
                sb.append('0');
            }
            if (!TextUtils.isEmpty(deviceId)) {
                sb.append(deviceId);
            }
        } catch (Exception e) {
            for (int i2 = 0; i2 < 32; i2++) {
                sb.append('0');
            }
        }
        return sb.toString();
    }

    public static String d(Context context) {
        if (context == null) {
            return null;
        }
        String c = c(context);
        int length = !TextUtils.isEmpty(c) ? c.length() : 0;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 32 - length; i++) {
            sb.append('0');
        }
        if (!TextUtils.isEmpty(c)) {
            sb.append(c);
        }
        return sb.toString();
    }

    public static synchronized String e(Context context) {
        String str;
        synchronized (c.class) {
            if (f1564a == null || "0".equals(f1564a)) {
                f1564a = i(context);
            }
            str = f1564a;
        }
        return str;
    }

    private static String i(Context context) {
        FileOutputStream fileOutputStream;
        Throwable th;
        BufferedReader bufferedReader;
        Throwable th2;
        String str;
        BufferedReader bufferedReader2;
        FileOutputStream fileOutputStream2 = null;
        if (context == null || context.getFilesDir() == null) {
            return "0";
        }
        File file = new File(context.getFilesDir().getAbsolutePath() + File.separatorChar + "Chanel.dat");
        if (file.exists()) {
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
                try {
                    try {
                        str = bufferedReader.readLine();
                        try {
                            bufferedReader.close();
                            if (bufferedReader == null) {
                                return str;
                            }
                            try {
                                bufferedReader.close();
                                return str;
                            } catch (IOException e) {
                                return str;
                            }
                        } catch (Exception e2) {
                            bufferedReader2 = bufferedReader;
                            if (bufferedReader2 == null) {
                                return str;
                            }
                            try {
                                bufferedReader2.close();
                                return str;
                            } catch (IOException e3) {
                                return str;
                            }
                        }
                    } catch (Exception e4) {
                        str = "0";
                        bufferedReader2 = bufferedReader;
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw th2;
                }
            } catch (Exception e6) {
                str = "0";
                bufferedReader2 = null;
            } catch (Throwable th4) {
                bufferedReader = null;
                th2 = th4;
            }
        } else {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    try {
                        byte[] f = f(context);
                        String str2 = new String(f);
                        try {
                            fileOutputStream.write(f, 0, f.length);
                            fileOutputStream.flush();
                            if (fileOutputStream == null) {
                                return str2;
                            }
                            try {
                                fileOutputStream.close();
                                return str2;
                            } catch (IOException e7) {
                                return str2;
                            }
                        } catch (IOException e8) {
                            if (fileOutputStream == null) {
                                return str2;
                            }
                            try {
                                fileOutputStream.close();
                                return str2;
                            } catch (IOException e9) {
                                return str2;
                            }
                        }
                    } catch (IOException e10) {
                        fileOutputStream2 = fileOutputStream;
                        if (fileOutputStream2 == null) {
                            return "0";
                        }
                        try {
                            fileOutputStream2.close();
                            return "0";
                        } catch (IOException e11) {
                            return "0";
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e12) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e13) {
            } catch (Throwable th6) {
                fileOutputStream = null;
                th = th6;
            }
        }
    }

    public static byte[] f(Context context) {
        try {
            return String.valueOf(10001).getBytes();
        } catch (Exception e) {
            return "0".getBytes();
        }
    }

    public static a g(Context context) {
        a aVar = new a();
        aVar.f1563b = a(context);
        aVar.c = b(context);
        aVar.d = e(context);
        aVar.e = String.valueOf(0);
        aVar.f = String.valueOf(false);
        aVar.g = c(context);
        aVar.h = Build.BOARD;
        aVar.j = Build.BRAND;
        aVar.k = Build.CPU_ABI;
        aVar.m = Build.DEVICE;
        aVar.n = Build.DISPLAY;
        aVar.o = Build.FINGERPRINT;
        aVar.q = Build.HOST;
        aVar.r = Build.ID;
        aVar.s = Build.MANUFACTURER;
        aVar.t = Build.MODEL;
        aVar.u = Build.PRODUCT;
        aVar.w = Build.TAGS;
        aVar.x = Build.TYPE;
        aVar.y = Build.USER;
        aVar.z = Build.VERSION.CODENAME;
        aVar.A = Build.VERSION.INCREMENTAL;
        aVar.B = Build.VERSION.RELEASE;
        aVar.C = Build.VERSION.SDK;
        aVar.D = Build.VERSION.SDK_INT;
        a(aVar);
        return aVar;
    }

    @TargetApi(8)
    static void a(a aVar) {
        if (8 <= Build.VERSION.SDK_INT) {
            aVar.i = Build.BOOTLOADER;
        }
        if (8 <= Build.VERSION.SDK_INT) {
            aVar.l = Build.CPU_ABI2;
        }
        if (8 <= Build.VERSION.SDK_INT) {
            aVar.p = Build.HARDWARE;
        }
        if (8 <= Build.VERSION.SDK_INT) {
            aVar.v = Build.RADIO;
        }
    }

    public static String h(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }
}
