package com.cmcm.dmc.sdk.a;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    private static Class<?> f690a;

    /* renamed from: b, reason: collision with root package name */
    private static Method f691b;

    public static String a() {
        try {
            String a2 = a("wifi.interface");
            if (a2 == null) {
                a2 = "wlan0";
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/sys/class/net/" + a2 + "/address"), 1024);
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            if (readLine == null) {
                return readLine;
            }
            readLine.trim();
            return readLine;
        } catch (Exception e) {
            return "";
        }
    }

    public static String a(String str) {
        if (f691b == null) {
            synchronized (q.class) {
                if (f691b == null) {
                    try {
                        if (f690a == null) {
                            f690a = Class.forName("android.os.SystemProperties");
                        }
                        f691b = f690a.getDeclaredMethod("get", String.class);
                    } catch (Exception e) {
                    }
                }
            }
        }
        try {
            return (String) f691b.invoke(f690a, str);
        } catch (Exception e2) {
            return null;
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static String[] a(Context context) {
        int i;
        String simOperator;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager.getSimState() != 5) {
                com.cmcm.dmc.sdk.g.e.a().a("01");
            }
            simOperator = telephonyManager.getSimOperator();
            if (TextUtils.isEmpty(simOperator)) {
                com.cmcm.dmc.sdk.g.e.a().a("03");
            }
            i = simOperator.length();
        } catch (Exception e) {
            e = e;
            i = 0;
        }
        try {
            if (simOperator.length() >= 5) {
                return new String[]{simOperator.substring(0, 3), simOperator.substring(3)};
            }
        } catch (Exception e2) {
            e = e2;
            if (e instanceof IndexOutOfBoundsException) {
                com.cmcm.dmc.sdk.g.e.a().a("2" + i);
            }
            return new String[]{"", ""};
        }
        return new String[]{"", ""};
    }

    public static long b() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
            r0 = bufferedReader.readLine().split("\\s+").length == 3 ? Integer.valueOf(r3[1]).intValue() * 1024 : 0L;
            bufferedReader.close();
        } catch (Exception e) {
        }
        return r0;
    }

    public static String b(Context context) {
        try {
            String string = Settings.System.getString(context.getContentResolver(), "android_id");
            if (string == null) {
                return string;
            }
            string.trim();
            if (string.length() != 0) {
                return string;
            }
            com.cmcm.dmc.sdk.g.e.a().b("01");
            return string;
        } catch (Exception e) {
            com.cmcm.dmc.sdk.g.e.a().b("02");
            return "";
        }
    }

    private static boolean b(String str) {
        Process process = null;
        try {
            process = Runtime.getRuntime().exec("ls -l " + str);
            String readLine = new BufferedReader(new InputStreamReader(process.getInputStream())).readLine();
            if (readLine != null && readLine.length() >= 4) {
                char charAt = readLine.charAt(3);
                r0 = charAt == 's' || charAt == 'x';
                if (process != null) {
                    try {
                        process.exitValue();
                    } catch (IllegalThreadStateException e) {
                        try {
                            process.destroy();
                        } catch (Throwable th) {
                            i.a("Utils", "isExecutable: " + th.getMessage());
                        }
                    }
                }
            } else if (process != null) {
                try {
                    process.exitValue();
                } catch (IllegalThreadStateException e2) {
                    try {
                        process.destroy();
                    } catch (Throwable th2) {
                        i.a("Utils", "isExecutable: " + th2.getMessage());
                    }
                }
            }
        } catch (Exception e3) {
            if (process != null) {
                try {
                    process.exitValue();
                } catch (IllegalThreadStateException e4) {
                    try {
                        process.destroy();
                    } catch (Throwable th3) {
                        i.a("Utils", "isExecutable: " + th3.getMessage());
                    }
                }
            }
        } catch (Throwable th4) {
            if (process != null) {
                try {
                    process.exitValue();
                } catch (IllegalThreadStateException e5) {
                    try {
                        process.destroy();
                    } catch (Throwable th5) {
                        i.a("Utils", "isExecutable: " + th5.getMessage());
                    }
                }
            }
            throw th4;
        }
        return r0;
    }

    public static long c() {
        return Build.VERSION.SDK_INT < 18 ? r1.getBlockCount() * r1.getBlockSize() : new StatFs(Environment.getDataDirectory().getPath()).getTotalBytes();
    }

    public static String c(Context context) {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return String.valueOf(displayMetrics.heightPixels) + "*" + String.valueOf(displayMetrics.widthPixels);
        } catch (Exception e) {
            return "Unknown";
        }
    }

    @SuppressLint({"NewApi"})
    public static long d(Context context) {
        if (Build.VERSION.SDK_INT < 16) {
            return b();
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    public static String d() {
        String a2 = a("ro.product.brand");
        if (TextUtils.isEmpty(a2)) {
            a2 = Build.MODEL;
        }
        return !TextUtils.isEmpty(a2) ? a2 : EnvironmentCompat.MEDIA_UNKNOWN;
    }

    public static String e(Context context) {
        try {
            return context.getResources().getDisplayMetrics().density + "";
        } catch (Exception e) {
            return "";
        }
    }

    public static boolean e() {
        return (new File("/system/bin/su").exists() && b("/system/bin/su")) || (new File("/system/xbin/su").exists() && b("/system/xbin/su"));
    }

    public static long f() {
        File file = new File(Environment.getExternalStorageDirectory(), "DCIM");
        long lastModified = (file.exists() && file.isDirectory()) ? file.lastModified() : 0L;
        File file2 = new File("/system/usr");
        long lastModified2 = (file2.exists() && file2.isDirectory()) ? file2.lastModified() : 0L;
        if (lastModified < 1230739201000L) {
            lastModified = 0;
        }
        return (lastModified2 < 1230739201000L || lastModified <= 0) ? lastModified2 : lastModified > lastModified2 ? lastModified2 : lastModified;
    }

    public static String f(Context context) {
        Locale locale;
        Resources resources = context.getResources();
        if (resources != null) {
            Configuration configuration = resources.getConfiguration();
            locale = configuration != null ? configuration.locale : null;
            if (locale == null) {
                locale = Locale.getDefault();
            }
        } else {
            locale = Locale.getDefault();
        }
        return locale.getLanguage() + "_" + locale.getCountry();
    }

    public static int g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            return -1;
        }
    }

    public static boolean h(Context context) {
        try {
            ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            NetworkInfo networkInfo = null;
            return networkInfo.isAvailable();
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean i(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo.getType() == 1) {
                if (activeNetworkInfo.isAvailable()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static int j(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getType();
        } catch (Exception e) {
            return -1;
        }
    }

    public static List<String> k(Context context) {
        List<String> asList;
        try {
            asList = Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions);
        } catch (Throwable th) {
            i.a("Utils", " android 5.0+ packageInfo not found: " + th.getMessage());
        }
        if (asList.size() > 0) {
            return asList;
        }
        return null;
    }
}
