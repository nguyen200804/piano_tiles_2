package com.google.android.gms.common.util;

import android.os.Binder;
import android.os.Process;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzt {
    private static String Bk = null;

    public static String zzavz() {
        return zzhc(Binder.getCallingPid());
    }

    public static String zzawa() {
        if (Bk == null) {
            Bk = zzhc(Process.myPid());
        }
        return Bk;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String zzhc(int r5) {
        /*
            r0 = 0
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L5b
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L5b
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L5b
            r4 = 25
            r3.<init>(r4)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L5b
            java.lang.String r4 = "/proc/"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L5b
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L5b
            java.lang.String r4 = "/cmdline"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L5b
            java.lang.String r3 = r3.toString()     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L5b
            r1.<init>(r3)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L5b
            r2.<init>(r1)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L5b
            java.lang.String r1 = r2.readLine()     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L71
            java.lang.String r0 = r1.trim()     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L71
            if (r2 == 0) goto L33
            r2.close()     // Catch: java.lang.Exception -> L34
        L33:
            return r0
        L34:
            r1 = move-exception
            java.lang.String r2 = "ProcessUtils"
            java.lang.String r3 = r1.getMessage()
            android.util.Log.w(r2, r3, r1)
            goto L33
        L3f:
            r1 = move-exception
            r2 = r0
        L41:
            java.lang.String r3 = "ProcessUtils"
            java.lang.String r4 = r1.getMessage()     // Catch: java.lang.Throwable -> L6f
            android.util.Log.e(r3, r4, r1)     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L33
            r2.close()     // Catch: java.lang.Exception -> L50
            goto L33
        L50:
            r1 = move-exception
            java.lang.String r2 = "ProcessUtils"
            java.lang.String r3 = r1.getMessage()
            android.util.Log.w(r2, r3, r1)
            goto L33
        L5b:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L5e:
            if (r2 == 0) goto L63
            r2.close()     // Catch: java.lang.Exception -> L64
        L63:
            throw r0
        L64:
            r1 = move-exception
            java.lang.String r2 = "ProcessUtils"
            java.lang.String r3 = r1.getMessage()
            android.util.Log.w(r2, r3, r1)
            goto L63
        L6f:
            r0 = move-exception
            goto L5e
        L71:
            r1 = move-exception
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.zzt.zzhc(int):java.lang.String");
    }
}
