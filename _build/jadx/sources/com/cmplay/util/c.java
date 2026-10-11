package com.cmplay.util;

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
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    private static SimpleDateFormat f1725a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINESE);

    /* renamed from: b, reason: collision with root package name */
    private static boolean f1726b = false;
    private static boolean c = false;
    private static boolean d = false;
    private static boolean e = false;
    private static boolean f = false;
    private static boolean g = false;
    private static boolean h = false;
    private static boolean i = false;
    private static boolean j = false;
    private static boolean k = false;

    public static void a(String str, String str2) {
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

    public static void b(String str, String str2) {
        if (d) {
            Log.i(str, " " + str2);
        }
        if (e) {
            a("i", str, str2);
        }
    }

    public static void c(String str, String str2) {
        if (h) {
            Log.e(str, " " + str2);
        }
        if (i) {
            a("e", str, str2);
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
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.c.a(java.lang.String, java.lang.String, java.lang.String):void");
    }

    public static String a(long j2) {
        Date date;
        if (j2 > 0) {
            date = new Date(j2);
        } else {
            date = new Date();
        }
        return f1725a.format(date);
    }

    private static File a(String str) {
        String str2 = "mounted".equals(Environment.getExternalStorageState()) ? Environment.getExternalStorageDirectory() + "/IJSConnectAssistant/Log" : null;
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
