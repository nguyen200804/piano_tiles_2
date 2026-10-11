package com.duapps.ad.base;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONStringer;

/* compiled from: SharedPrefsUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2051a = m.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static final Object f2052b = new Object();
    private static final byte[] c = {-53, -49, 125, 31, 17, 26, 81, 36, -53, 17, 39, 43, -64, 79, 48, -9, 32, -60, -21, -92, -48, 58, -59, -73, -36, -121, -71, -92, -87, 87, -121, 19, -92, -96, 67, 53, 51, 99, 53, 59, 57, 33, 121, -22, 31, -80, 118, -69};

    private m() {
    }

    public static void a(Context context, List<String> list, int i) {
        SharedPreferences.Editor edit = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        try {
            JSONStringer array = new JSONStringer().array();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                array.value(it.next());
            }
            array.endArray();
            edit.putString("n_pid" + i, array.toString());
            com.duapps.ad.c.b.c.a(edit);
        } catch (JSONException e) {
        }
    }

    public static List<String> a(Context context, int i) {
        String string = context.getSharedPreferences("_toolbox_prefs", 0).getString("n_pid" + i, "");
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(string)) {
            try {
                JSONArray jSONArray = new JSONArray(string);
                int length = jSONArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    String optString = jSONArray.optString(i2);
                    if (!TextUtils.isEmpty(optString)) {
                        arrayList.add(optString);
                    }
                }
            } catch (JSONException e) {
            }
        }
        return arrayList;
    }

    public static void a(Context context, String str, long j) {
        SharedPreferences.Editor edit = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        edit.putLong("last_modified_" + str, j);
        com.duapps.ad.c.b.c.a(edit);
        c(context, "last_modified_" + str, j);
    }

    public static long a(Context context, String str) {
        return d(context, "last_modified_" + str, 0L);
    }

    public static void a(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        synchronized (f2052b) {
            edit.putInt("fb_no_fill_c", 0);
            edit.putLong("fb_no_fill_t", 0L);
            com.duapps.ad.c.b.c.a(edit);
        }
    }

    public static void b(Context context) {
        c(context, "fb_success_t", System.currentTimeMillis());
    }

    public static void b(Context context, int i) {
        a(context, "fid_time", i);
    }

    public static int c(Context context) {
        return b(context, "fid_time", 0);
    }

    public static void d(Context context) {
        c(context, "ls_priotity_client", System.currentTimeMillis());
    }

    public static long e(Context context) {
        return d(context, "ls_priotity_client", 0L);
    }

    public static void a(Context context, long j) {
        c(context, "ls_priotity_server", j);
    }

    public static long c(Context context, int i) {
        return h(context, "priotity_server" + i);
    }

    public static void a(Context context, int i, long j) {
        b(context, "priotity_server" + i, j);
    }

    public static long f(Context context) {
        return d(context, "ls_priotity_server", 0L);
    }

    private static void b(Context context, String str, long j) {
        c(context, str, j);
    }

    private static long h(Context context, String str) {
        return d(context, str, 0L);
    }

    public static boolean a(String str, Context context) {
        long e = e(str, context);
        if (e == 0) {
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis() - e;
        if (currentTimeMillis <= 300000) {
            return currentTimeMillis <= 300000 && c(str, context) < 60;
        }
        return true;
    }

    public static boolean g(Context context) {
        return a("load_frequently_times", context);
    }

    public static void h(Context context) {
        b("load_frequently_times", context);
    }

    public static void b(String str, Context context) {
        int c2;
        if (System.currentTimeMillis() - e(str, context) >= 300000) {
            d(str, context);
            c2 = 1;
        } else {
            c2 = c(str, context) + 1;
        }
        a(context, str, c2);
    }

    private static int c(String str, Context context) {
        return b(context, str, 0);
    }

    private static void d(String str, Context context) {
        c(context, str + "_pull_time", System.currentTimeMillis());
    }

    private static long e(String str, Context context) {
        return d(context, str + "_pull_time", 0L);
    }

    public static void d(Context context, int i) {
        a(context, "log_priotity", i);
    }

    public static long i(Context context) {
        long j = context.getSharedPreferences("_toolbox_prefs", 0).getLong("tts_cache_time", 86400000L);
        if (j < 0) {
            return 0L;
        }
        return j;
    }

    public static int j(Context context) {
        return b(context, "log_priotity", 3);
    }

    public static void a(Context context, int i, String str) {
        if (!TextUtils.isEmpty(str)) {
            a(context, "priority_policy_" + i, str);
        }
    }

    public static String e(Context context, int i) {
        return b(context, "priority_policy_" + i, "");
    }

    public static void b(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            a(context, "imid", str);
        }
    }

    public static String k(Context context) {
        try {
            String str = new String(b.a("8a1n9d0i3c1y0c2f", "8a1n9d0i3c1y0c2f", c));
            h.c(f2051a, "getInID(): " + str);
            return b(context, "imid", str);
        } catch (Exception e) {
            h.d(f2051a, "getInID Exception :" + e.toString());
            return null;
        }
    }

    public static void f(Context context, int i) {
        context.getSharedPreferences("_toolbox_prefs", 0).edit().putInt("tcppTctp", i).apply();
    }

    public static int l(Context context) {
        return context.getSharedPreferences("_toolbox_prefs", 0).getInt("tcppTctp", 0);
    }

    public static long m(Context context) {
        return d(context, "tcpp_ct", 86400000L);
    }

    public static void b(Context context, long j) {
        c(context, "tcpp_ct", j);
    }

    public static void g(Context context, int i) {
        a(context, "key_tcpp_pull_interval_time", i);
    }

    public static long n(Context context) {
        return b(context, "key_tcpp_pull_interval_time", 0) * 60000;
    }

    public static long o(Context context) {
        return d(context, "ls_tcpp", 0L);
    }

    public static void p(Context context) {
        c(context, "ls_tcpp", System.currentTimeMillis());
    }

    public static long q(Context context) {
        return b(context, "key_fb_ct", 60) * 60000;
    }

    public static void h(Context context, int i) {
        a(context, "key_fb_ct", i);
    }

    public static void c(Context context, String str) {
        a(context, "key_priority_browsers", str);
    }

    public static String r(Context context) {
        return b(context, "key_priority_browsers", "");
    }

    private static void a(Context context, String str, int i) {
        SharedPreferences.Editor edit = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        edit.putInt(str, i);
        com.duapps.ad.c.b.c.a(edit);
    }

    private static int b(Context context, String str, int i) {
        return context.getSharedPreferences("_toolbox_prefs", 0).getInt(str, i);
    }

    public static boolean s(Context context) {
        return b(context, "itwd", true);
    }

    public static void a(Context context, boolean z) {
        a(context, "itwd", z);
    }

    public static long t(Context context) {
        return d(context, "c_filter_t", 0L);
    }

    public static void c(Context context, long j) {
        c(context, "c_filter_t", j);
    }

    public static long u(Context context) {
        return d(context, "k_nu_interval", 14400000L);
    }

    public static void d(Context context, long j) {
        c(context, "k_nu_interval", j);
    }

    public static boolean v(Context context) {
        return b(context, "isNU", false);
    }

    public static void b(Context context, boolean z) {
        a(context, "k_allow_charles", z);
    }

    public static boolean w(Context context) {
        return b(context, "k_allow_tcpdump", true);
    }

    public static void c(Context context, boolean z) {
        a(context, "k_allow_tcpdump", z);
    }

    public static boolean x(Context context) {
        return b(context, "k_allow_simulator", true);
    }

    public static void d(Context context, boolean z) {
        a(context, "k_allow_simulator", z);
    }

    private static void c(Context context, String str, long j) {
        SharedPreferences.Editor edit = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        edit.putLong(str, j);
        com.duapps.ad.c.b.c.a(edit);
    }

    private static long d(Context context, String str, long j) {
        return context.getSharedPreferences("_toolbox_prefs", 0).getLong(str, j);
    }

    private static void a(Context context, String str, boolean z) {
        SharedPreferences.Editor edit = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        edit.putBoolean(str, z);
        com.duapps.ad.c.b.c.a(edit);
    }

    private static boolean b(Context context, String str, boolean z) {
        return context.getSharedPreferences("_toolbox_prefs", 0).getBoolean(str, z);
    }

    public static void d(Context context, String str) {
        if (!e(context, "k_pk") && !TextUtils.isEmpty(str)) {
            a(context, "k_pk", str);
        }
    }

    public static String y(Context context) {
        return b(context, "k_pk", "");
    }

    public static boolean e(Context context, String str) {
        return context.getSharedPreferences("_toolbox_prefs", 0).contains(str);
    }

    private static void a(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        edit.putString(str, str2);
        com.duapps.ad.c.b.c.a(edit);
    }

    private static String b(Context context, String str, String str2) {
        return context.getSharedPreferences("_toolbox_prefs", 0).getString(str, str2);
    }

    public static void f(Context context, String str) {
        a(context, "k_location", str);
    }

    public static void e(Context context, boolean z) {
        a(context, "k_isSus", z);
    }

    public static void g(Context context, String str) {
        a(context, "k_exg", str);
    }

    public static String z(Context context) {
        return b(context, "k_exg", "");
    }

    public static int A(Context context) {
        return b(context, "key_ptas", 0);
    }

    public static void i(Context context, int i) {
        if (!context.getSharedPreferences("_toolbox_prefs", 0).contains("key_ptas")) {
            a(context, "key_ptas", i);
        }
    }

    public static void f(Context context, boolean z) {
        a(context, "k_anit", z);
    }

    public static boolean B(Context context) {
        return b(context, "ptay", true);
    }

    public static void g(Context context, boolean z) {
        a(context, "ptay", z);
    }
}
