package com.cmplay.base.util;

import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: CMLog.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    private static SimpleDateFormat f1243a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINESE);

    /* renamed from: b, reason: collision with root package name */
    private static boolean f1244b = false;
    private static boolean c = false;
    private static boolean d = false;
    private static boolean e = false;
    private static boolean f = false;
    private static boolean g = false;
    private static boolean h = false;
    private static boolean i = false;
    private static boolean j = false;
    private static boolean k = false;
    private static boolean l = false;

    public static void a(boolean z) {
        l = z;
    }

    public static boolean a() {
        return l;
    }

    public static void a(String str) {
        if (l) {
            Log.d("zzb", str);
        }
        if (k) {
            a("d", "zzb", str);
        }
    }

    public static void a(String str, String str2) {
        String substring;
        if (l) {
            int length = str2.length();
            for (int i2 = 0; i2 < length; i2 += 4000) {
                if (length <= i2 + 4000) {
                    substring = str2.substring(i2);
                } else {
                    int i3 = i2 + 4000;
                    if (i3 > length) {
                        i3 = length;
                    }
                    substring = str2.substring(i2, i3);
                }
                Log.d(str + "___index:" + i2, substring.trim());
            }
        }
        if (k) {
            a("d", str, str2);
        }
    }

    public static void b(String str) {
        if (l) {
            Log.e("zzb", str);
        }
        if (k) {
            a("e", "zzb", str);
        }
    }

    public static long b() {
        if (l) {
            return System.currentTimeMillis();
        }
        return 0L;
    }

    public static void a(long j2, String str) {
        if (l) {
            a("use_time", str + " 耗时：" + (System.currentTimeMillis() - j2));
        }
    }

    public static void b(String str, String str2) {
        if (j) {
            Log.d(str, " " + str2);
        }
        if (k) {
            a("d", str, str2);
        }
    }

    public static void a(String str, Throwable th) {
        if (h) {
            Log.i(str, " " + th);
        }
        if (i) {
            PrintWriter printWriter = new PrintWriter(new StringWriter());
            th.printStackTrace(printWriter);
            a("e", str, printWriter.toString());
        }
    }

    public static void c(String str, String str2) {
        if (d) {
            Log.i(str, " " + str2);
        }
        if (e) {
            a("i", str, str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0145 A[Catch: IOException -> 0x01b1, TRY_LEAVE, TryCatch #2 {IOException -> 0x01b1, blocks: (B:80:0x0140, B:74:0x0145), top: B:79:0x0140 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0140 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.base.util.g.a(java.lang.String, java.lang.String, java.lang.String):void");
    }

    public static String a(long j2) {
        Date date;
        if (j2 > 0) {
            date = new Date(j2);
        } else {
            date = new Date();
        }
        return f1243a.format(date);
    }

    private static File c(String str) {
        String str2 = "mounted".equals(Environment.getExternalStorageState()) ? Environment.getExternalStorageDirectory() + "/CMPlaySDK/Log" : null;
        if (str2 == null) {
            return null;
        }
        File file = new File(str2);
        if (file != null && !file.exists()) {
            Log.i("Log", "fileDir is no exists!");
            if (file != null && !file.mkdirs()) {
                return null;
            }
        }
        return new File(str2, str);
    }
}
