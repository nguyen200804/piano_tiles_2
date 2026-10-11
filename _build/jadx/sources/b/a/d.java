package b.a;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.reflect.Method;

/* compiled from: TrafficTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    public static al a(Context context) {
        try {
            al alVar = new al();
            long[] b2 = b(context);
            if (b2[0] <= 0 || b2[1] <= 0) {
                return null;
            }
            SharedPreferences a2 = cz.a(context);
            long j = a2.getLong("uptr", -1L);
            long j2 = a2.getLong("dntr", -1L);
            a2.edit().putLong("uptr", b2[1]).putLong("dntr", b2[0]).commit();
            if (j <= 0 || j2 <= 0) {
                return null;
            }
            b2[0] = b2[0] - j2;
            b2[1] = b2[1] - j;
            if (b2[0] <= 0 || b2[1] <= 0) {
                return null;
            }
            alVar.b((int) b2[0]);
            alVar.a((int) b2[1]);
            return alVar;
        } catch (Exception e) {
            ap.d("MobclickAgent", "sdk less than 2.2 has get no traffic");
            return null;
        }
    }

    private static long[] b(Context context) throws Exception {
        Class<?> cls = Class.forName("android.net.TrafficStats");
        Method method = cls.getMethod("getUidRxBytes", Integer.TYPE);
        Method method2 = cls.getMethod("getUidTxBytes", Integer.TYPE);
        int i = context.getApplicationInfo().uid;
        if (i == -1) {
            return null;
        }
        return new long[]{((Long) method.invoke(null, Integer.valueOf(i))).longValue(), ((Long) method2.invoke(null, Integer.valueOf(i))).longValue()};
    }
}
