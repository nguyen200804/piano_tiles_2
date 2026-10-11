package com.tencent.mm.sdk.b;

import android.os.Build;
import android.os.Looper;
import android.os.Process;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {
    private static int level = 6;
    public static d q;
    private static InterfaceC0216a r;
    private static InterfaceC0216a s;
    private static final String t;

    /* renamed from: com.tencent.mm.sdk.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0216a {
        void e(String str, String str2);

        void f(String str, String str2);

        void g(String str, String str2);

        int h();

        void h(String str, String str2);
    }

    static {
        b bVar = new b();
        r = bVar;
        s = bVar;
        StringBuilder sb = new StringBuilder();
        sb.append("VERSION.RELEASE:[" + Build.VERSION.RELEASE);
        sb.append("] VERSION.CODENAME:[" + Build.VERSION.CODENAME);
        sb.append("] VERSION.INCREMENTAL:[" + Build.VERSION.INCREMENTAL);
        sb.append("] BOARD:[" + Build.BOARD);
        sb.append("] DEVICE:[" + Build.DEVICE);
        sb.append("] DISPLAY:[" + Build.DISPLAY);
        sb.append("] FINGERPRINT:[" + Build.FINGERPRINT);
        sb.append("] HOST:[" + Build.HOST);
        sb.append("] MANUFACTURER:[" + Build.MANUFACTURER);
        sb.append("] MODEL:[" + Build.MODEL);
        sb.append("] PRODUCT:[" + Build.PRODUCT);
        sb.append("] TAGS:[" + Build.TAGS);
        sb.append("] TYPE:[" + Build.TYPE);
        sb.append("] USER:[" + Build.USER + "]");
        t = sb.toString();
    }

    public static void a(String str, String str2) {
        a(str, str2, null);
    }

    public static void a(String str, String str2, Object... objArr) {
        if (s == null || s.h() > 4) {
            return;
        }
        String format = objArr == null ? str2 : String.format(str2, objArr);
        if (format == null) {
            format = "";
        }
        String i = i(str);
        InterfaceC0216a interfaceC0216a = s;
        Process.myPid();
        Thread.currentThread().getId();
        Looper.getMainLooper().getThread().getId();
        interfaceC0216a.h(i, format);
    }

    public static void b(String str, String str2) {
        if (s == null || s.h() > 3) {
            return;
        }
        if (str2 == null) {
            str2 = "";
        }
        String i = i(str);
        InterfaceC0216a interfaceC0216a = s;
        Process.myPid();
        Thread.currentThread().getId();
        Looper.getMainLooper().getThread().getId();
        interfaceC0216a.g(i, str2);
    }

    public static void c(String str, String str2) {
        if (s == null || s.h() > 2) {
            return;
        }
        if (str2 == null) {
            str2 = "";
        }
        String i = i(str);
        InterfaceC0216a interfaceC0216a = s;
        Process.myPid();
        Thread.currentThread().getId();
        Looper.getMainLooper().getThread().getId();
        interfaceC0216a.e(i, str2);
    }

    public static void d(String str, String str2) {
        if (s == null || s.h() > 1) {
            return;
        }
        if (str2 == null) {
            str2 = "";
        }
        String i = i(str);
        InterfaceC0216a interfaceC0216a = s;
        Process.myPid();
        Thread.currentThread().getId();
        Looper.getMainLooper().getThread().getId();
        interfaceC0216a.f(i, str2);
    }

    private static String i(String str) {
        return q != null ? q.i(str) : str;
    }
}
