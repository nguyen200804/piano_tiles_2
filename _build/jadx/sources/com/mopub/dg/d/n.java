package com.mopub.dg.d;

import android.util.Log;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class n {
    public static int a(String str) {
        if (!a(2)) {
            return -1;
        }
        if (str == null) {
            str = "";
        }
        return Log.v("DG", str);
    }

    public static int a(String str, Throwable th) {
        if (!a(3)) {
            return -1;
        }
        if (str == null) {
            str = "";
        }
        b(th);
        return Log.d("DG", str, th);
    }

    public static int a(Throwable th) {
        if (!a(6)) {
            return -1;
        }
        b(th);
        return Log.e("DG", "", th);
    }

    public static int a(Object... objArr) {
        if (!a(6)) {
            return -1;
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            if (obj == null) {
                obj = "";
            }
            sb.append(obj).append(' ');
        }
        return b(sb.toString());
    }

    public static boolean a(int i) {
        return com.mopub.dg.c.g.f4267a || i >= com.mopub.dg.c.g.f4268b;
    }

    public static int b(String str) {
        if (!a(6)) {
            return -1;
        }
        if (str == null) {
            str = "";
        }
        return Log.e("DG", str);
    }

    public static int b(String str, Throwable th) {
        if (!a(5)) {
            return -1;
        }
        if (str == null) {
            str = "";
        }
        b(th);
        return Log.w("DG", str, th);
    }

    private static void b(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.close();
        try {
            stringWriter.close();
        } catch (IOException e) {
            Log.w("Log.debug", "", e);
        }
    }
}
