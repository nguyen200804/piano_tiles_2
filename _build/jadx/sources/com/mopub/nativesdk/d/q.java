package com.mopub.nativesdk.d;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: SPUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class q {
    public static void a(Context context, String str, String str2, long j) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putLong(str2, j);
            edit.commit();
        }
    }

    public static void a(Context context, String str, String str2, String str3) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putString(str2, str3);
            edit.commit();
        }
    }

    public static void a(Context context, String str, String str2, int i) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putInt(str2, i);
            edit.commit();
        }
    }

    public static Long a(Context context, String str, String str2, Long l) {
        if (context == null) {
            return 0L;
        }
        return Long.valueOf(context.getSharedPreferences(str, 0).getLong(str2, l.longValue()));
    }

    public static int b(Context context, String str, String str2, int i) {
        if (context == null) {
            return 0;
        }
        return context.getSharedPreferences(str, 0).getInt(str2, 0);
    }

    public static String b(Context context, String str, String str2, String str3) {
        if (context == null) {
            return null;
        }
        return context.getSharedPreferences(str, 0).getString(str2, str3);
    }
}
