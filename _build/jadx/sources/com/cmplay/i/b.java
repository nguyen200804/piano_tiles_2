package com.cmplay.i;

import android.content.Context;
import java.io.File;

/* compiled from: Env.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static int f1399a = -1;

    /* renamed from: b, reason: collision with root package name */
    private static String f1400b = null;

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(2:2|3)|(1:7)|(3:17|18|(5:20|21|10|11|12))|9|10|11|12|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x007f, code lost:
    
        r1 = e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r5) {
        /*
            r1 = 0
            java.io.File r0 = b(r5)     // Catch: java.lang.NullPointerException -> L74
        L5:
            if (r0 == 0) goto L11
            boolean r2 = r0.exists()
            if (r2 == 0) goto L11
            java.lang.String r1 = r0.getAbsolutePath()
        L11:
            if (r1 != 0) goto L81
            java.io.File r0 = android.os.Environment.getExternalStorageDirectory()     // Catch: java.lang.Exception -> L77
            if (r0 == 0) goto L81
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L77
            java.lang.String r2 = "Android"
            r0.<init>(r2)     // Catch: java.lang.Exception -> L77
            java.lang.String r2 = java.io.File.separator     // Catch: java.lang.Exception -> L77
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Exception -> L77
            java.lang.String r2 = "data"
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Exception -> L77
            java.lang.String r2 = java.io.File.separator     // Catch: java.lang.Exception -> L77
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Exception -> L77
            java.lang.String r2 = r5.getPackageName()     // Catch: java.lang.Exception -> L77
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Exception -> L77
            java.lang.String r2 = java.io.File.separator     // Catch: java.lang.Exception -> L77
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Exception -> L77
            java.lang.String r2 = "files"
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Exception -> L77
            java.io.File r2 = new java.io.File     // Catch: java.lang.Exception -> L77
            java.io.File r3 = android.os.Environment.getExternalStorageDirectory()     // Catch: java.lang.Exception -> L77
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L77
            r2.<init>(r3, r0)     // Catch: java.lang.Exception -> L77
            java.lang.String r1 = r2.getAbsolutePath()     // Catch: java.lang.Exception -> L77
            r0 = r1
        L58:
            java.io.File r1 = new java.io.File     // Catch: java.lang.Exception -> L7f
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L7f
            r2.<init>()     // Catch: java.lang.Exception -> L7f
            java.lang.StringBuilder r2 = r2.append(r0)     // Catch: java.lang.Exception -> L7f
            java.lang.String r3 = java.io.File.separator     // Catch: java.lang.Exception -> L7f
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> L7f
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L7f
            r1.<init>(r2)     // Catch: java.lang.Exception -> L7f
            r1.mkdirs()     // Catch: java.lang.Exception -> L7f
        L73:
            return r0
        L74:
            r0 = move-exception
            r0 = r1
            goto L5
        L77:
            r0 = move-exception
            r4 = r0
            r0 = r1
            r1 = r4
        L7b:
            r1.printStackTrace()
            goto L73
        L7f:
            r1 = move-exception
            goto L7b
        L81:
            r0 = r1
            goto L58
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.i.b.a(android.content.Context):java.lang.String");
    }

    private static File b(Context context) {
        try {
            return context.getExternalFilesDir(null);
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        } catch (NullPointerException e2) {
            return null;
        } catch (SecurityException e3) {
            return null;
        }
    }
}
