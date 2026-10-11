package com.mnt.impl.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.mnt.MntAdConfig;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3944a = com.mnt.impl.e.nB;

    /* renamed from: b, reason: collision with root package name */
    private static final String f3945b = com.mnt.impl.e.nC;
    private static final String c = com.mnt.impl.e.nD;
    private static final String d = com.mnt.impl.e.nE;
    private static final String e;
    private static final String f;
    private static final String g;
    private static final String h;
    private static final String i;
    private static final String j;
    private static final String k;
    private static final String l;
    private static String m;
    private static final String n;
    private static final String o;
    private static final String p;
    private static final String q;
    private static final String r;
    private static final String s;

    static {
        String str = com.mnt.impl.e.nF;
        e = com.mnt.impl.e.nG;
        String str2 = com.mnt.impl.e.nH;
        f = com.mnt.impl.e.nI;
        String str3 = com.mnt.impl.e.nJ;
        g = com.mnt.impl.e.nK;
        h = com.mnt.impl.e.nL;
        i = com.mnt.impl.e.nM;
        String str4 = com.mnt.impl.e.nN;
        String str5 = com.mnt.impl.e.nO;
        j = com.mnt.impl.e.nP;
        k = com.mnt.impl.e.nQ;
        l = com.mnt.impl.e.nR;
        m = com.mnt.impl.e.nS;
        n = com.mnt.impl.e.nT;
        o = com.mnt.impl.e.nU;
        p = com.mnt.impl.e.nV;
        q = com.mnt.impl.e.nW;
        r = com.mnt.impl.e.nX;
        s = com.mnt.impl.e.nY;
    }

    public static SharedPreferences a(Context context) {
        return com.mnt.a.a.a(f3945b, context);
    }

    public static SharedPreferences b(Context context) {
        return com.mnt.a.a.a(c, context);
    }

    public static SharedPreferences c(Context context) {
        return com.mnt.a.a.a(d, context);
    }

    public static SharedPreferences d(Context context) {
        return com.mnt.a.a.a(e, context);
    }

    public static void a(Context context, String str, MntAdConfig mntAdConfig) {
        SharedPreferences.Editor edit = com.mnt.a.a.n(context).edit();
        if (!TextUtils.isEmpty(str)) {
            edit.putString(m, str);
        }
        if (mntAdConfig != null && !TextUtils.isEmpty(mntAdConfig.getChannel())) {
            edit.putString(n, mntAdConfig.getChannel());
        }
        if (mntAdConfig != null && mntAdConfig.getAdsNum() > 0) {
            edit.putInt(o, mntAdConfig.getAdsNum());
        }
        if (mntAdConfig != null && mntAdConfig.getDownloadType() != null) {
            edit.putInt(p, mntAdConfig.getDownloadType().intValue());
        }
        if (mntAdConfig != null && !TextUtils.isEmpty(mntAdConfig.getCreatives())) {
            edit.putString(q, mntAdConfig.getCreatives());
        }
        if (context != null) {
            SharedPreferences n2 = com.mnt.a.a.n(context);
            if (n2.getInt(r, 0) == 0) {
                n2.edit().putInt(r, com.mnt.a.a.i(context)).commit();
            }
        }
        edit.commit();
    }

    public static void a(Context context, String str, long j2) {
        if (!TextUtils.isEmpty(str)) {
            SharedPreferences.Editor edit = com.mnt.a.a.a(f3944a, context).edit();
            edit.putString(i, j2 + str);
            edit.commit();
        }
    }

    public static void a(Context context, com.mnt.impl.e.a aVar) {
        if (aVar != null && context != null && !TextUtils.isEmpty(aVar.f3981a) && !TextUtils.isEmpty(aVar.c)) {
            SharedPreferences.Editor edit = com.mnt.a.a.a(c, context).edit();
            edit.putString(aVar.c, aVar.toString());
            edit.commit();
            SharedPreferences.Editor edit2 = com.mnt.a.a.a(d, context).edit();
            edit2.putString(aVar.f3981a, "");
            edit2.commit();
        }
    }

    public static void a(SharedPreferences.Editor editor) {
        editor.commit();
    }

    public static String g(Context context) {
        return com.mnt.a.a.n(context).getString(n, "");
    }

    public static int h(Context context) {
        return com.mnt.a.a.n(context).getInt(o, 50);
    }

    public static String i(Context context) {
        return com.mnt.a.a.n(context).getString(q, "");
    }

    public static String j(Context context) {
        return com.mnt.a.a.n(context).getString(m, "");
    }

    public static void b(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences(g, 0).edit();
        edit.putString(l, str);
        edit.commit();
    }

    public static String m(Context context) {
        return context.getSharedPreferences(g, 0).getString(l, "");
    }

    public static void b(Context context, long j2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(h, 0).edit();
        edit.putLong(l, j2);
        edit.commit();
    }

    public static long n(Context context) {
        return context.getSharedPreferences(h, 0).getLong(l, 0L);
    }

    public static boolean o(Context context) {
        int i2 = com.mnt.a.a.n(context).getInt(r, 0);
        return (i2 == 0 || i2 == com.mnt.a.a.i(context)) ? false : true;
    }

    public static int p(Context context) {
        try {
            return com.mnt.a.a.n(context).getInt(s, 0);
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public static void a(Context context, int i2) {
        try {
            com.mnt.a.a.n(context).edit().putInt(s, i2).commit();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean c(Context context, String str) {
        if (context == null) {
            return false;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            String string = com.mnt.a.a.a(com.mnt.impl.e.nZ, context).getString(str, "");
            if (TextUtils.isEmpty(string)) {
                return false;
            }
            return System.currentTimeMillis() - new JSONObject(string).optLong(com.mnt.impl.e.oa, 0L) < 1800000;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static void a(Context context, String str) {
        SharedPreferences.Editor edit = com.mnt.a.a.a(e, context).edit();
        edit.remove(str);
        edit.commit();
    }

    public static void a(Context context, String str, String str2) {
        SharedPreferences.Editor edit = com.mnt.a.a.a(e, context).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    public static com.mnt.impl.e.g e(Context context) {
        String string = com.mnt.a.a.a(f3944a, context).getString(i, "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return new com.mnt.impl.e.g(string.substring(13), Long.valueOf(string.substring(0, 13)).longValue());
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void f(Context context) {
        SharedPreferences.Editor edit = com.mnt.a.a.a(f3944a, context).edit();
        edit.clear();
        edit.commit();
        SharedPreferences.Editor edit2 = com.mnt.a.a.a(f3945b, context).edit();
        edit2.clear();
        edit2.commit();
        com.mnt.impl.f.d.d();
    }

    public static void a(Context context, long j2) {
        long j3 = com.mnt.a.a.a(f, context).getLong(k, 0L) + 1;
        SharedPreferences.Editor edit = com.mnt.a.a.a(f, context).edit();
        edit.putLong(j, j2);
        edit.putLong(k, j3);
        edit.commit();
    }

    public static long k(Context context) {
        return com.mnt.a.a.a(f, context).getLong(k, 0L);
    }

    public static void l(Context context) {
        SharedPreferences.Editor edit = com.mnt.a.a.a(f, context).edit();
        edit.putLong(k, 0L);
        edit.commit();
    }
}
