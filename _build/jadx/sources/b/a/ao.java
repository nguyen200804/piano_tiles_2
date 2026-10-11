package b.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Calendar;
import java.util.Locale;

/* compiled from: DeviceConfig.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ao {

    /* renamed from: a, reason: collision with root package name */
    protected static final String f66a = ao.class.getName();

    public static String a(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    public static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    public static boolean a(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    public static String a() {
        String str = null;
        try {
            FileReader fileReader = new FileReader("/proc/cpuinfo");
            if (fileReader != null) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
                    str = bufferedReader.readLine();
                    bufferedReader.close();
                    fileReader.close();
                } catch (IOException e) {
                    ap.b(f66a, "Could not read from file /proc/cpuinfo", e);
                }
            }
        } catch (FileNotFoundException e2) {
            ap.b(f66a, "Could not open file /proc/cpuinfo", e2);
        }
        if (str != null) {
            return str.substring(str.indexOf(58) + 1).trim();
        }
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c(android.content.Context r4) {
        /*
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r4.getSystemService(r0)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            if (r0 != 0) goto L11
            java.lang.String r1 = b.a.ao.f66a
            java.lang.String r2 = "No IMEI."
            b.a.ap.d(r1, r2)
        L11:
            java.lang.String r1 = ""
            java.lang.String r2 = "android.permission.READ_PHONE_STATE"
            boolean r2 = a(r4, r2)     // Catch: java.lang.Exception -> L5c
            if (r2 == 0) goto L64
            java.lang.String r0 = r0.getDeviceId()     // Catch: java.lang.Exception -> L5c
        L1f:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L5b
            java.lang.String r0 = b.a.ao.f66a
            java.lang.String r1 = "No IMEI."
            b.a.ap.d(r0, r1)
            java.lang.String r0 = k(r4)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L5b
            java.lang.String r0 = b.a.ao.f66a
            java.lang.String r1 = "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead."
            b.a.ap.d(r0, r1)
            android.content.ContentResolver r0 = r4.getContentResolver()
            java.lang.String r1 = "android_id"
            java.lang.String r0 = android.provider.Settings.Secure.getString(r0, r1)
            java.lang.String r1 = b.a.ao.f66a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "getDeviceId: Secure.ANDROID_ID: "
            r2.<init>(r3)
            java.lang.StringBuilder r2 = r2.append(r0)
            java.lang.String r2 = r2.toString()
            b.a.ap.a(r1, r2)
        L5b:
            return r0
        L5c:
            r0 = move-exception
            java.lang.String r2 = b.a.ao.f66a
            java.lang.String r3 = "No IMEI."
            b.a.ap.d(r2, r3, r0)
        L64:
            r0 = r1
            goto L1f
        */
        throw new UnsupportedOperationException("Method not decompiled: b.a.ao.c(android.content.Context):java.lang.String");
    }

    public static String d(Context context) {
        return av.b(c(context));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0023, code lost:
    
        r0 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] e(android.content.Context r4) {
        /*
            r3 = 1
            r2 = 0
            r0 = 2
            java.lang.String[] r1 = new java.lang.String[r0]
            java.lang.String r0 = ""
            r1[r2] = r0
            java.lang.String r0 = ""
            r1[r3] = r0
            android.content.pm.PackageManager r0 = r4.getPackageManager()     // Catch: java.lang.Exception -> L64
            java.lang.String r2 = "android.permission.ACCESS_NETWORK_STATE"
            java.lang.String r3 = r4.getPackageName()     // Catch: java.lang.Exception -> L64
            int r0 = r0.checkPermission(r2, r3)     // Catch: java.lang.Exception -> L64
            if (r0 == 0) goto L24
            r0 = 0
            java.lang.String r2 = ""
            r1[r0] = r2     // Catch: java.lang.Exception -> L64
            r0 = r1
        L23:
            return r0
        L24:
            java.lang.String r0 = "connectivity"
            java.lang.Object r0 = r4.getSystemService(r0)     // Catch: java.lang.Exception -> L64
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0     // Catch: java.lang.Exception -> L64
            if (r0 != 0) goto L35
            r0 = 0
            java.lang.String r2 = ""
            r1[r0] = r2     // Catch: java.lang.Exception -> L64
            r0 = r1
            goto L23
        L35:
            r2 = 1
            android.net.NetworkInfo r2 = r0.getNetworkInfo(r2)     // Catch: java.lang.Exception -> L64
            android.net.NetworkInfo$State r2 = r2.getState()     // Catch: java.lang.Exception -> L64
            android.net.NetworkInfo$State r3 = android.net.NetworkInfo.State.CONNECTED     // Catch: java.lang.Exception -> L64
            if (r2 != r3) goto L49
            r0 = 0
            java.lang.String r2 = "Wi-Fi"
            r1[r0] = r2     // Catch: java.lang.Exception -> L64
            r0 = r1
            goto L23
        L49:
            r2 = 0
            android.net.NetworkInfo r0 = r0.getNetworkInfo(r2)     // Catch: java.lang.Exception -> L64
            android.net.NetworkInfo$State r2 = r0.getState()     // Catch: java.lang.Exception -> L64
            android.net.NetworkInfo$State r3 = android.net.NetworkInfo.State.CONNECTED     // Catch: java.lang.Exception -> L64
            if (r2 != r3) goto L68
            r2 = 0
            java.lang.String r3 = "2G/3G"
            r1[r2] = r3     // Catch: java.lang.Exception -> L64
            r2 = 1
            java.lang.String r0 = r0.getSubtypeName()     // Catch: java.lang.Exception -> L64
            r1[r2] = r0     // Catch: java.lang.Exception -> L64
            r0 = r1
            goto L23
        L64:
            r0 = move-exception
            r0.printStackTrace()
        L68:
            r0 = r1
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: b.a.ao.e(android.content.Context):java.lang.String[]");
    }

    public static boolean f(Context context) {
        return "Wi-Fi".equals(e(context)[0]);
    }

    public static boolean g(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnectedOrConnecting();
            }
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    public static int h(Context context) {
        try {
            Calendar calendar = Calendar.getInstance(r(context));
            if (calendar != null) {
                return calendar.getTimeZone().getRawOffset() / 3600000;
            }
        } catch (Exception e) {
            ap.a(f66a, "error in getTimeZone", e);
        }
        return 8;
    }

    public static String[] i(Context context) {
        String[] strArr = new String[2];
        try {
            Locale r = r(context);
            if (r != null) {
                strArr[0] = r.getCountry();
                strArr[1] = r.getLanguage();
            }
            if (TextUtils.isEmpty(strArr[0])) {
                strArr[0] = "Unknown";
            }
            if (TextUtils.isEmpty(strArr[1])) {
                strArr[1] = "Unknown";
            }
        } catch (Exception e) {
            ap.b(f66a, "error in getLocaleInfo", e);
        }
        return strArr;
    }

    private static Locale r(Context context) {
        Locale locale = null;
        try {
            Configuration configuration = new Configuration();
            configuration.setToDefaults();
            Settings.System.getConfiguration(context.getContentResolver(), configuration);
            if (configuration != null) {
                locale = configuration.locale;
            }
        } catch (Exception e) {
            ap.b(f66a, "fail to read user config locale");
        }
        if (locale == null) {
            return Locale.getDefault();
        }
        return locale;
    }

    public static String j(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                String string = applicationInfo.metaData.getString("UMENG_APPKEY");
                if (string != null) {
                    return string.trim();
                }
                ap.b(f66a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
            }
        } catch (Exception e) {
            ap.b(f66a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", e);
        }
        return null;
    }

    public static String k(Context context) {
        WifiManager wifiManager;
        try {
            wifiManager = (WifiManager) context.getSystemService("wifi");
        } catch (Exception e) {
            ap.d(f66a, "Could not get mac address." + e.toString());
        }
        if (a(context, "android.permission.ACCESS_WIFI_STATE")) {
            return wifiManager.getConnectionInfo().getMacAddress();
        }
        ap.d(f66a, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
        return "";
    }

    public static int[] l(Context context) {
        int i;
        int i2;
        int i3;
        int i4;
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            if ((context.getApplicationInfo().flags & 8192) == 0) {
                i2 = a(displayMetrics, "noncompatWidthPixels");
                i = a(displayMetrics, "noncompatHeightPixels");
            } else {
                i = -1;
                i2 = -1;
            }
            if (i2 == -1 || i == -1) {
                i3 = displayMetrics.widthPixels;
                i4 = displayMetrics.heightPixels;
            } else {
                i3 = i2;
                i4 = i;
            }
            int[] iArr = new int[2];
            if (i3 > i4) {
                iArr[0] = i4;
                iArr[1] = i3;
                return iArr;
            }
            iArr[0] = i3;
            iArr[1] = i4;
            return iArr;
        } catch (Exception e) {
            ap.b(f66a, "read resolution fail", e);
            return null;
        }
    }

    private static int a(Object obj, String str) {
        try {
            Field declaredField = DisplayMetrics.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.getInt(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static String m(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception e) {
            ap.a(f66a, "read carrier fail", e);
            return "Unknown";
        }
    }

    public static String n(Context context) {
        Object obj;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null && (obj = applicationInfo.metaData.get("UMENG_CHANNEL")) != null) {
                String obj2 = obj.toString();
                if (obj2 == null) {
                    ap.a(f66a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
                    return "Unknown";
                }
                return obj2;
            }
        } catch (Exception e) {
            ap.a(f66a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
            e.printStackTrace();
        }
        return "Unknown";
    }

    public static String o(Context context) {
        return context.getPackageName();
    }

    public static String p(Context context) {
        return context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }

    public static boolean q(Context context) {
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception e) {
            return false;
        }
    }
}
