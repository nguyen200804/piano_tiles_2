package com.ijinshan.cloudconfig.b;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: CommonConfig.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    private static a d;

    /* renamed from: a, reason: collision with root package name */
    private final String f3587a = "cloudconfig";
    private Context c = com.ijinshan.cloudconfig.c.a.d();

    /* renamed from: b, reason: collision with root package name */
    private SharedPreferences f3588b = this.c.getSharedPreferences("cloudconfig", 0);

    public static a a() {
        if (d == null) {
            synchronized (a.class) {
                if (d == null) {
                    d = new a();
                }
            }
        }
        return d;
    }

    private a() {
    }

    public void a(String str, String str2) {
        SharedPreferences.Editor edit = this.f3588b.edit();
        edit.putString(str, str2);
        edit.commit();
    }

    public String b(String str, String str2) {
        return this.f3588b.getString(str, str2);
    }

    public void a(String str, Long l) {
        SharedPreferences.Editor edit = this.f3588b.edit();
        edit.putLong(str, l.longValue());
        edit.commit();
    }

    public long a(String str, long j) {
        return this.f3588b.getLong(str, j);
    }
}
