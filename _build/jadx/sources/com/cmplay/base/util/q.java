package com.cmplay.base.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;

/* compiled from: RuntimeCheck.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public static Context f1259a;

    /* renamed from: b, reason: collision with root package name */
    private static String f1260b = ":service";
    private static String c = ":inner";
    private static String d = ":web";
    private static boolean e;
    private static boolean f;
    private static boolean g;
    private static boolean h;
    private static boolean i;

    public static void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            g.a("zzb_pro", "set服务进程名：" + str);
            f1260b = str;
        }
    }

    public static boolean a() {
        return e;
    }

    public static boolean b() {
        return g;
    }

    public static boolean c() {
        return f;
    }

    public static boolean d() {
        return h;
    }

    public static void e() {
        if (!a()) {
            throw new RuntimeException("Must run in Service Process");
        }
    }

    public static void f() {
        if (!d()) {
            throw new RuntimeException("Must run in Web Process");
        }
    }

    public static void a(Context context) {
        Bundle bundle;
        f1259a = context;
        if (!i) {
            a(context.getPackageName() + ":service");
            ApplicationInfo applicationInfo = null;
            try {
                applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            } catch (PackageManager.NameNotFoundException e2) {
            }
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                String string = bundle.getString("SERVICE_PROCESS_NAME");
                if (!TextUtils.isEmpty(string)) {
                    f1260b = string;
                }
            }
            String b2 = b(context);
            g.a("zzb_pro", "当前processName=" + b2);
            if (b2 != null) {
                if (b2.contains(f1260b)) {
                    e = true;
                }
                if (b2.contains(c)) {
                    f = true;
                }
                if (!b2.contains(":")) {
                    g = true;
                }
                if (b2.contains(d)) {
                    h = true;
                }
                i = true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(android.content.Context r5) {
        /*
            java.io.File r0 = new java.io.File
            java.lang.String r1 = "/proc/self/cmdline"
            r0.<init>(r1)
            boolean r1 = r0.exists()
            if (r1 == 0) goto L41
            boolean r1 = r0.isDirectory()
            if (r1 != 0) goto L41
            r2 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5d
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5d
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5d
            r4.<init>(r0)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5d
            r3.<init>(r4)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5d
            r1.<init>(r3)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5d
            java.lang.String r0 = r1.readLine()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            if (r2 != 0) goto L3c
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            if (r1 == 0) goto L36
            r1.close()     // Catch: java.lang.Exception -> L37
        L36:
            return r0
        L37:
            r1 = move-exception
            r1.printStackTrace()
            goto L36
        L3c:
            if (r1 == 0) goto L41
            r1.close()     // Catch: java.lang.Exception -> L48
        L41:
            android.content.pm.ApplicationInfo r0 = r5.getApplicationInfo()
            java.lang.String r0 = r0.processName
            goto L36
        L48:
            r0 = move-exception
            r0.printStackTrace()
            goto L41
        L4d:
            r0 = move-exception
            r1 = r2
        L4f:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L69
            if (r1 == 0) goto L41
            r1.close()     // Catch: java.lang.Exception -> L58
            goto L41
        L58:
            r0 = move-exception
            r0.printStackTrace()
            goto L41
        L5d:
            r0 = move-exception
        L5e:
            if (r2 == 0) goto L63
            r2.close()     // Catch: java.lang.Exception -> L64
        L63:
            throw r0
        L64:
            r1 = move-exception
            r1.printStackTrace()
            goto L63
        L69:
            r0 = move-exception
            r2 = r1
            goto L5e
        L6c:
            r0 = move-exception
            goto L4f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.base.util.q.b(android.content.Context):java.lang.String");
    }

    public static String c(Context context) {
        try {
            return Settings.System.getString(context.getContentResolver(), "android_id");
        } catch (Exception e2) {
            return "";
        }
    }
}
