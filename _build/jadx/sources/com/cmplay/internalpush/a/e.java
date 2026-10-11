package com.cmplay.internalpush.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Set;

/* compiled from: SharepreferrenceDown.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static Context f1414a;

    /* renamed from: b, reason: collision with root package name */
    private static SharedPreferences f1415b;

    public static void a(Context context) {
        f1414a = context.getApplicationContext();
        b();
    }

    private static SharedPreferences b() {
        if (f1415b == null) {
            f1415b = f1414a.getSharedPreferences("innerpushvideo_save_data2", 0);
        }
        return f1415b;
    }

    public static String a(String str, String str2) {
        SharedPreferences b2 = b();
        return b2 == null ? str2 : b2.getString(str, str2);
    }

    public static void b(String str, String str2) {
        SharedPreferences b2 = b();
        if (b2 != null) {
            SharedPreferences.Editor edit = b2.edit();
            edit.putString(str, str2);
            a(edit);
        }
    }

    public static long a(String str, long j) {
        SharedPreferences b2 = b();
        return b2 == null ? j : b2.getLong(str, j);
    }

    public static synchronized void b(String str, long j) {
        synchronized (e.class) {
            SharedPreferences b2 = b();
            if (b2 != null) {
                SharedPreferences.Editor edit = b2.edit();
                edit.putLong(str, j);
                a(edit);
            }
        }
    }

    @SuppressLint({"NewApi"})
    private static void a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    public static Set<String> a() {
        SharedPreferences b2 = b();
        if (b2 == null) {
            return null;
        }
        return b2.getAll().keySet();
    }

    public static synchronized void a(String str) {
        synchronized (e.class) {
            SharedPreferences b2 = b();
            if (b2 != null) {
                SharedPreferences.Editor edit = b2.edit();
                edit.remove(str);
                a(edit);
            }
        }
    }
}
