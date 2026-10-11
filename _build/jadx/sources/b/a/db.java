package b.a;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Arrays;
import java.util.List;

/* compiled from: SessionTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class db {
    private static String c = null;

    /* renamed from: a, reason: collision with root package name */
    private final String f153a = "a_start_time";

    /* renamed from: b, reason: collision with root package name */
    private final String f154b = "a_end_time";

    public j a(Context context) {
        SharedPreferences a2 = cz.a(context);
        String string = a2.getString("session_id", null);
        if (string == null) {
            return null;
        }
        long j = a2.getLong("session_start_time", 0L);
        long j2 = a2.getLong("session_end_time", 0L);
        long j3 = 0;
        if (j2 != 0) {
            j3 = j2 - j;
            if (Math.abs(j3) > 86400000) {
                j3 = 0;
            }
        }
        j jVar = new j();
        jVar.a(string);
        jVar.a(j);
        jVar.b(j2);
        jVar.c(j3);
        double[] b2 = com.b.a.a.b();
        if (b2 != null) {
            ad adVar = new ad(b2[0], b2[1], System.currentTimeMillis());
            if (jVar.f()) {
                jVar.a(adVar);
            } else {
                jVar.b(Arrays.asList(adVar));
            }
        }
        al a3 = d.a(context);
        if (a3 != null) {
            jVar.a(a3);
        }
        List<af> a4 = e.a(a2);
        if (a4 != null && a4.size() > 0) {
            jVar.a(a4);
        }
        a(a2);
        return jVar;
    }

    private void a(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove("session_start_time");
        edit.remove("session_end_time");
        edit.remove("a_start_time");
        edit.remove("a_end_time");
        edit.putString("activities", "");
        edit.commit();
    }

    public String b(Context context) {
        String c2 = ao.c(context);
        String a2 = com.b.a.a.a(context);
        long currentTimeMillis = System.currentTimeMillis();
        if (a2 == null) {
            throw new RuntimeException("Appkey is null or empty, Please check AndroidManifest.xml");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(currentTimeMillis).append(a2).append(c2);
        c = av.a(sb.toString());
        return c;
    }

    public void c(Context context) {
        SharedPreferences a2 = cz.a(context);
        if (a2 != null) {
            if (b(a2)) {
                ap.a("MobclickAgent", "Start new session: " + a(context, a2));
                return;
            }
            String string = a2.getString("session_id", null);
            SharedPreferences.Editor edit = a2.edit();
            edit.putLong("a_start_time", System.currentTimeMillis());
            edit.putLong("a_end_time", 0L);
            edit.commit();
            ap.a("MobclickAgent", "Extend current session: " + string);
        }
    }

    public void d(Context context) {
        SharedPreferences a2 = cz.a(context);
        if (a2 == null) {
            return;
        }
        if (a2.getLong("a_start_time", 0L) == 0 && com.b.a.a.h) {
            ap.b("MobclickAgent", "onPause called before onResume");
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = a2.edit();
        edit.putLong("a_start_time", 0L);
        edit.putLong("a_end_time", currentTimeMillis);
        edit.putLong("session_end_time", currentTimeMillis);
        edit.commit();
    }

    private boolean b(SharedPreferences sharedPreferences) {
        long j = sharedPreferences.getLong("a_start_time", 0L);
        long j2 = sharedPreferences.getLong("a_end_time", 0L);
        long currentTimeMillis = System.currentTimeMillis();
        if (j == 0 || currentTimeMillis - j >= com.b.a.a.l) {
            return currentTimeMillis - j2 > com.b.a.a.l;
        }
        ap.b("MobclickAgent", "onResume called before onPause");
        return false;
    }

    private String a(Context context, SharedPreferences sharedPreferences) {
        cn a2 = cn.a(context);
        String b2 = b(context);
        j a3 = a(context);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString("session_id", b2);
        edit.putLong("session_start_time", System.currentTimeMillis());
        edit.putLong("session_end_time", 0L);
        edit.putLong("a_start_time", System.currentTimeMillis());
        edit.putLong("a_end_time", 0L);
        edit.commit();
        if (a3 != null) {
            a2.a(a3);
        } else {
            a2.a((j) null);
        }
        return b2;
    }

    public static String e(Context context) {
        if (c == null) {
            c = cz.a(context).getString("session_id", null);
        }
        return c;
    }
}
