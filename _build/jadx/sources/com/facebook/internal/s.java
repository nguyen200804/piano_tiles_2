package com.facebook.internal;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Logger.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    private static final HashMap<String, String> f3250a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.u f3251b;
    private final String c;
    private StringBuilder d;
    private int e = 3;

    public static synchronized void a(String str, String str2) {
        synchronized (s.class) {
            f3250a.put(str, str2);
        }
    }

    public static synchronized void a(String str) {
        synchronized (s.class) {
            if (!com.facebook.l.a(com.facebook.u.INCLUDE_ACCESS_TOKENS)) {
                a(str, "ACCESS_TOKEN_REMOVED");
            }
        }
    }

    public static void a(com.facebook.u uVar, String str, String str2) {
        a(uVar, 3, str, str2);
    }

    public static void a(com.facebook.u uVar, String str, String str2, Object... objArr) {
        if (com.facebook.l.a(uVar)) {
            a(uVar, 3, str, String.format(str2, objArr));
        }
    }

    public static void a(com.facebook.u uVar, int i, String str, String str2, Object... objArr) {
        if (com.facebook.l.a(uVar)) {
            a(uVar, i, str, String.format(str2, objArr));
        }
    }

    public static void a(com.facebook.u uVar, int i, String str, String str2) {
        if (com.facebook.l.a(uVar)) {
            String d = d(str2);
            if (!str.startsWith("FacebookSDK.")) {
                str = "FacebookSDK." + str;
            }
            Log.println(i, str, d);
            if (uVar == com.facebook.u.DEVELOPER_ERRORS) {
                new Exception().printStackTrace();
            }
        }
    }

    private static synchronized String d(String str) {
        synchronized (s.class) {
            for (Map.Entry<String, String> entry : f3250a.entrySet()) {
                str = str.replace(entry.getKey(), entry.getValue());
            }
        }
        return str;
    }

    public s(com.facebook.u uVar, String str) {
        ab.a(str, "tag");
        this.f3251b = uVar;
        this.c = "FacebookSDK." + str;
        this.d = new StringBuilder();
    }

    public void a() {
        b(this.d.toString());
        this.d = new StringBuilder();
    }

    public void b(String str) {
        a(this.f3251b, this.e, this.c, str);
    }

    public void c(String str) {
        if (b()) {
            this.d.append(str);
        }
    }

    public void a(String str, Object... objArr) {
        if (b()) {
            this.d.append(String.format(str, objArr));
        }
    }

    public void a(String str, Object obj) {
        a("  %s:\t%s\n", str, obj);
    }

    private boolean b() {
        return com.facebook.l.a(this.f3251b);
    }
}
