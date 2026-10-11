package com.mnt.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static String f3909a;

    /* renamed from: b, reason: collision with root package name */
    private static int f3910b;
    private static String c;
    private static String d;
    private static boolean e;
    private static String f;
    private static String g;
    private static String h;
    private static String i;
    private static final String j;
    private static final String k;
    private static final String l;
    private static final String m;
    private static String n;

    static {
        a.class.getName();
        f3910b = -2;
        c = null;
        d = "";
        f = "";
        g = null;
        h = com.mnt.impl.e.m;
        String str = com.mnt.impl.e.n;
        String str2 = com.mnt.impl.e.o;
        String str3 = com.mnt.impl.e.p;
        i = com.mnt.impl.e.q;
        j = com.mnt.impl.e.r;
        k = com.mnt.impl.e.s;
        l = com.mnt.impl.e.t;
        m = com.mnt.impl.e.u;
        n = null;
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(c)) {
            c = Settings.Secure.getString(context.getContentResolver(), "android_id");
        }
        return c;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(android.content.Context r2) {
        /*
            java.lang.String r1 = ""
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r2.getSystemService(r0)     // Catch: java.lang.Throwable -> L2b
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L2f
            java.lang.String r0 = r0.getSimCountryIso()     // Catch: java.lang.Throwable -> L2b
            java.lang.String r0 = r0.toUpperCase()     // Catch: java.lang.Throwable -> L2b
        L14:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L2a
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.String r0 = r0.getCountry()
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.toUpperCase()
        L2a:
            return r0
        L2b:
            r0 = move-exception
            r0.printStackTrace()
        L2f:
            r0 = r1
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mnt.a.a.b(android.content.Context):java.lang.String");
    }

    public static String a() {
        if (TextUtils.isEmpty(f)) {
            String b2 = b(com.mnt.impl.e.v);
            f = b2;
            if (TextUtils.isEmpty(b2)) {
                f = Build.MODEL;
            }
        }
        return f;
    }

    private static String b(String str) {
        try {
            return (String) Class.forName(com.mnt.impl.e.w).getDeclaredMethod(com.mnt.impl.e.x, String.class, String.class).invoke(null, str, "");
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return "";
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            return "";
        } catch (IllegalArgumentException e4) {
            e4.printStackTrace();
            return "";
        } catch (NoSuchMethodException e5) {
            e5.printStackTrace();
            return "";
        } catch (SecurityException e6) {
            e6.printStackTrace();
            return "";
        } catch (InvocationTargetException e7) {
            e7.printStackTrace();
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long b() {
        /*
            java.lang.String r0 = com.mnt.impl.e.y
            r2 = 0
            r1 = 0
            java.io.FileReader r5 = new java.io.FileReader     // Catch: java.lang.Exception -> L36 java.lang.Throwable -> L4a
            r5.<init>(r0)     // Catch: java.lang.Exception -> L36 java.lang.Throwable -> L4a
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L36 java.lang.Throwable -> L4a
            r0 = 8192(0x2000, float:1.14794E-41)
            r4.<init>(r5, r0)     // Catch: java.lang.Exception -> L36 java.lang.Throwable -> L4a
            java.lang.String r0 = r4.readLine()     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L5c
            java.lang.String r1 = com.mnt.impl.e.z     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L5c
            java.lang.String[] r0 = r0.split(r1)     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L5c
            r1 = 1
            r0 = r0[r1]     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L5c
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L5c
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L5c
            long r0 = (long) r0
            r4.close()     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L62
            r4.close()     // Catch: java.io.IOException -> L31
        L2d:
            r2 = 1024(0x400, double:5.06E-321)
            long r0 = r0 / r2
            return r0
        L31:
            r2 = move-exception
            r2.printStackTrace()
            goto L2d
        L36:
            r0 = move-exception
            r6 = r0
            r7 = r2
            r2 = r6
            r3 = r1
            r0 = r7
        L3c:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L59
            if (r3 == 0) goto L2d
            r3.close()     // Catch: java.io.IOException -> L45
            goto L2d
        L45:
            r2 = move-exception
            r2.printStackTrace()
            goto L2d
        L4a:
            r0 = move-exception
            r4 = r1
        L4c:
            if (r4 == 0) goto L51
            r4.close()     // Catch: java.io.IOException -> L52
        L51:
            throw r0
        L52:
            r1 = move-exception
            r1.printStackTrace()
            goto L51
        L57:
            r0 = move-exception
            goto L4c
        L59:
            r0 = move-exception
            r4 = r3
            goto L4c
        L5c:
            r0 = move-exception
            r6 = r0
            r0 = r2
            r2 = r6
            r3 = r4
            goto L3c
        L62:
            r2 = move-exception
            r3 = r4
            goto L3c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mnt.a.a.b():long");
    }

    public static int c() {
        try {
            return Runtime.getRuntime().availableProcessors();
        } catch (Throwable th) {
            th.printStackTrace();
            return 3;
        }
    }

    public static String d() {
        try {
            return new StringBuilder().append(((r1.getBlockSize() * new StatFs(Environment.getDataDirectory().getPath()).getBlockCount()) / 1024) / 1024).toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String c(Context context) {
        if (context == null) {
            return "";
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        return windowManager.getDefaultDisplay().getWidth() + com.mnt.impl.e.A + windowManager.getDefaultDisplay().getHeight();
    }

    public static boolean d(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) ? false : true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0032 A[Catch: Exception -> 0x0068, TryCatch #0 {Exception -> 0x0068, blocks: (B:2:0x0000, B:4:0x000a, B:6:0x0010, B:8:0x0016, B:10:0x001e, B:12:0x0028, B:17:0x002b, B:18:0x002f, B:19:0x0035, B:20:0x0038, B:21:0x003b, B:22:0x003e, B:23:0x0041, B:24:0x0044, B:25:0x0047, B:26:0x004a, B:27:0x004d, B:28:0x0050, B:29:0x0053, B:30:0x0056, B:31:0x0059, B:32:0x005c, B:33:0x005f, B:34:0x0062, B:35:0x0065, B:36:0x0032), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String e(android.content.Context r3) {
        /*
            java.lang.String r0 = "connectivity"
            java.lang.Object r0 = r3.getSystemService(r0)     // Catch: java.lang.Exception -> L68
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0     // Catch: java.lang.Exception -> L68
            if (r0 == 0) goto L25
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L68
            if (r0 == 0) goto L25
            boolean r1 = r0.isAvailable()     // Catch: java.lang.Exception -> L68
            if (r1 == 0) goto L25
            android.net.NetworkInfo$State r1 = r0.getState()     // Catch: java.lang.Exception -> L68
            android.net.NetworkInfo$State r2 = android.net.NetworkInfo.State.CONNECTED     // Catch: java.lang.Exception -> L68
            if (r1 != r2) goto L25
            int r1 = r0.getType()     // Catch: java.lang.Exception -> L68
            switch(r1) {
                case 0: goto L2b;
                case 1: goto L28;
                case 2: goto L32;
                case 3: goto L32;
                case 4: goto L32;
                case 5: goto L32;
                case 6: goto L32;
                default: goto L25;
            }
        L25:
            java.lang.String r0 = com.mnt.a.a.i
        L27:
            return r0
        L28:
            java.lang.String r0 = com.mnt.a.a.h     // Catch: java.lang.Exception -> L68
            goto L27
        L2b:
            int r0 = r0.getSubtype()     // Catch: java.lang.Exception -> L68
            switch(r0) {
                case 0: goto L65;
                case 1: goto L35;
                case 2: goto L38;
                case 3: goto L44;
                case 4: goto L3b;
                case 5: goto L47;
                case 6: goto L4a;
                case 7: goto L3e;
                case 8: goto L4d;
                case 9: goto L50;
                case 10: goto L53;
                case 11: goto L41;
                case 12: goto L56;
                case 13: goto L5f;
                case 14: goto L59;
                case 15: goto L5c;
                case 16: goto L62;
                default: goto L32;
            }     // Catch: java.lang.Exception -> L68
        L32:
            java.lang.String r0 = com.mnt.a.a.i     // Catch: java.lang.Exception -> L68
            goto L27
        L35:
            java.lang.String r0 = com.mnt.impl.e.B     // Catch: java.lang.Exception -> L68
            goto L27
        L38:
            java.lang.String r0 = com.mnt.impl.e.C     // Catch: java.lang.Exception -> L68
            goto L27
        L3b:
            java.lang.String r0 = com.mnt.impl.e.D     // Catch: java.lang.Exception -> L68
            goto L27
        L3e:
            java.lang.String r0 = com.mnt.impl.e.E     // Catch: java.lang.Exception -> L68
            goto L27
        L41:
            java.lang.String r0 = com.mnt.impl.e.F     // Catch: java.lang.Exception -> L68
            goto L27
        L44:
            java.lang.String r0 = com.mnt.impl.e.G     // Catch: java.lang.Exception -> L68
            goto L27
        L47:
            java.lang.String r0 = com.mnt.impl.e.H     // Catch: java.lang.Exception -> L68
            goto L27
        L4a:
            java.lang.String r0 = com.mnt.impl.e.I     // Catch: java.lang.Exception -> L68
            goto L27
        L4d:
            java.lang.String r0 = com.mnt.impl.e.J     // Catch: java.lang.Exception -> L68
            goto L27
        L50:
            java.lang.String r0 = com.mnt.impl.e.K     // Catch: java.lang.Exception -> L68
            goto L27
        L53:
            java.lang.String r0 = com.mnt.impl.e.L     // Catch: java.lang.Exception -> L68
            goto L27
        L56:
            java.lang.String r0 = com.mnt.impl.e.M     // Catch: java.lang.Exception -> L68
            goto L27
        L59:
            java.lang.String r0 = com.mnt.impl.e.N     // Catch: java.lang.Exception -> L68
            goto L27
        L5c:
            java.lang.String r0 = com.mnt.impl.e.O     // Catch: java.lang.Exception -> L68
            goto L27
        L5f:
            java.lang.String r0 = com.mnt.impl.e.P     // Catch: java.lang.Exception -> L68
            goto L27
        L62:
            java.lang.String r0 = com.mnt.impl.e.Q     // Catch: java.lang.Exception -> L68
            goto L27
        L65:
            java.lang.String r0 = com.mnt.a.a.i     // Catch: java.lang.Exception -> L68
            goto L27
        L68:
            r0 = move-exception
            r0.printStackTrace()
            java.lang.String r0 = com.mnt.a.a.i
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mnt.a.a.e(android.content.Context):java.lang.String");
    }

    public static String e() {
        Locale locale = Locale.getDefault();
        return String.format(com.mnt.impl.e.R, locale.getLanguage().toLowerCase(), locale.getCountry().toLowerCase());
    }

    public static String f(Context context) {
        return context.getApplicationInfo().packageName;
    }

    public static int f() {
        return Build.VERSION.SDK_INT;
    }

    public static String g() {
        return System.getProperty(com.mnt.impl.e.S);
    }

    public static int g(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? 1 : 0;
    }

    public static String h(Context context) {
        if (f3909a == null) {
            if (context == null) {
                f3909a = com.mnt.impl.e.T;
            } else {
                try {
                    f3909a = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                } catch (PackageManager.NameNotFoundException e2) {
                    f3909a = com.mnt.impl.e.U;
                }
            }
        }
        return f3909a;
    }

    public static int i(Context context) {
        if (f3910b < 0) {
            if (context == null) {
                f3910b = 0;
            } else {
                try {
                    f3910b = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                } catch (PackageManager.NameNotFoundException e2) {
                    f3910b = 0;
                }
            }
        }
        return f3910b;
    }

    public static String h() {
        try {
            return TimeZone.getDefault().getDisplayName(false, 0);
        } catch (Exception e2) {
            return "";
        }
    }

    public static String j(Context context) {
        TelephonyManager telephonyManager;
        if (!e) {
            if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                String networkOperator = telephonyManager.getNetworkOperator();
                d = networkOperator;
                if (TextUtils.isEmpty(networkOperator)) {
                    d = "";
                }
            }
            e = true;
        }
        return d;
    }

    public static SharedPreferences a(String str, Context context) {
        if (context != null) {
            if (Build.VERSION.SDK_INT > 10) {
                return context.getSharedPreferences(str, 4);
            }
            return context.getSharedPreferences(str, 0);
        }
        return null;
    }

    public static String k(Context context) {
        if (g == null) {
            try {
                String string = a(m, context).getString(l, "");
                g = string;
                if (TextUtils.isEmpty(string)) {
                    g = com.mnt.impl.d.a(context).f3911a;
                    SharedPreferences.Editor edit = a(m, context).edit();
                    edit.putString(l, g);
                    edit.commit();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return g;
    }

    public static String l(Context context) {
        if (context == null) {
            return null;
        }
        if (n == null) {
            SharedPreferences a2 = a(m, context);
            a2.registerOnSharedPreferenceChangeListener(new b());
            n = a2.getString(j, "");
        }
        return n;
    }

    public static void a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            n = str;
            SharedPreferences.Editor edit = a(m, context).edit();
            edit.putString(j, str);
            edit.commit();
        }
    }

    public static long m(Context context) {
        if (context == null) {
            return 0L;
        }
        return a(m, context).getLong(k, 0L);
    }

    public static void a(Context context, long j2) {
        if (context != null && j2 >= 1) {
            SharedPreferences.Editor edit = a(m, context).edit();
            edit.putLong(k, j2);
            edit.commit();
        }
    }

    public static SharedPreferences n(Context context) {
        return a(m, context);
    }

    public static File o(Context context) {
        File file = new File(context.getFilesDir().getAbsolutePath(), com.mnt.impl.e.V);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File b(Context context, String str) {
        return new File(o(context), str);
    }

    public static boolean a(View view) {
        boolean z = true;
        while (view != null) {
            z &= view.getVisibility() == 0;
            Object parent = view.getParent();
            if (parent != view.getRootView()) {
                view = (View) parent;
            } else {
                view = null;
            }
        }
        return z;
    }

    public static String a(JSONObject jSONObject, String str, String str2) {
        return jSONObject.isNull(str) ? str2 : jSONObject.optString(str, str2);
    }

    public static String a(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(',').append(str);
        }
        return sb.deleteCharAt(0).toString();
    }
}
