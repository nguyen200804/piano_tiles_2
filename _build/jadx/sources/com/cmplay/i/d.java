package com.cmplay.i;

import android.content.Context;
import android.provider.Settings;

/* compiled from: SystemUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    /* JADX WARN: Removed duplicated region for block: B:42:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0061  */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r5) {
        /*
            java.io.File r0 = new java.io.File
            java.lang.String r1 = "/proc/self/cmdline"
            r0.<init>(r1)
            boolean r1 = r0.exists()
            if (r1 == 0) goto L41
            boolean r1 = r0.isDirectory()
            if (r1 != 0) goto L41
            r2 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L8b
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L8b
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L8b
            r4.<init>(r0)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L8b
            r3.<init>(r4)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L8b
            r1.<init>(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L8b
            java.lang.String r0 = r1.readLine()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La1
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La1
            if (r2 != 0) goto L3c
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La1
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
            r1.close()     // Catch: java.lang.Exception -> L76
        L41:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L97
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r5.getSystemService(r0)
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0
            if (r0 == 0) goto L97
            java.util.List r0 = r0.getRunningAppProcesses()
            if (r0 == 0) goto L97
            java.util.Iterator r1 = r0.iterator()
        L5b:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L97
            java.lang.Object r0 = r1.next()
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0
            int r2 = r0.pid
            int r3 = android.os.Process.myPid()
            if (r2 != r3) goto L5b
            java.lang.String r0 = r0.processName
            java.lang.String r0 = r0.trim()
            goto L36
        L76:
            r0 = move-exception
            r0.printStackTrace()
            goto L41
        L7b:
            r0 = move-exception
            r1 = r2
        L7d:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L9e
            if (r1 == 0) goto L41
            r1.close()     // Catch: java.lang.Exception -> L86
            goto L41
        L86:
            r0 = move-exception
            r0.printStackTrace()
            goto L41
        L8b:
            r0 = move-exception
        L8c:
            if (r2 == 0) goto L91
            r2.close()     // Catch: java.lang.Exception -> L92
        L91:
            throw r0
        L92:
            r1 = move-exception
            r1.printStackTrace()
            goto L91
        L97:
            android.content.pm.ApplicationInfo r0 = r5.getApplicationInfo()
            java.lang.String r0 = r0.processName
            goto L36
        L9e:
            r0 = move-exception
            r2 = r1
            goto L8c
        La1:
            r0 = move-exception
            goto L7d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.i.d.a(android.content.Context):java.lang.String");
    }

    public static String b(Context context) {
        try {
            return Settings.System.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            return "";
        }
    }
}
