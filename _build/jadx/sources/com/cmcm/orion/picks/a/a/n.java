package com.cmcm.orion.picks.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import java.util.HashMap;

/* compiled from: PreferenceHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public static final String f849a = String.format("%s_%s", "cmadsdk", com.cmcm.orion.adsdk.e.b());

    /* renamed from: b, reason: collision with root package name */
    private static final HashMap<String, SharedPreferences> f850b = new HashMap<>();
    private String c;

    public n(String str) {
        this.c = str;
    }

    private n() {
    }

    private SharedPreferences a() {
        SharedPreferences sharedPreferences = null;
        if (!TextUtils.isEmpty(this.c)) {
            synchronized (f850b) {
                if (f850b.containsKey(this.c)) {
                    sharedPreferences = f850b.get(this.c);
                } else {
                    Context a2 = com.cmcm.orion.adsdk.e.a();
                    if (a2 != null) {
                        sharedPreferences = a2.getSharedPreferences(this.c, 0);
                        f850b.put(this.c, sharedPreferences);
                    }
                }
            }
        }
        return sharedPreferences;
    }

    private SharedPreferences.Editor b() {
        SharedPreferences a2 = a();
        if (a2 != null) {
            return a2.edit();
        }
        return null;
    }

    private static void a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    public final void a(String str, String str2) {
        SharedPreferences.Editor b2 = b();
        if (b2 != null) {
            b2.putString(str, str2);
            a(b2);
        }
    }

    public final String b(String str, String str2) {
        SharedPreferences a2 = a();
        return a2 != null ? a2.getString(str, str2) : str2;
    }

    public final void a(String str, int i) {
        SharedPreferences.Editor b2 = b();
        if (b2 != null) {
            b2.putInt(str, i);
            a(b2);
        }
    }

    public final int a(String str) {
        SharedPreferences a2 = a();
        if (a2 != null) {
            return a2.getInt(str, 0);
        }
        return 0;
    }

    public final void a(String str, long j) {
        SharedPreferences.Editor b2 = b();
        if (b2 != null) {
            b2.putLong(str, j);
            a(b2);
        }
    }

    public final long b(String str, long j) {
        SharedPreferences a2 = a();
        return a2 != null ? a2.getLong(str, j) : j;
    }
}
