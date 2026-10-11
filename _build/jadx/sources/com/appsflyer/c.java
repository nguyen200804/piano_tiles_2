package com.appsflyer;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* compiled from: AppsFlyerProperties.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {
    private Map<String, Object> d = new HashMap();
    private boolean e;
    private boolean f;
    private String g;
    private boolean h;
    private static c c = new c();

    /* renamed from: a, reason: collision with root package name */
    static boolean f588a = false;

    /* renamed from: b, reason: collision with root package name */
    static boolean f589b = false;

    private c() {
    }

    public static c a() {
        return c;
    }

    public void a(String str, String str2) {
        this.d.put(str, str2);
    }

    public String[] a(String str) {
        return (String[]) this.d.get(str);
    }

    public String b(String str) {
        return (String) this.d.get(str);
    }

    public void a(String str, boolean z) {
        this.d.put(str, Boolean.toString(z));
    }

    public boolean b(String str, boolean z) {
        String b2 = b(str);
        return b2 == null ? z : Boolean.valueOf(b2).booleanValue();
    }

    public int a(String str, int i) {
        String b2 = b(str);
        return b2 == null ? i : Integer.valueOf(b2).intValue();
    }

    protected void b() {
        this.e = true;
    }

    protected boolean c() {
        return this.f;
    }

    protected void d() {
        this.f = true;
    }

    protected void c(String str) {
        this.g = str;
    }

    public String a(Context context) {
        if (this.g != null) {
            return this.g;
        }
        return context.getSharedPreferences("appsflyer-data", 0).getString("referrer", null);
    }

    public boolean e() {
        return this.h;
    }
}
